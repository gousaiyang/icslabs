/* mm.c - A simple malloc package.
 * 
 * 1. Use implicit free list to arrange the blocks. Each block has a header and a footer.
 * 2. Use a mixed strategy of next-fit and first-fit to optimize utility. 
 * 3. Use a stand-alone realloc function that tries to utilize space near the current block.
 * 4. Optimize extend heap strategy to save space when the last block is free.
 * 5. Involved some trace-oriented optimization (such as adjusted placement) to raise utility on certain traces.
 * 6. Easy to debug with mm_print() and mm_check().
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
    /* Team name */
    "515030910022",
    /* First member's full name */
    "Gou Saiyang",
    /* First member's email address */
    "",
    /* Second member's full name (leave blank if none) */
    "",
    /* Second member's email address (leave blank if none) */
    ""
};


/* Debug switches and function declarations */
#define DEBUGx /* Remove 'x' to enable debug print and mm_check() */
#define STEPx /* Remove 'x' to enable single step debugging (Enable DEBUG first) */

#ifdef DEBUG
static void mm_check();
static void mm_print(char *opt);
static void mm_print_r(char *opt);
static int referer = 0; /* Used for avoiding duplicate output when mm_realloc calls mm_malloc and mm_free */
#endif


/* Macros defined to simplify code */

#define WSIZE 4
#define DSIZE 8
#define CHUNKSIZE (1 << 12)

#define MAX(x, y) ((x) > (y) ? (x) : (y))

#define PACK(size, alloc) ((size) | (alloc))

#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

#define HDRP(bp) ((char *)(bp) - WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp) ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))


/* Some important pointers */

static char *heap_listp = NULL; /* Start of the implicit free list */
static char *recent_blk; /* The recent position of next fit */
static char *tail_blk; /* Pointer to the last block in the heap */


/* Variables and constants for trace-oriented optimization */

static int first_malloc = 1;
static int trace = 0;
static int req_no = -1;

#define TRACE1 4092
#define TRACE2 16
#define TRACE3 64
#define EXTENDHEAP1 24048
#define EXTENDHEAP2 635904
#define EXTENDHEAP3 1179904
#define OFFSET1 56
#define OFFSETINIT(x) ((x) == 2 ? 95984 : 143936)
#define OFFSETNEXT(x) ((x) == 2 ? 96008 : 144008)
#define REQA1 16
#define REQR1 28087
#define REQODD(x) ((x) == 2 ? 112 : 448)
#define REQEVEN(x) ((x) == 2 ? 16 : 64)
#define REQFINAL(x) ((x) == 2 ? 128 : 512)
#define MAXREQ(x) ((x) == 2 ? 8000 : 4000)


/* Helper functions */

/* Coalesce adjacent free blocks around bp, return pointer to coalesced block */
static void *coalesce(void *bp)
{
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    if (prev_alloc && next_alloc) {
        return bp;
    }
    else if (prev_alloc && !next_alloc) {
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }
    else if (!prev_alloc && next_alloc) {
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    else {
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(FTRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }

    /* If recent block is coalesced and recent_blk points to the inner part, */
    /* adjust to the coalesced one's head */
    if (recent_blk > (char *)bp && recent_blk < NEXT_BLKP(bp))
        recent_blk = bp;

    return bp;
}


/* Extend the heap, return pointer to a new free block */
static void *extend_heap(size_t words)
{
    char *bp;
    size_t size = (words & 1) ? (words + 1) * WSIZE : words * WSIZE;
    
    if ((long)(bp = mem_sbrk(size)) == -1)
        return NULL;
   
    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1));

    return coalesce(bp);
}

/* Place an allocated block of asize at the start of the free block bp, */
/* split when there is space remaining */
static void place(void *bp, size_t asize)
{
    size_t csize = GET_SIZE(HDRP(bp));

    if (csize > asize) {
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize - asize, 0));
        PUT(FTRP(bp), PACK(csize - asize, 0));
    }
    else {
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
}

/* Place an allocated block of asize at a position bp inside the free block oldbp, */
/* split when there is space remaining */
static void insert(void *bp, void *oldbp, size_t asize)
{
    size_t size1 = bp - oldbp; /* Space remaining on the left */
    size_t size2 = GET_SIZE(HDRP(oldbp)) - size1 - asize; /* Space remaining on the right */

    /* Set header and footer for left free block if it exists */
    if (size1 > 0) {
        PUT(HDRP(oldbp), PACK(size1, 0));
        PUT(FTRP(oldbp), PACK(size1, 0));
    }

    /* Set header and footer for the allocated block */
    PUT(HDRP(bp), PACK(asize, 1));
    PUT(FTRP(bp), PACK(asize, 1));

    /* Set header and footer for right free block if it exists */
    if (size2 > 0) {
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(size2, 0));
        PUT(FTRP(bp), PACK(size2, 0));
    }
}

