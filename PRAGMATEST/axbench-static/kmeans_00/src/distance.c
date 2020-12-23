/*
 * distance.c
 * 
 * Created on: Sep 9, 2013
 * 			Author: Amir Yazdanbakhsh <a.yazdanbakhsh@gatech.edu>
 */


#include "distance.h"
#include <math.h>
#include <map>
#include <cstdio>

int count = 0;
#define MAX_COUNT 1200000

float euclideanDistance(RgbPixel*  p, Centroid*  c1) {

	//function parameters pragmas
	DO_PRAGMA(taffo p euclideanDistance ANNOTATION_RGBPIXEL)
	DO_PRAGMA(taffo c1 euclideanDistance ANNOTATION_CENTROID)

	#pragma taffo r  euclideanDistance "scalar()"
	#pragma taffo rr euclideanDistance "scalar(range(1.0e-2,2.976608) final)"
	float r;
	float  rr;

	r = 0;
	#pragma taffo r_tmp euclideanDistance "scalar()"
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

	r += (p->r - c1->r) * (p->r - c1->r);
	r += (p->g - c1->g) * (p->g - c1->g);
	r += (p->b - c1->b) * (p->b - c1->b);

	rr = r;

	r_tmp = sqrt(rr);

//#pragma parrot(output, "kmeans", <0.0; 1.0>r_tmp)

	// fprintf(stderr, "%f\n", r_tmp);

	return r_tmp;
}

int pickCluster(RgbPixel*  p, Centroid*  c1) {
	//function parameters pragmas
	DO_PRAGMA(taffo p  pickCluster ANNOTATION_RGBPIXEL)
	DO_PRAGMA(taffo c1 pickCluster ANNOTATION_CENTROID)

	#pragma taffo d1 pickCluster "scalar()"
	float d1;

	d1 = euclideanDistance(p, c1);

	if (p->distance <= d1)
		return 0;

	return 1;
}

void assignCluster(RgbPixel*  p, Clusters*  clusters) {
	//function parameters pragmas
	DO_PRAGMA(taffo p assignCluster ANNOTATION_RGBPIXEL)
	DO_PRAGMA(taffo clusters assignCluster ANNOTATION_CLUSTER)
	int i = 0;

	#pragma taffo d assignCluster "errtarget('distance') scalar()"
	float d;
	d = euclideanDistance(p, &clusters->centroids[i]);
	p->distance = d;

	for(i = 1; i < clusters->k; ++i) {
		d = euclideanDistance(p, &clusters->centroids[i]);
		if (d < p->distance) {
			p->cluster = i;
			p->distance = d;
		}
	}
}
