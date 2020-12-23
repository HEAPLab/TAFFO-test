///TAFFO_TEST_ARGS -disable-vra
#include <stdio.h>

float test(float a)
{
  return a*2;
}

int main(int argc, char *argv[])
{
  #pragma taffo a main "target('a') scalar(range(-128, 128) disabled)"
  float a;
  scanf("%f", &a);
  printf("%f\n", test(a));
  return 0;
}

