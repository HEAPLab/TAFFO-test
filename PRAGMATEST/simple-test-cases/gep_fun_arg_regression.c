//TAFFO_TEST_ARGS
#include <stdio.h>
#include <stdlib.h>



void idct2(const int table, double *output) {
    output[0] = 1;
}

int main(){
	#pragma taffo colorTables main "scalar(range( -1024, 1024))"
    double **colorTables[1];
    colorTables[0] = (double **)(malloc(sizeof(double *) * 1));
    colorTables[0][0] = (double *)(malloc(sizeof(double) * 1));

    idct2(0, colorTables[0][0]);
}