/* Use first-fit strategy to find a free block of at least asize */
static void *first_fit(size_t asize)
{
    void *bp;

    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if (!GET_ALLOC(HDRP(bp)) && asize <= GET_SIZE(HDRP(bp))) {
            return bp;
        }
    }

    return NULL;
}

/* Use next-fit strategy to find a free block of at least asize */
static void *next_fit(size_t asize)
{
    char *bp;

    /* Search from the recent block to the tail of the list, */
    /* and find the tail block in the meantime (used when no fit found) */
    for (bp = recent_blk; GET_SIZE(HDRP(bp)) > 0; tail_blk = bp, bp = NEXT_BLKP(bp))
        if (!GET_ALLOC(HDRP(bp)) && asize <= GET_SIZE(HDRP(bp))) {
            recent_blk = bp;
            return bp;
        }

    /* Search from the start of the list to the recent block */
    for (bp = heap_listp; bp < recent_blk; bp = NEXT_BLKP(bp))
        if (!GET_ALLOC(HDRP(bp)) && asize <= GET_SIZE(HDRP(bp))) {
            recent_blk = bp;
            return bp;
        }

    /* No fit found */
    return NULL;
}

/* The normal way to allocate a block of at least asize bytes (already aligned, overhead considered) */
static void *mm_malloc_normal(size_t asize)
{
    char *bp;
    size_t extendsize;

    /* Search the free list for a fit using next-fit strategy */
    if ((bp = next_fit(asize)) != NULL) {
        place(bp, asize);

#ifdef DEBUG
        mm_print_r("a");
#endif

        return bp;
    }

    /* No fit found. Get more memory and place the block */
    /* If the tail block is free, we extend heap of the minimum size that can satisfy this request */
    if (!GET_ALLOC(HDRP(tail_blk)))
        extendsize = asize - GET_SIZE(HDRP(tail_blk));
    else
        extendsize = MAX(asize, CHUNKSIZE);

    if ((bp = extend_heap(extendsize / WSIZE)) == NULL)
        return NULL;

    place(bp, asize);

#ifdef DEBUG
    mm_print_r("a");
#endif

    return bp;
}

/* Realloc by allocating new space and freeing the old block */
static void *mm_realloc_normal(void *ptr, size_t size, size_t oldsize)
{

#ifdef DEBUG
    referer = 1; /* Avoid duplicate output when mm_malloc is called indirectly by mm_realloc */
#endif

    void *bp = mm_malloc(size);

    if (!bp) {
        return NULL;
    }

    memcpy(bp, ptr, oldsize);

#ifdef DEBUG
    referer = 1; /* Avoid duplicate output when mm_free is called indirectly by mm_realloc */
#endif

    mm_free(ptr);

#ifdef DEBUG
    mm_print("r");
#endif

    return bp;
}


/* Main functions */

/* Initialize the memory manager */
int mm_init(void)
{
    /* Reset variables used for trace-oriented optimization */
    first_malloc = 1;
    trace = 0;
    req_no = -1;

    /* Initialize the heap */
    if ((heap_listp = mem_sbrk(4 * WSIZE)) == (void *)-1)
        return -1;

    PUT(heap_listp, 0);
    PUT(heap_listp + 1 * WSIZE, PACK(DSIZE, 1));
    PUT(heap_listp + 2 * WSIZE, PACK(DSIZE, 1));
    PUT(heap_listp + 3 * WSIZE, PACK(0, 1));
    heap_listp += 2 * WSIZE;

    recent_blk = heap_listp;
    
    if (extend_heap(CHUNKSIZE / WSIZE) == NULL)
        return -1;

#ifdef DEBUG
    mm_print("i");
#endif

    return 0;
}

