/* 
 * trans.c - Matrix transpose B = A^T
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
    if(M == 64) {
        // 64 x 64 code
        //Start blindly dividing in order to get points ⎛ -᷄ ᴥ -᷅ ⎞೯
        int i, j, t,k;
		for (i = 0; i < N; i += 8){
			for (j = 0; j < M; j += 4){
				for (t = i; t < i + 8; t += 4){
                   for (k = t; k < t + 4 && k < N; k++){
					    int a1 = A[k][j];
                        int a2 = A[k][j + 1];
                        int a3 = A[k][j + 2];
                        int a4 = A[k][j + 3];
                        B[j][k] = a1;
                        B[j + 1][k] = a2;
                        B[j + 2][k] = a3;
                        B[j + 3][k] = a4;
                   }
                }
            }
        }
    }
    else if(M == 32) {
        // 32 x 32 code
        // After reading some reference material,I found that the
        // misses on the diagonal can still be reduced, but I can
        // not understand...
        int i,j,k;
        for (i = 0; i < N; i += 8){
            for (j = 0; j < M; j += 8){
                for (k = i; k < i + 8; k++){
                    int a1 = A[k][j];
                    int a2 = A[k][j + 1];
                    int a3 = A[k][j + 2];
                    int a4 = A[k][j + 3];
                    int a5 = A[k][j + 4];
                    int a6 = A[k][j + 5];
                    int a7 = A[k][j + 6];
                    int a8 = A[k][j + 7];
                    B[j][k] = a1;
                    B[j + 1][k] = a2;
                    B[j + 2][k] = a3;
                    B[j + 3][k] = a4;
                    B[j + 4][k] = a5;
                    B[j + 5][k] = a6;
                    B[j + 6][k] = a7;
                    B[j + 7][k] = a8;
                 }
            }
        }
    }
    else {
        // 61 x 67 code
        // I have tried various partitions and obtained answers that satisfy
        // the conditions. partitions like: 14, 16, 17, 18...... , binary 
        // partitions like (14,16),(17,22)......(〃･ิ‿･ิ)ゞ
        int i, j, n, m;
		for (i = 0; i < N; i += 14)
			for (j = 0; j < M; j += 16)
				for (n = i; n < i + 14 && n < N; n++)
					for (m = j; m< j + 16 && m < M; m++)
					{
						B[m][n] = A[n][m];
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
    registerTransFunction(trans, trans_desc); 

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
