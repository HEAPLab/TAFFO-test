///TAFFO_TEST_ARGS -disable-vra
#include <stdio.h>
#include <math.h>

#pragma taffo vec "range -32767 32767"
double vec[10];
#pragma taffo scal "range -32767 32767"
double scal;


int main(int argc, char *argv[])
{
  for (int i=0; i<10; i++) {
    vec[i] = i / M_PI;
  }
  scal = 5.0;
  for (int i=0; i<10; i++) {
    printf("%f\n", vec[i]*scal);
  }
  return 0;
}

