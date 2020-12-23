///TAFFO_TEST_ARGS -Xvra -propagate-all
#include <stdio.h>

int main(int argc, char *argv[])
{
 #pragma taffo magic main "scalar()"
  double magic = 1.234567890123456789;
  printf("%a\n", magic + 2.3456778912345678);
}

