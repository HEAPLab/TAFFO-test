///TAFFO_TEST_ARGS -Xvra -propagate-all
#include <stdio.h>


float hello( float abc) __attribute__((always_inline)) {
  #pragma taffo abc hello "scalar()"
  return abc + (float)5.0;
}


int main(int argc, char *argv[]) {
	#pragma taffo test main "scalar()"
	float test = 123.0;
	test = hello(test);
	printf("%a\n", test);
	return 0;
}

