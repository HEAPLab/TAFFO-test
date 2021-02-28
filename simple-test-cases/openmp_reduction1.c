///TAFFO_TEST_ARGS -fopenmp -Xvra -unroll=100
#include <stdio.h>

#define N (100)

int main(int argc, char *argv[])
{
  float result __attribute__((annotate("target('result') scalar()"))) = 0.0;
  float container[N] __attribute__((annotate("target('container') scalar()")));
  float container_result __attribute__((annotate("target('container_result') scalar()"))) = 0.0;

  int i = 0;

#pragma omp parallel for reduction(+:result)
  for (i = 0; i < N; i++) {
    result += i * 3.5;
    container[i] = i * 3.5;
  }

  for (i = 0; i < N; i++)
    container_result += container[i];

  printf("result: %f\n", result);
  printf("container: %f\n", container_result);
}
