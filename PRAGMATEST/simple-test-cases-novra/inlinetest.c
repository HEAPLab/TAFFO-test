///TAFFO_TEST_ARGS -disable-vra
#include <stdio.h>
#include <math.h>


float hello(float abc) __attribute__((always_inline)) {
  #pragma taffo abc hello "range -200 200"
  return abc + (float)M_PI;
}


int main(int argc, char *argv[]) {
	#pragma taffo test main "range -200 200"
	float test = 123.0;
	test = hello(test);
	printf("%a\n", test);
	return 0;
}

