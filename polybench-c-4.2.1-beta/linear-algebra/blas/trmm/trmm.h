/**
 * This version is stamped on May 10, 2016
 *
 * Contact:
 *   Louis-Noel Pouchet <pouchet.ohio-state.edu>
 *   Tomofumi Yuki <tomofumi.yuki.fr>
 *
 * Web address: http://polybench.sourceforge.net
 */
#ifndef _TRMM_H
# define _TRMM_H

/* Default to LARGE_DATASET. */
# if !defined(MINI_DATASET) && !defined(SMALL_DATASET) && !defined(MEDIUM_DATASET) && !defined(LARGE_DATASET) && !defined(EXTRALARGE_DATASET)
#  define LARGE_DATASET
# endif

# if !defined(M) && !defined(N)
/* Define sample dataset sizes. */
#  ifdef MINI_DATASET
#   define M 20
#   define N 30
#  endif

#  ifdef SMALL_DATASET
#   define M 60
#   define N 80
#  endif

#  ifdef MEDIUM_DATASET
#   define M 200
#   define N 240
#  endif

#  ifdef LARGE_DATASET
#   define M 1000
#   define N 1200
#  endif

#  ifdef EXTRALARGE_DATASET
#   define M 2000
#   define N 2600
#  endif


#endif /* !(M N) */

# define _PB_M POLYBENCH_LOOP_BOUND(M,m)
# define _PB_N POLYBENCH_LOOP_BOUND(N,n)


/* Default data type */
# if !defined(DATA_TYPE_IS_INT) && !defined(DATA_TYPE_IS_FLOAT) && !defined(DATA_TYPE_IS_DOUBLE)
#  define DATA_TYPE_IS_DOUBLE
# endif

#ifdef DATA_TYPE_IS_INT
#  define DATA_TYPE int
#  define DATA_PRINTF_MODIFIER "%d "
#endif

#if defined(CONF_BAD)
#define ANN_1 __attribute__((annotate("no_float")))
#define ANN_2 __attribute__((annotate("no_float 10 22")))
#elif defined(CONF_WORSE)
#define ANN_1
#define ANN_2 __attribute__((annotate("no_float")))
#else  // CONF_GOOD
#define ANN_1 __attribute__((annotate("no_float")))
#define ANN_2 __attribute__((annotate("no_float")))
#endif

#ifdef DATA_TYPE_IS_FLOAT
#  define DATA_TYPE1 ANN_1 float
#  define DATA_TYPE2 ANN_2 float
#  define DATA_PRINTF_MODIFIER "%0.16f "
#  define SCALAR_VAL(x) x##f
#  define SQRT_FUN(x) sqrtf(x)
#  define EXP_FUN(x) expf(x)
#  define POW_FUN(x,y) powf(x,y)
# endif

#ifdef DATA_TYPE_IS_DOUBLE
#  define DATA_TYPE1 ANN_1 double
#  define DATA_TYPE2 ANN_2 double
#  define DATA_PRINTF_MODIFIER "%0.16lf "
#  define SCALAR_VAL(x) x
#  define SQRT_FUN(x) sqrt(x)
#  define EXP_FUN(x) exp(x)
#  define POW_FUN(x,y) pow(x,y)
# endif

#endif /* !_TRMM_H */