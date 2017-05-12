/* 
 * Name: Gou Saiyang
 * 
 * LoginID: ics515030910022
 * 
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <getopt.h>
#include <unistd.h>
#include "cachelab.h"


/* Program options */
#define MAX_FILENAME 255 /* Maximum length of trace file name */
int verbose = 0; /* Output verbosity switch */


/* Cache structure */
typedef struct cache_line { /* A cache line */
    long tag; /* The tag bits */
    int valid; /* Whether the block is valid */
    int atime; /* The recent access time of the block */
} line_t;

typedef struct cache_set { /* A cache set */
    line_t *lines; /* Lines in the set */
} set_t;

set_t *sets; /* The cache sets */


/* Cache parameters */
#define cache_m 64
int cache_s, cache_S, cache_E, cache_b, cache_t;


/* Helper macros */
#define GET_TAG(x) (((x) >> (cache_s + cache_b)) & ((1L << cache_t) - 1))
#define GET_SET(x) (((x) >> cache_b) & ((1 << cache_s) - 1))


/* Status variables */
int curtime = 0; /* The current time */
int hits = 0, misses = 0, evictions = 0;


/* Output usage and terminate the program */
void usage(char *prog)
{
    printf("Usage: %s [-hv] -s <num> -E <num> -b <num> -t <file>\n", prog);
    printf("Options:\n");
    printf("  -h         Print this help message.\n");
    printf("  -v         Optional verbose flag.\n");
    printf("  -s <num>   Number of set index bits.\n");
    printf("  -E <num>   Number of lines per set.\n");
    printf("  -b <num>   Number of block offset bits.\n");
    printf("  -t <file>  Trace file.\n");
    printf("\n");
    printf("Examples:\n");
    printf("  linux>  %s -s 4 -E 1 -b 4 -t traces/yi.trace\n", prog);
    printf("  linux>  %s -v -s 8 -E 2 -b 4 -t traces/yi.trace\n", prog);

    exit(0);
}

/* Parse the command line arguments */
void parse_cmdline(int argc, char **argv, char *fn)
{
    int result;

    cache_s = -1;
    cache_E = -1;
    cache_b = -1;
    memset(fn, 0, MAX_FILENAME + 1);

    opterr = 0;

    while ((result = getopt(argc, argv, "hvs:E:b:t:")) != -1) {
        switch (result) {
            case 'h':
                usage(argv[0]);
                break;
            case 'v':
                verbose = 1;
                break;
            case 's':
                cache_s = atoi(optarg);
                break;
            case 'E':
                cache_E = atoi(optarg);
                break;
            case 'b':
                cache_b = atoi(optarg);
                break;
            case 't':
                strncpy(fn, optarg, MAX_FILENAME);
                break;
            default:
                break;
        }
    }

    if (cache_s == -1 || cache_E == -1 || cache_b == -1 || *fn == 0) {
        printf("%s: Missing required command line argument\n", argv[0]);
        usage(argv[0]);
    }
}

/* Initialize the cache structure */
void init_cache()
{
    int i, j;

    sets = (set_t *)malloc(cache_S * sizeof(set_t));

    for (i = 0; i < cache_S; ++i) {
        sets[i].lines = (line_t *)malloc(cache_E * sizeof(line_t));

        for (j = 0; j < cache_E; ++j) {
            sets[i].lines[j].valid = 0;
            sets[i].lines[j].atime = 0;
        }
    }
}

/* Destroy the cache structure */
void free_cache()
{
    int i;

    for (i = 0; i < cache_S; ++i)
        free(sets[i].lines);

    free(sets);
}

/* Simulate a single cache request */
void sim_request(long addr)
{
    ++curtime;

    int the_set = GET_SET(addr);
    long the_tag = GET_TAG(addr);

    int invalid_line = -1;
    int min_atime = 0x7fffffff, min_atime_line = 0;

    line_t *cur_line;

    int i;

    for (i = 0; i < cache_E; ++i) {
        cur_line = &sets[the_set].lines[i];

        /* Search for hit */
        if (cur_line->valid && cur_line->tag == the_tag) {
            ++hits;
            if (verbose)
                printf(" hit");

            cur_line->atime = curtime;
            return;
        }

        /* Find an invalid line and a LRU line at the same time */
        if (invalid_line == -1) {
            if (!cur_line->valid) {
                invalid_line = i;
            }
            else if (cur_line->atime < min_atime) {
                min_atime = cur_line->atime;
                min_atime_line = i;
            }
        }
    }

    ++misses;
    if (verbose)
        printf(" miss");

    if (invalid_line != -1) { /* An invalid line found */
        cur_line = &sets[the_set].lines[invalid_line];
        cur_line->valid = 1;
        cur_line->tag = the_tag;
        cur_line->atime = curtime;
    }
    else { /* No invalid line found, we have to evict a valid line */
        ++evictions;
        if (verbose)
            printf(" eviction");

        cur_line = &sets[the_set].lines[min_atime_line];
        cur_line->tag = the_tag;
        cur_line->atime = curtime;
    }
}

/* Simulate cache behavior of the trace file */
void sim_file(char *fn)
{
    char op; /* Operation: 'L', 'S' or 'M' */
    long addr, size; /* Address and size */
    int res; /* Return value of fscanf */

    FILE *fin = fopen(fn, "r");

    while (!feof(fin)) {
        res = fscanf(fin, "%c %lx,%ld", &op, &addr, &size);
        if (res != 3) /* Filter ' ' and '\n' */
            continue;

        if (verbose && (op == 'L' || op == 'S' || op == 'M'))
            printf("%c %lx,%ld", op, addr, size);
            
        switch (op) {
            case 'L': case 'S': /* 'L' and 'S' are equivalent */
                sim_request(addr);
                break;
            case 'M': /* 'M' is equivalent to 'L' + 'S' */
                sim_request(addr);
                sim_request(addr);
                break;
            default:
                break;
        }

        if (verbose && (op == 'L' || op == 'S' || op == 'M'))
            printf("\n");
    }

    fclose(fin);
}

int main(int argc, char *argv[])
{
    char filename[MAX_FILENAME + 1];

    if (argc == 1)
        usage(argv[0]);
    parse_cmdline(argc, argv, filename);

    cache_S = 1 << cache_s;
    cache_t = cache_m - cache_b - cache_s;

    init_cache();

    sim_file(filename);

    printSummary(hits, misses, evictions);

    free_cache();
    
    return 0;
}
