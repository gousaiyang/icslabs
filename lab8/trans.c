/* 
 * trans.c - Matrix transpose B = A^T
 *
 * ----------------------------------
 * Name: Gou Saiyang
 * 
 * LoginID: ics515030910022
 * ----------------------------------
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    int x, y, i, j, tmp;

    if (M == 32 && N == 32) { /* Test case 1 */
        /* Split into 8*8 blocks */
        for (x = 0; x < 4; ++x) {
            for (y = 0; y < 4; ++y) {
                for (i = 0; i < 8; ++i) {
                    for (j = 0; j < 8; ++j) {
                        if (i == j) /* Delay operations on the diagonal of each block */
                            continue;
                        tmp = A[8 * x + i][8 * y + j];
                        B[8 * y + j][8 * x + i] = tmp;
                    }
                    tmp = A[8 * x + i][8 * y + i];
                    B[8 * y + i][8 * x + i] = tmp;
                }
            }
        }
    }
    else if (M == 64 && N == 64) { /* Test case 2 */
        /* Split into 8*8 blocks */
        /* Each block is copied in the following order:
         * ---1---> ---16-->
         * ---2---> ---15-->
         * ---3---> ---14-->
         * ---4---> ---13-->
         * ---5---> ---12-->
         * ---6---> ---11-->
         * ---7---> ---10-->
         * ---8---> ---9--->
         */
        for (y = 0; y < 8; ++y) {
            /* Deal with blocks on the diagonal (of the overview) first */

            /* Copy its data to another 2 blocks in B to utilize free sets */
            for (i = 0; i < 4; ++i) {
                for (j = 0; j < 8; ++j) {
                    tmp = A[8 * y + i][8 * y + j];
                    B[8 * y + i][8 * ((y + 1) % 8) + j] = tmp;
                }
            }
            for (i = 4; i < 8; ++i) {
                for (j = 0; j < 8; ++j) {
                    tmp = A[8 * y + i][8 * y + j];
                    B[8 * y + i][8 * ((y + 2) % 8) + j] = tmp;
                }
            }

            /* Then copy data to the target, in the order mentioned above */
            for (i = 0; i < 4; ++i) {
                for (j = 0; j < 4; ++j) {
                    tmp = B[8 * y + i][8 * ((y + 1) % 8) + j];
                    B[8 * y + j][8 * y + i] = tmp;
                }
            }
            for (i = 4; i < 8; ++i) {
                for (j = 0; j < 4; ++j) {
                    tmp = B[8 * y + i][8 * ((y + 2) % 8) + j];
                    B[8 * y + j][8 * y + i] = tmp;
                }
            }
            for (i = 7; i >= 4; --i) {
                for (j = 4; j < 8; ++j) {
                    tmp = B[8 * y + i][8 * ((y + 2) % 8) + j];
                    B[8 * y + j][8 * y + i] = tmp;
                }
            }
            for (i = 3; i >= 0; --i) {
                for (j = 4; j < 8; ++j) {
                    tmp = B[8 * y + i][8 * ((y + 1) % 8) + j];
                    B[8 * y + j][8 * y + i] = tmp;
                }
            }

            /* Then deal with blocks underneath (wrap to the top) */
            for (x = 1; x < 8; ++x) {
                /* Copy data to the target, in the order mentioned above */
                for (i = 0; i < 8; ++i) {
                    for (j = 0; j < 4; ++j) {
                        tmp = A[8 * ((y + x) % 8) + i][8 * y + j];
                        B[8 * y + j][8 * ((y + x) % 8) + i] = tmp;
                    }
                }
                for (i = 7; i >= 0; --i) {
                    for (j = 4; j < 8; ++j) {
                        tmp = A[8 * ((y + x) % 8) + i][8 * y + j];
                        B[8 * y + j][8 * ((y + x) % 8) + i] = tmp;
                    }
                }
            }
        }
    }
    else if (M == 61 && N == 67) { /* Test case 3 */
        /* Split into vertical strips of width 8, scan row-wise in each strip */
        for (y = 0; y < 7; ++y) {
            for (i = 0; i < 67; ++i) {
                for (j = 0; j < 8; ++j) {
                    tmp = A[i][8 * y + j];
                    B[8 * y + j][i] = tmp;
                }
            }
        }
        for (i = 0; i < 67; ++i) {
            for (j = 0; j < 5; ++j) {
                tmp = A[i][56 + j];
                B[56 + j][i] = tmp;
            }
        }
    }
    else { /* Normal cases */
        for (i = 0; i < N; ++i) {
            for (j = 0; j < M; ++j) {
                tmp = A[i][j];
                B[j][i] = tmp;
            }
        }
    }
}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    //registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

