///TAFFO_TEST_ARGS
#include <stdio.h>

#pragma taffo glob "scalar()"
float glob;

#pragma taffo fun "scalar()"
float *fun(void)
{
  return &glob;
}


int main()
{
  #pragma taffo x main "target('x') scalar()"
  float *x = fun();
  #pragma taffo t main "scalar(range(-10, 10) disabled)"
  float t ;
  scanf("%f", &t);
  *x = t;
  printf("%f\n", *x);
  return 0;
}
