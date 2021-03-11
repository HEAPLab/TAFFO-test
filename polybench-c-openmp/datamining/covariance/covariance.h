/**
 * covariance.h: This file is part of the PolyBench/C 3.2 test suite.
 *
 *
 * Contact: Louis-Noel Pouchet <pouchet@cse.ohio-state.edu>
 * Web address: http://polybench.sourceforge.net
 */
#ifndef COVARIANCE_H
# define COVARIANCE_H

/* Default to STANDARD_DATASET. */
# if !defined(MINI_DATASET) && !defined(STANDARD_DATASET) && !defined(LARGE_DATASET) && !defined(EXTRALARGE_DATASET)
#  define STANDARD_DATASET
# endif

/* Do not define anything if the user manually defines the size. */
# if !defined(N) && !defined(M)
/* Define the possible dataset sizes. */
#  ifdef MINI_DATASET
#   define N 80
#   define M 100
#  endif

#  ifdef SMALL_DATASET
#   define N 500
#   define M 500
#  endif

#  ifdef STANDARD_DATASET
#   define M 1000
#   define N 1000
#  endif


#  ifdef LARGE_DATASET
#   define N 2000
#   define M 2000
#  endif

#  ifdef EXTRALARGE_DATASET
#   define N 4000
#   define M 4000
#  endif
# endif /* !N */

# define _PB_N POLYBENCH_LOOP_BOUND(N,n)
# define _PB_M POLYBENCH_LOOP_BOUND(M,m)

# ifndef DATA_TYPE
#  define DATA_TYPE double
#  define DATA_PRINTF_MODIFIER "%0.16lf "
# endif


#endif /* !COVARIANCE_H */
