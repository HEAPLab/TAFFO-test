///TAFFO_TEST_ARGS -fopenmp -Xvra -unroll=100
#include <stdio.h>

#define N (100)

int main(int argc, char *argv[])
{
  float result __attribute__((annotate("target('result') scalar()"))) = 0.0;

  int i = 0;

#pragma omp parallel for reduction(+:result)
  for (i = 0; i < N; i++)
    result += 1.0;

  printf("result: %f\n", result);
}
