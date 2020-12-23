///TAFFO_TEST_ARGS -Xvra -propagate-all
#include <stdio.h>

#pragma taffo fun "scalar(range(-10, 10))"
float fun(void) 
{
  float t;
  scanf("%f", &t);
  return t;
}


int main()
{
  float x = fun();
  printf("%f\n", x);
  return 0;
}
