///TAFFO_TEST_ARGS -Xvra -propagate-all
#include <stdio.h>

double test(void)
{
	#pragma taffo a test "scalar()"
	double a;
	double b = 98.0, c = 77.0;
	b = b - c;
	a = b * 2.0;
	return a;
}

int main(int argc, char *argv[])
{
	printf("%lf\n", test());
	return 0;
}


