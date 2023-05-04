#ifndef POLY_H
#define POLY_H

#define DEGREE 5000

typedef void (*poly_func_t)(const double a[], double x, long degree,
                            double *result);

void poly(const double a[], double x, long degree, double *result);
void poly_optim(const double a[], double x, long degree, double *result);

void measure_time(poly_func_t poly, const double a[], double x, long degree,
                  double *time);
void measure_time_std(poly_func_t poly, const double a[], double x, long degree,
                      double *time);

#endif