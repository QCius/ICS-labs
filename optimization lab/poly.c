#include "poly.h"
#include <stdio.h>
#include <time.h>
#include <sys/time.h>

void poly_optim(const double a[], double x, long degree, double *result)
{
    long i,j;
    double rest,
        r1 = a[degree],
        r2 = a[degree - 1],
        r3 = a[degree - 2],
        r4 = a[degree - 3],
        r5 = a[degree - 4],
        r6 = a[degree - 5],
        r7 = a[degree - 6],
        r8 = a[degree - 7],
        r9 = a[degree - 8],
        xx[50];

    xx[0] = 1;
    xx[1] = x;
    for (long j = 2; j < 50; j++)
    {
        xx[j] = xx[j - 1] * x;
    } //init xx

    /*Actually, 7 expansions are sufficient, but 9 expansions
      are the smallest in my measurements*/
    for (i = degree - 9; i >= 9; i -= 9){
    r1 = a[i] + r1 * xx[9];
    r2 = a[i - 1] + r2 * xx[9];
    r3 = a[i - 2] + r3 * xx[9];
    r4 = a[i - 3] + r4 * xx[9];
    r5 = a[i - 4] + r5 * xx[9];
    r6 = a[i - 5] + r6 * xx[9];
    r7 = a[i - 6] + r7 * xx[9];
    r8 = a[i - 7] + r8 * xx[9];
    r9 = a[i - 8] + r9 * xx[9];
    } //loop unrolling

    r1 *= xx[i + 9];
    r2 *= xx[i + 8];
    r3 *= xx[i + 7];
    r4 *= xx[i + 6];
    r5 *= xx[i + 5];
    r6 *= xx[i + 4];
    r7 *= xx[i + 3];
    r8 *= xx[i + 2];
    r9 *= xx[i + 1];

    rest = a[i];
    for (i--; i >= 0;i--){
        rest = a[i] + rest * x;
    }//rest data

    *result = r1 + r2 + r3 + r4 + r5 + r6 + r7 + r8 + r9 + rest;
}

void measure_time(poly_func_t poly, const double a[], double x, long degree,
                  double *time) {
    double result = -1;
    double dif = 0;
    int size = 50;

    struct timespec time_bgein = {0, 0};
    struct timespec time2_end = {0, 0};
    
    for (int i = 0; i < size;i++){
        poly(a, x, degree, &result); // cache hot
        clock_gettime(CLOCK_REALTIME, &time_bgein);
        poly(a, x, degree, &result);
        clock_gettime(CLOCK_REALTIME, &time2_end);
        dif += ((time2_end.tv_sec - time_bgein.tv_sec) * 1e9 
                + (time2_end.tv_nsec - time_bgein.tv_nsec));
    }

    *time = dif / size;
}