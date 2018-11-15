/*
 * convolution.cpp
 * 
 * Created on: Sep 9, 2013
 * 			Author: Amir Yazdanbakhsh <a.yazdanbakhsh@gatech.edu>
 */

#include "convolution.hpp"
#include <cmath>

int total = 0;
static float __attribute((annotate("no_float 8 24 signed -2 2 0"))) kx[][3] =
		{
			{ -1, -2, -1 },
			{  0,  0,  0 },
			{  1,  2,  1 }
		} ;

static float __attribute((annotate("no_float 8 24 signed -2 2 0"))) ky[][3] =
		{
			{ -1, 0, 1 },
			{ -2, 0, 2 },
			{ -1, 0, 1 }
		} ;

float convolve(float w[][3] __attribute((annotate("range 0 1"))),
               float k[][3] __attribute((annotate("range -2 2 0"))))
{
	float __attribute((annotate("no_float 12 20 signed -1 1"))) r ;
	r = 0.0 ;
	for( int j = 0 ; j < 3 ; j++ )
		for ( int i = 0 ; i < 3 ; i++ )
		{
			r += w[i][j] * k[j][i] ;
		}
	return r ;
}

float sobel(float w[][3] __attribute((annotate("range 0 1 1e-8"))))
{
	float __attribute((annotate("no_float 8 24 signed -1 1 0"))) sx ;
	float __attribute((annotate("no_float 8 24 signed -1 1 0"))) sy ;
	float __attribute((annotate("no_float 8 24 signed 0 0.7"))) s  ;
/*
	double dataIn[9];

	dataIn[0] = w[0][0];
	dataIn[1] = w[0][1];
	dataIn[2] = w[0][2];
	dataIn[3] = w[1][0];
	dataIn[4] = w[1][1];
	dataIn[5] = w[1][2];
	dataIn[6] = w[2][0];
	dataIn[7] = w[2][1];
	dataIn[8] = w[2][2];

#pragma parrot(input, "sobel", [9]dataIn)
*/
	for(int i = 0 ; i < 3 ; i++)
		for(int j = 0 ; j < 3 ; j++)
			if(DEBUG) std::cout << "w_ " << i << j << ": " << w[i][j] << std::endl;
	sx = convolve(w, ky) ;
	if(DEBUG) std::cout << "sx: " << sx << std::endl ;
	sy = convolve(w, kx) ;
	if(DEBUG) std::cout << "sy: " << sy << std::endl ;

	s = sqrt(sx * sx + sy * sy) ;
	if (s >= (256 / sqrt(256 * 256 + 256 * 256)))
		s = 255 / sqrt(256 * 256 + 256 * 256);
/*
#pragma parrot(output, "sobel", <0.0; 1.0>s)
	*/
	return s ;
}
