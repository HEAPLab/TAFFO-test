///TAFFO_TEST_ARGS -Xvra -propagate-all
#include <stdio.h>

int main(int argc, char *argv[])
{
  #pragma taffo a main "scalar(disabled)"
  int a;
  #pragma taffo b main "scalar(range(-2,2))"
  float b;
  a = 1;
  b = 2;
  printf("%f\n", a/(b*2.0));
  printf("%f\n", (b*2.0)/a);
  return 0;
}


