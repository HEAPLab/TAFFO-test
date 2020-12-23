///TAFFO_TEST_ARGS -Xvra -propagate-all
#include <stdio.h>


typedef struct {
  float a;
  int b;
  float c;
} test;


int main(int argc, char *argv[])
{
  #pragma taffo z main "struct[scalar(range(-3000, +3000)),void,scalar(range(-3, +3))]"
  test z;
  float a, b, c;
  scanf("%f%f%f", &a, &b, &c);
  z.a = a;
  z.b = b;
  z.c = c;
  printf("%a\n%d\n%a\n", z.a, z.b, z.c);
  return 0;
}
