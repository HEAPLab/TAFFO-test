///TAFFO_TEST_ARGS -disable-vra
#include <stdio.h>
#include <math.h>


#pragma taffo glob "scalar(range(-10, 10))"
float glob;


#pragma taffo fun "scalar(range(-10, 10))"
float *fun(void) 
{
  return &glob;
}


int main()
{
  #pragma taffo x main "scalar(range(-10, 10))"
  float *x  = fun();
  float t;
  scanf("%f", &t);
  *x = t;
  printf("%f\n", *x);
  return 0;
}
