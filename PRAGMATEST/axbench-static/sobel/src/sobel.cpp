/*
 * sobel.cpp
 *
 * Created on: Sep 9, 2013
 * 			Author: Amir Yazdanbakhsh <a.yazdanbakhsh@gatech.edu>
 */
#include "rgb_image.hpp"
#include "convolution.hpp"
#include <iostream>
#include <cmath>
#include "benchmark.hpp"

#ifdef NPU_FANN
 #include "floatfann.h"
#endif

int main ( int argc, const char* argv[])
{
	int x, y;
	#pragma taffo s main "target('s') scalar()"
	float  s = 0;

	// Source and destination image
	DO_PRAGMA(taffo srcImage    main ANNOTATION_IMAGE_RANGE)
	DO_PRAGMA(taffo dstImage    main ANNOTATION_IMAGE)
	DO_PRAGMA(taffo srcImagePtr main ANNOTATION_IMAGE_RANGE)
	DO_PRAGMA(taffo dstImagePtr main ANNOTATION_IMAGE)
	Image  srcImage;
	Image  dstImage;
	Image *  srcImagePtr = &srcImage;
	Image *  dstImagePtr = &dstImage;

	#pragma taffo w main "target('s') scalar()"
	float w[][3] = {
		{0, 0, 0},
		{0, 0, 0},
		{0, 0, 0}
	};


	srcImagePtr->loadRgbImage( argv[1] ); // source image
	dstImagePtr->loadRgbImage( argv[1] ); // destination image

	srcImagePtr->makeGrayscale( ); // convert the source file to grayscale

	y = 0 ;

	AxBenchTimer timer;

	// Start performing Sobel operation
	for( x = 0 ; x < srcImagePtr->width ; x++ ) {
		HALF_WINDOW(srcImagePtr, x, y, w) ;

			s = sobel(w);

		dstImagePtr->pixels[y][x].r = s ;
		dstImagePtr->pixels[y][x].g = s ;
		dstImagePtr->pixels[y][x].b = s ;
	}

	for (y = 1 ; y < (srcImagePtr->height - 1) ; y++) {
		x = 0 ;
		HALF_WINDOW(srcImagePtr, x, y, w);

			s = sobel(w);

		dstImagePtr->pixels[y][x].r = s ;
		dstImagePtr->pixels[y][x].g = s ;
		dstImagePtr->pixels[y][x].b = s ;


		for( x = 1 ; x < srcImagePtr->width - 1 ; x++ ) {
			WINDOW(srcImagePtr, x, y, w) ;

				s = sobel(w);

			dstImagePtr->pixels[y][x].r = s ;
			dstImagePtr->pixels[y][x].g = s ;
			dstImagePtr->pixels[y][x].b = s ;

		}

		x = srcImagePtr->width - 1 ;
		HALF_WINDOW(srcImagePtr, x, y, w) ;

			s = sobel(w);

		dstImagePtr->pixels[y][x].r = s ;
		dstImagePtr->pixels[y][x].g = s ;
		dstImagePtr->pixels[y][x].b = s ;
	}

	y = srcImagePtr->height - 1;

	for(x = 0 ; x < srcImagePtr->width ; x++) {
		HALF_WINDOW(srcImagePtr, x, y, w) ;

			s = sobel(w);

		dstImagePtr->pixels[y][x].r = s ;
		dstImagePtr->pixels[y][x].g = s ;
		dstImagePtr->pixels[y][x].b = s ;

	}

	uint64_t kernel_time = timer.nanosecondsSinceInit();
	std::cout << "kernel time = " << ((double)kernel_time) / 1000000000.0 << " s" << std::endl;

	dstImagePtr->saveRgbImage(argv[2], sqrtf(256 * 256 + 256 * 256)) ;

	return 0 ;
}
