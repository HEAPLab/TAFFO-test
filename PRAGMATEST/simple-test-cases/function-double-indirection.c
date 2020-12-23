///TAFFO_TEST_ARGS
#include <stdio.h>
#include <math.h>


void function_1_2(float *  x, int y)
{
  #pragma taffo x function_1_2 "scalar()"
  *x = (*x) * y;
}


void function_1_1(float * x, int y)
{
  #pragma taffo x function_1_1 "scalar()"
  function_1_2(x, y);
}


void function_2_2(float * x)
{
  #pragma taffo x function_2_2 "scalar()"
  *x = (*x) * (*x);
}


void function_2_1(float * __attribute((annotate("scalar()"))) y)
{
  #pragma taffo y function_2_1 "scalar()"
  #pragma taffo x function_2_1 "scalar(range(0, 10) disabled)"
  #pragma taffo x2 function_2_1 "scalar()"
  float  x;
  float x2;
  scanf("%f", &x);
  x2 = x;
  function_2_2(&x2);
  *y += x2;
}

int main(int argc, char *argv[])
{
  #pragma taffo x main "target('x') scalar()"
  float x  = 5.0;
  int y = 2.0;
  function_1_1(&x, y);
  printf("%f\n", x);
  function_2_1(&x);
  printf("%f\n", x);
  return 0;
}

