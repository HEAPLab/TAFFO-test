#include <stdio.h>


typedef struct {
  float a;
  int b;
  float c;
} test;


int main(int argc, char *argv[])
{
  test __attribute__((annotate("range -3000 +3000"))) z;
  float a, b, c;
  scanf("%f%f%f", &a, &b, &c);
  z.a = a;
  z.b = b;
  z.c = c;
  printf("%f\n%d\n%f\n", z.a, z.b, z.c);
  return 0;
}
