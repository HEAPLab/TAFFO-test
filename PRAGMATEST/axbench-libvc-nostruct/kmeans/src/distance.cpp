/*
 * distance.c
 * 
 * Created on: Sep 9, 2013
 * 			Author: Amir Yazdanbakhsh <a.yazdanbakhsh@gatech.edu>
 */


#include "distance.hpp"
#include <math.h>
#include <map>



#pragma taffo euclideanDistance "scalar(range(0, 256))"
float euclideanDistance(float*  p, float*  c1){
	// function parameters pragmas
	DO_PRAGMA(taffo p euclideanDistance ANNOTATION_RGBPIXEL)
	DO_PRAGMA(taffo c1 euclideanDistance ANNOTATION_CENTROID)

	#pragma taffo r euclideanDistance "range 0 256"
	float  r;

	r = 0;
	#pragma taffo r_tmp euclideanDistance "range 0 256"
	double r_tmp;
	
	/*
	double dataIn[6];
	dataIn[0] = RGBPIXEL_R(p, 0);
	dataIn[1] = RGBPIXEL_G(p, 0);
	dataIn[2] = RGBPIXEL_B(p, 0);
	dataIn[3] = CENTROID_R(c1, 0);
	dataIn[4] = CENTROID_G(c1, 0);
	dataIn[5] = CENTROID_B(c1, 0);
	*/

//#pragma parrot(input, "kmeans", [6]dataIn)

	r += (RGBPIXEL_R(p, 0) - CENTROID_R(c1, 0)) * (RGBPIXEL_R(p, 0) - CENTROID_R(c1, 0));
	r += (RGBPIXEL_G(p, 0) - CENTROID_G(c1, 0)) * (RGBPIXEL_G(p, 0) - CENTROID_G(c1, 0));
	r += (RGBPIXEL_B(p, 0) - CENTROID_B(c1, 0)) * (RGBPIXEL_B(p, 0) - CENTROID_B(c1, 0));

	r_tmp = sqrt(r);

//#pragma parrot(output, "kmeans", <0.0; 1.0>r_tmp)

	return r_tmp;
}

#pragma taffo pickCluster "scalar()"
int pickCluster(float*  p, float*  c1)  {
	//function parameters pragmas
	DO_PRAGMA(taffo p pickCluster ANNOTATION_RGBPIXEL)
	DO_PRAGMA(taffo c1 pickCluster ANNOTATION_CENTROID)


	float d1;

	d1 = euclideanDistance(p, c1);

	if (RGBPIXEL_DISTANCE(p, 0) <= d1)
		return 0;

	return 1;
}

#pragma taffo assignCluster "scalar()"
void assignCluster(float* p, Clusters* clusters) {
	//function parameters pragmas
	DO_PRAGMA(taffo p assignCluster ANNOTATION_RGBPIXEL)
	int i = 0;
	int *p2 = (int *)p;
	DO_PRAGMA(taffo centroids assignCluster ANNOTATION_CENTROID)
	float  *centroids = (float *)clusters->centroids;

	DO_PRAGMA(taffo d assignCluster "target:distance " ANNOTATION_RGBPIXEL)
	float d;
	d = euclideanDistance(p, &CENTROID(centroids, i));
	RGBPIXEL_DISTANCE(p, 0) = d;

	for(i = 1; i < clusters->k; ++i) {
		d = euclideanDistance(p, &CENTROID(centroids, i));
		if (d < RGBPIXEL_DISTANCE(p, 0)) {
			RGBPIXEL2_CLUSTER(p2, 0) = i;
			RGBPIXEL_DISTANCE(p, 0) = d;
		}
	}
}

