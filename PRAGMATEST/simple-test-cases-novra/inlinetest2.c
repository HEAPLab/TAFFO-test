///TAFFO_TEST_ARGS -disable-vra
#include <stdio.h>
#include <math.h>

#pragma taffo abc hello "range -200 200"
float hello( float *abc) __attribute__((always_inline)) {
  abc[5] += (float)M_PI;
}


int main(int argc, char *argv[]) {
	#pragma taffo test main "range -200 200"
	float test[10];
	for (int i=0; i<10; i++)
	  test[i] = 123.0;
	hello(test);
	printf("%a\n", test[5]);
	return 0;
}