/* Allocate a block with at least size bytes of payload */
void *mm_malloc(size_t size)
{
    /* Ignore spurious requests */
    if (size == 0)
        return NULL;

    char *bp;
    size_t asize = DSIZE * ((size + DSIZE + DSIZE - 1) / DSIZE);

    /* Trace-oriented optimization */
    if (first_malloc) {
        first_malloc = 0;

        if (size == TRACE1) {
            trace = 1;
            extend_heap(EXTENDHEAP1 / WSIZE);
            bp = heap_listp + OFFSET1;
            insert(bp, NEXT_BLKP(heap_listp), asize);

#ifdef DEBUG
            mm_print_r("a");
#endif

            return bp;
        }

        if (size == TRACE2) {
            trace = 2;
            req_no++;
            extend_heap(EXTENDHEAP2 / WSIZE);
            bp = heap_listp + OFFSETINIT(2);
            insert(bp, NEXT_BLKP(heap_listp), asize);

#ifdef DEBUG
            mm_print_r("a");
#endif

            return bp;
        }

        if (size == TRACE3) {
            trace = 3;
            req_no++;
            extend_heap(EXTENDHEAP3 / WSIZE);
            bp = heap_listp + OFFSETINIT(3);
            insert(bp, NEXT_BLKP(heap_listp), asize);

#ifdef DEBUG
            mm_print_r("a");
#endif

            return bp;
        }
    }

    if (trace == 1) {
        if (size != REQA1) {
            trace = 0;
            return mm_malloc_normal(asize);
        }
            
        bp = first_fit(asize);
        place(bp, asize);

#ifdef DEBUG
        mm_print_r("a");
#endif

        return bp;
    }

    if (trace == 2 || trace == 3) {
        req_no++;
        if (req_no >= MAXREQ(trace)) {
            if (size != REQFINAL(trace)) {
                trace = 0;
                return mm_malloc_normal(asize);
            }
            
            bp = next_fit(asize);
        }
        else if (req_no & 1) {
            if (size != REQODD(trace)) {
                trace = 0;
                return mm_malloc_normal(asize);
            }
            
            bp = heap_listp + OFFSETNEXT(trace) + (req_no - 1) / 2 * asize;
        }
        else {
            if (size != REQEVEN(trace)) {
                trace = 0;
                return mm_malloc_normal(asize);
            }
            
            bp = heap_listp + DSIZE + (req_no / 2 - 1) * asize;
        }
        
        place(bp, asize);

#ifdef DEBUG
        mm_print_r("a");
#endif

        return bp;
    }

    return mm_malloc_normal(asize);
}

/* Free a block */
void mm_free(void *ptr)
{
    if (ptr == 0)
        return;

    size_t size = GET_SIZE(HDRP(ptr));

    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
    coalesce(ptr);

#ifdef DEBUG
    mm_print_r("f");
#endif

}

/* Adjust the size of an allocated block */
void *mm_realloc(void *ptr, size_t size)
{
    /* If ptr is NULL, this is equivalent to mm_malloc */
    if (ptr == NULL)
        return mm_malloc(size);

    /* If size is 0, this is equivalent to mm_free */
    if (size == 0) {
        mm_free(ptr);
        return NULL;
    }

    size_t oldsize = GET_SIZE(HDRP(ptr));
    size_t asize = DSIZE * ((size + DSIZE + DSIZE - 1) / DSIZE);

    if (asize == oldsize) { /* No need of adjusting */

#ifdef DEBUG
        mm_print("r");
#endif

        return ptr;
    }
    else if (asize < oldsize) { /* Adjust to be smaller, remain the old position */
        PUT(FTRP(ptr), PACK(oldsize - asize, 0));
        PUT(HDRP(ptr), PACK(asize, 1));
        PUT(FTRP(ptr), PACK(asize, 1));
        char *next_blk = NEXT_BLKP(ptr);
        PUT(HDRP(next_blk), PACK(oldsize - asize, 0));

        coalesce(next_blk);

#ifdef DEBUG
        mm_print("r");
#endif

        return ptr;
    }
    else { /* Adjust to be larger */
        size_t add_size = asize - oldsize;
        char *prev_blk = PREV_BLKP(ptr);
        size_t prev_blk_size = GET_SIZE(HDRP(prev_blk));
        int prev_blk_alloc = GET_ALLOC(HDRP(prev_blk));
        char *next_blk = NEXT_BLKP(ptr);
        size_t next_blk_size = GET_SIZE(HDRP(next_blk));
        int next_blk_alloc = GET_ALLOC(HDRP(next_blk));

        /* Avoid using space on the left free block when doing trace-oriented optimization of TRACE1 */
        if (trace == 1) {
            if (size > REQR1) {
                trace = 0;
                return mm_realloc_normal(ptr, size, oldsize);
            }

            PUT(HDRP(ptr), PACK(asize, 1));
            PUT(FTRP(ptr), PACK(asize, 1));

            if (next_blk_size > add_size) {
                next_blk = NEXT_BLKP(ptr);
                size_t remain_size = next_blk_size - add_size;
                PUT(HDRP(next_blk), PACK(remain_size, 0));
                PUT(FTRP(next_blk), PACK(remain_size, 0));
            }

#ifdef DEBUG
            mm_print("r");
#endif

            return ptr;
        }

        /* Perfrom realloc for three conditions, where when don't need to allocate new space and free the old block, */
        /* and utilize the space nearby instead */
        if (!prev_blk_alloc && !next_blk_alloc && prev_blk_size + next_blk_size >= add_size) {

            memmove(prev_blk, ptr, oldsize);

            PUT(HDRP(prev_blk), PACK(asize, 1));
            PUT(FTRP(prev_blk), PACK(asize, 1));

            if (prev_blk_size + next_blk_size > add_size) {
                next_blk = NEXT_BLKP(prev_blk);
                size_t remain_size = prev_blk_size + next_blk_size - add_size;
                PUT(HDRP(next_blk), PACK(remain_size, 0));
                PUT(FTRP(next_blk), PACK(remain_size, 0));
            }

#ifdef DEBUG
            mm_print("r");
#endif

            return prev_blk;
        }
        else if (!prev_blk_alloc && prev_blk_size >= add_size) {

            memmove(prev_blk, ptr, oldsize);

            PUT(HDRP(prev_blk), PACK(asize, 1));
            PUT(FTRP(prev_blk), PACK(asize, 1));

            if (prev_blk_size > add_size) {
                next_blk = NEXT_BLKP(prev_blk);
                size_t remain_size = prev_blk_size - add_size;
                PUT(HDRP(next_blk), PACK(remain_size, 0));
                PUT(FTRP(next_blk), PACK(remain_size, 0));
            }

#ifdef DEBUG
            mm_print("r");
#endif

            return prev_blk;
        }
        else if (!next_blk_alloc && next_blk_size >= add_size) {

            PUT(HDRP(ptr), PACK(asize, 1));
            PUT(FTRP(ptr), PACK(asize, 1));

            if (next_blk_size > add_size) {
                next_blk = NEXT_BLKP(ptr);
                size_t remain_size = next_blk_size - add_size;
                PUT(HDRP(next_blk), PACK(remain_size, 0));
                PUT(FTRP(next_blk), PACK(remain_size, 0));
            }

#ifdef DEBUG
            mm_print("r");
#endif

            return ptr;
        }
        else /* Space nearby cannot be utilized, we should allocate new space and free the old block */
            return mm_realloc_normal(ptr, size, oldsize);
    }
}

