/*
 * kinematics.cpp
 * 
 *  Created on: Sep. 10 2013
 *			Author: Amir Yazdanbakhsh <yazdanbakhsh@wisc.edu>
 */

#include <cmath>
#include "kinematics.hpp"


void forwardk2j(
		float   l1,
		float   l2,
		float   theta1,
		float   theta2,
		float*  x, 
		float*  y)  { 

	//function parameters pragmas
	DO_PRAGMA(taffo l1 forwardk2j ANNOTATION_L1)
	DO_PRAGMA(taffo l2 forwardk2j ANNOTATION_L2)
	#pragma taffo theta1 forwardk2j "scalar()"
	#pragma taffo theta2 forwardk2j "scalar()"
	#pragma taffo x forwardk2j "scalar(range(-1.57,1.57))"  // range(-1,1)
	#pragma taffo y forwardk2j "scalar(range(-1.57,1.57))" //  range(-1,1)



	*x = l1 * cos(theta1) + l2 * cos(theta1 + theta2) ;
	*y = l1 * sin(theta1) + l2 * sin(theta1 + theta2) ;
}

void inversek2j(
		float   l1,
		float   l2,
		float    x,
		float    y,
		float*  theta1,
		float*  theta2) {

	//function parameters pragmas
	DO_PRAGMA(taffo l1 inversek2j ANNOTATION_L1)
	DO_PRAGMA(taffo l2 inversek2j ANNOTATION_L2)
	#pragma taffo x inversek2j "scalar()"
	#pragma taffo y inversek2j "scalar()"
	#pragma taffo theta1 inversek2j "scalar(range(-1.57,1.57))"
	#pragma taffo theta2 inversek2j "scalar(range(-1.57,1.57))"

	#pragma taffo dataIn inversek2j "scalar()"
	double dataIn[2];
	dataIn[0] = x;
	dataIn[1] = y;

	#pragma taffo dataOut inversek2j "scalar()"
	double dataOut[2];

#pragma parrot(input, "inversek2j", [2]dataIn)

	*theta2 = (float)acos(((x * x) + (y * y) - (l1 * l1) - (l2 * l2))/(2 * l1 * l2));
	*theta1 = (float)asin((y * (l1 + l2 * cos(*theta2)) - x * l2 * sin(*theta2))/(x * x + y * y));

	dataOut[0] = (*theta1);
	dataOut[1] = (*theta2);

#pragma parrot(output, "inversek2j", [2]<0.0; 2.0>dataOut)


	*theta1 = dataOut[0];
	*theta2 = dataOut[1];
}
