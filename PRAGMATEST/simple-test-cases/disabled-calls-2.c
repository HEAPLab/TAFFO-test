///TAFFO_TEST_ARGS -Xinit -mem2reg
#include <stdio.h>

float test(float a)
{
  return a*2;
}

/*
 * Note: there is a test case using a number outside the input range
 * below to purposefully cause an integer overflow, to make sure variable
 * b gets converted to fixed-point.
 */

int main(int argc, char *argv[])
{
	#pragma taffo a main "target('a') scalar(range(-128, 128) disabled)"
  float a;
  scanf("%f", &a);
  #pragma taffo b main "target('a') scalar()"
  float b= a*2;
  printf("%f\n", test(b));
  return 0;
}