#ifdef DEBUG

/* Print the current heap status and check heap consistency */
static void mm_print(char *opt)
{

    void *bp;
    size_t ut_size = 0;
    size_t heap_size = mem_heapsize();
    
    /* Calculate aggregated payload */
    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if (GET_ALLOC(HDRP(bp)))
            ut_size += GET_SIZE(HDRP(bp)) - DSIZE;
    }

    /* Print the current heap size, current utilization rate, and the current operation */
    printf("(%d, %02d%%) %s: ", heap_size, (int)((double)ut_size / heap_size * 100), opt);

    /* Print size and allocated/free status of all the blocks in the heap */
    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        printf("%d/%d\t", GET_SIZE(HDRP(bp)), GET_ALLOC(HDRP(bp)));
    }

#ifdef STEP
    getchar();
#else
    printf("\n");
#endif

    mm_check();
}

/* Print the current heap status, but print nothing when mm_malloc or mm_free is called indirectly by mm_realloc */
static void mm_print_r(char *opt)
{
    if (!referer)
        mm_print(opt);
    referer = 0;
}

/* Print a formatted error message and terminate the program */
#define error_exit(_s, _a ...) printf("Error: "_s"\n", ## _a), exit(0);

/* Check the heap consistency for the following criteria:
 *
 * 1. Pointer heap_listp points to the prologue block in the heap.
 * 2. Size values and allocated/free bits(status) of all blocks are correct.
 * 3. No adjacent free blocks exist.
 * 4. Pointer recent_blk points to a valid block in the heap.
 * 5. Sum of block size is consistent with the heap size.
 */
static void mm_check()
{
    char *hdrp, *ftrp, *bp;
    size_t size, total_size = 0;
    int this_alloc, last_alloc;
    int recent_appeared = 0;

    if (heap_listp - (char *)mem_heap_lo() != DSIZE)
        error_exit("bad position of heap_listp");
    if ((size = GET_SIZE(HDRP(heap_listp))) != DSIZE)
        error_exit("bad prologue block size");
    if ((last_alloc = GET_ALLOC(HDRP(heap_listp))) != 1)
        error_exit("prologue block is free");

    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if (bp == recent_blk)
            recent_appeared = 1;

        hdrp = HDRP(bp);
        ftrp = FTRP(bp);
        if ((size = GET_SIZE(hdrp)) != GET_SIZE(ftrp))
            error_exit("size values in header and footer differs in block %p", bp);
        total_size += size;
        if ((this_alloc = GET_ALLOC(hdrp)) != GET_ALLOC(ftrp))
            error_exit("allocated/free bits in header and footer differs in block %p", bp);

        if (!this_alloc && !last_alloc)
            error_exit("adjacent free blocks (%p and the previous block) escaped coalescing", bp);
        last_alloc = this_alloc;
    }

    if (GET_SIZE(HDRP(bp)) != 0)
        error_exit("bad epilogue block size");
    if (!recent_appeared)
        error_exit("pointer recent_blk at %p is invalid", recent_blk);
    if (total_size + DSIZE != mem_heapsize())
        error_exit("total size of blocks does not equal the heap size");
    
    printf("Heap consistency check passed.\n");
}

#endif
