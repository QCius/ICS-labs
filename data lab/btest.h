/*
 * CS:APP Data Lab
 */

#ifndef BTEST_H
#define BTEST_H

/* Declare different function types */
typedef long (*funct_t)(void);
typedef long (*funct1_t)(long);
typedef long (*funct2_t)(long, long);
typedef long (*funct3_t)(long, long, long);

/* Combine all the information about a function and its tests as structure */
typedef struct {
    const char *name;       /* String name */
    funct_t solution_funct; /* Function */
    funct_t test_funct;     /* Test function */
    int args;               /* Number of function arguments */

    /* List of legal operators. Special case: "$" for floating point */
    const char *ops;
    int op_limit;          /* Max number of ops allowed in solution */
    int rating;            /* Problem rating (1 -- 4) */

    /* Argument ranges. Always defined for 3 args, even if the
       function takes fewer. Special case: First arg must be set to
       {1,1} for f.p. puzzles. */
    long arg_ranges[3][2];
} test_rec, *test_ptr;

extern test_rec test_set[];

#endif
