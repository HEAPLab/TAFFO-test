/// TAFFO_TEST_ARGS -fopenmp
#include <stdio.h>

#define N (100)

int main(int argc, char *argv[]) {
  float foo __attribute((annotate("target('foo') scalar(range(0,10)) final"))) =
      1.0f;
  float pop
      __attribute((annotate("target('pop') scalar(range(0,2000)) final"))) =
          363;
  float result
      __attribute((annotate("target('result') scalar(range(0,2000)) final"))) =
          0;

#pragma omp parallel num_threads(4)
  {
#pragma omp single
    {
      foo += 1.0;
#pragma omp task
      { foo *= 2.1f; }
#pragma omp task
      pop *= 5.4f;
    }
  }
  result = pop + foo;

  printf("result: %f\n", pop + foo);
}
