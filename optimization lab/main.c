#include "poly.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

double arr[DEGREE + 10];

#define C_BYTES (1 << 23)
#define C_LONGS (C_BYTES / sizeof(long))

volatile long foo;
long foo_arr[C_LONGS];

void clear_cache() {
    long i, sum = 0;
    for (i = 0; i < C_LONGS; ++i) {
        foo_arr[i] = 3;
    }
    for (i = 0; i < C_LONGS; ++i) {
        sum += foo_arr[i];
    }
    foo = sum;
}

double least_square(const double n_ele[], const double cycles[],
                    const int mask[], long n, double *b_ret) {
    double a11 = 0, a12 = 0, a22 = 0; // a12 == a21
    for (int i = 0; i < n; ++i) {
        if (mask[i] == 0) {
            continue;
        }
        a11 += n_ele[i] * n_ele[i];
        a12 += n_ele[i];
        a22 += 1;
    }
    double det = a11 * a22 - a12 * a12;
    if (det < 1e-20) {
        return 0.0;
    }
    double a11_ = a22 / det, a12_ = -a12 / det, a21_ = -a12 / det,
           a22_ = a11 / det;
    double b1 = 0, b2 = 0;
    for (int i = 0; i < n; ++i) {
        if (mask[i] == 0) {
            continue;
        }
        b1 += n_ele[i] * cycles[i];
        b2 += cycles[i];
    }
    *b_ret = a21_ * b1 + a22_ * b2;
    return a11_ * b1 + a12_ * b2;
}

double compute_cpe(const double n_ele[], const double cycles[], long n) {
    // RANSAC algorithm
    int n_iter = 300, i;
    double best_k = -1, best_err = 1e10;
    static int mask[DEGREE];
    while (n_iter-- > 0) {
        // randomly select about a half of samples
        for (i = 0; i < n; ++i) {
            mask[i] = (random() % 2 == 0) ? 1 : 0;
        }
        double b = -1;
        double k = least_square(n_ele, cycles, mask, n, &b);

        int n_confirmed = 0;
        for (i = 0; i < n; ++i) {
            if (fabs(k * n_ele[i] + b - cycles[i]) / (k * n_ele[i] + b) < 0.1) {
                n_confirmed++;
                mask[i] = 1;
            } else {
                mask[i] = 0;
            }
        }

        if (n_confirmed < n * 0.8) {
            continue;
        }

        // good model, now measure how good it is
        k = least_square(n_ele, cycles, mask, n, &b);

        double err = 0;
        for (i = 0; i < n; ++i) {
            if (mask[i]) {
                double delta_y = (cycles[i] - k * n_ele[i] - b);
                err += delta_y * delta_y;
            }
        }
        err /= n_confirmed;
        if (err < best_err) {
            best_k = k;
            best_err = err;
        }
    }
    return best_k;
}

void poly(const double a[], double x, long degree, double *result) {
    long i;
    double r = a[degree];
    for (i = degree - 1; i >= 0; i--) {
        r = a[i] + r * x;
    }
    *result = r;
    return;
}

double time_sample[DEGREE / 10];
double n_ele[DEGREE / 10];

int main() {
    srandom(time(0));
    for (int i = 0; i <= DEGREE; ++i) {
        arr[i] = 1.0 * random() / random();
    }
    const double freq = 2.6;
    double delta;
    double x = 1.0000001;

    /** Test 1 **/
    for (long i = 10; i <= DEGREE; i += 10) {
        n_ele[i / 10 - 1] = i;
        clear_cache();
        measure_time(poly, arr, x, i, time_sample + (i / 10) - 1);
        time_sample[i / 10 - 1] *= freq;
    }
    double cpe_orig = compute_cpe(n_ele, time_sample, DEGREE / 10);

    delta = fabs(cpe_orig - 7) / 7;
    int score_1 = (0.0 <= delta && delta < 0.05) ? 25 : 0;
    printf("=============== Test 1: Measuring poly() ======================\n");
    printf("Measured CPE of poly(): %.6lf\n", cpe_orig);
    printf("Score: %d/25\n\n", score_1);

    /** Test 2 **/
    printf("=============== Test 2: Correctness ===========================\n");
    int ok = 1;
    for (int beg = random() % (DEGREE - 100), i = beg; i < beg + 100; ++i) {
        double r_orig = -1, r_optim = -2;
        poly(arr, x, i, &r_orig);
        poly_optim(arr, x, i, &r_optim);
        delta = fabs(r_orig - r_optim) / r_orig;
        int this_ok = (0.0 <= delta && delta < 1e-10);
        ok = ok && this_ok;
        if (!this_ok) {
            printf("poly(%d):       %.12lf\n", i, r_orig);
            printf("poly_optim(%d): %.12lf\n", i, r_optim);
        }
    }
    int score_2 = ok ? 25 : 0;
    printf("Score: %d/25\n\n", score_2);

    /** Test 3 **/
    for (long i = 10; i <= DEGREE; i += 10) {
        n_ele[i / 10 - 1] = i;
        clear_cache();
        measure_time_std(poly_optim, arr, x, i, time_sample + (i / 10) - 1);
        time_sample[i / 10 - 1] *= freq;
    }
    double cpe_optim_std = compute_cpe(n_ele, time_sample, DEGREE / 10);

    int score_3 =
        (score_2 == 25 && 0.0 <= cpe_optim_std && cpe_optim_std <= 1.05) ? 25
                                                                         : 0;
    printf("=============== Test 3: Optimization ==========================\n");
    printf("CPE of poly_optim(): %.6lf\n", cpe_optim_std);
    printf("Score: %d/25\n\n", score_3);

    /** Test 4 **/
    for (long i = 10; i <= DEGREE; i += 10) {
        n_ele[i / 10 - 1] = i;
        clear_cache();
        measure_time(poly_optim, arr, x, i, time_sample + (i / 10) - 1);
        time_sample[i / 10 - 1] *= freq;
    }
    double cpe_optim = compute_cpe(n_ele, time_sample, DEGREE / 10);

    delta = fabs(cpe_optim - cpe_optim_std) / cpe_optim_std;
    int score_4 =
        (cpe_optim_std >= 0.0 && 0.0 <= delta && delta < 0.05) ? 25 : 0;
    printf("=============== Test 4: Measuring poly_optim() ================\n");
    printf("Measured CPE of poly_optim():       %.6lf\n", cpe_optim);
    printf("Score: %d/25\n\n", score_4);

    printf("===============================================================\n");
    printf("Total score: %d/100\n", score_1 + score_2 + score_3 + score_4);

    return 0;
}