///TAFFO_TEST_ARGS -Xvra -propagate-all
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
  #pragma taffo test main "scalar(range(-1, 1))"
  float *test;
  test = malloc(10 * sizeof(float));
  for (int i=0; i<10; i++) {
    float tmp;
    scanf("%f", &tmp);
    test[i] = tmp;
    printf("%a\n", test[i]);
  }
  return 0;
}


