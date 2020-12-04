///TAFFO_TEST_ARGS -Xvra -propagate-all
#include <stdio.h>

#define MAX_N (30)


int main(int argc, char *argv[])
{
  #pragma taffo numbers main "scalar()"
  float numbers[MAX_N];
  int n = 0;
  #pragma taffo tmp main "scalar(disabled range(-3000, 3000))"
  float tmp;

  for (int i=0; i<MAX_N; i++) {
    if (scanf("%f", &tmp) < 1)
      break;
    numbers[n++] = tmp;
  }

  #pragma taffo add main "scalar()"
  float add = 0.0;
  #pragma taffo sub main "scalar()"
  float sub = 0.0;
  #pragma taffo div main "scalar(range(-3000, 3000) final)"
  float div = 1.0;
  #pragma taffo mul main "scalar()"
  float mul = 1.0;

  for (int i=0; i<n; i++) {
    add += numbers[i];
    sub -= numbers[i];
    if (numbers[i] != 0.0)
      div /= numbers[i];
    mul *= numbers[i];
  }

  printf("add: %f\nsub: %f\ndiv: %f\nmul: %f\n", add, sub, div, mul);
  return 0;
}
