///TAFFO_TEST_ARGS -disable-vra
#include <stdio.h>
#include <math.h>


void function_1_2(float *x, int y)
{
  *x = (*x) * y;
}


void function_1_1(float *x, int y)
{
  function_1_2(x, y);
}


void function_2_2(float *x)
{
  *x = (*x) * (*x);
}


void function_2_1(float *y)
{
  float x;
  #pragma taffo x2 function_2_1 "scalar(range(0, 10))"
  float x2;
  scanf("%f", &x);
  x2 = x;
  function_2_2(&x2);
  *y += x2;
}

int main(int argc, char *argv[])
{
  #pragma taffo x main "scalar(range(0, 10))"
  float x = 5.0;
  int y = 2.0;
  function_1_1(&x, y);
  printf("%f", x);
  function_2_1(&x);
  printf("%f", x);
  return 0;
}

