/*
 * rgb_image.cpp
 * 
 * Created on: Sep 9, 2013
 * 			Author: Amir Yazdanbakhsh <a.yazdanbakhsh@gatech.edu>
 */

#include "rgb_image.hpp"
#include <cstdlib>

void Image::printPixel(int x, int y)
{
	std::cout << "# Red: 	" << this->getPixel_r(x, y) << std::endl;
	std::cout << "# Green: 	" << this->getPixel_g(x, y) << std::endl;
	std::cout << "# Blue: 	" << this->getPixel_b(x, y) << std::endl; 
}


const char *readInt(const char *line, int *out)
{
  while (*line != '\0') {
    if ('0' <= *line && *line <= '9') {
      char *end;
      *out = strtol(line, &end, 0);
      return end;
    } else {
      line++;
    }
  }
  return nullptr;
}


void tokenize(std::vector<int>& out, std::string& line)
{
  const char *str = line.c_str();
  int v;
  str = readInt(str, &v);
  while (str) {
    out.push_back(v);
    str = readInt(str, &v);
  }
}


int Image::loadRgbImage(std::string filename)
{
	std::ifstream imageFile ;

	if(DEBUG)
		std::cout << "# Loading " << filename << " ..." << std::endl ;

	imageFile.open(filename.c_str()) ;
	if(! imageFile.is_open())
	{
		std::cerr << "# Error openning the file!" << std::endl ;
		return 0 ;
	}

	// Read first line and split based on the , and any spaces before or after
	std::string line ;
	std::getline(imageFile, line) ;
	std::vector<int> imageInfo ;
	tokenize(imageInfo, line);
	this->width  = imageInfo[0];
	this->height = imageInfo[1];

	if(DEBUG)
	{
		std::cout << "# Width:  " << IMAGE_WIDTH(this) ;
		std::cout << "# Height: " << IMAGE_HEIGHT(this) << std::endl ;
	} 

  this->_pixels = (void*)malloc(IMAGE_HEIGHT(this) * (IMAGE_WIDTH(this) * 3) * sizeof(float));

	// We assume there is a newline after each row
	for (int h = 0 ; h < IMAGE_HEIGHT(this); h++)
	{
		std::getline(imageFile, line) ;
		std::vector<int> currRowString;
		tokenize(currRowString, line);

		for(int w = 0 ; w < IMAGE_WIDTH(this); w++)
		{
			int index = w * 3 ;
			float r = currRowString[index++];
			float g = currRowString[index++];
			float b = currRowString[index++];
			// Add pixel to the current row
			putPixel_r(w, h, r);
			putPixel_g(w, h, g);
			putPixel_b(w, h, b);
		}
	}

	std::getline(imageFile, line) ;
	this->meta = line ;
	return 1 ;
}

#pragma taffo Image::saveRgbImage "scalar()"
int Image::saveRgbImage(std::string outFilename, float scale) 
{
	#pragma taffo scale Image::saveRgbImage "range -1024 1024"
	if(DEBUG)
	{
		std::cout << "# Saving into " << outFilename << " ..." << std::endl ;
	}

	std::ofstream outFile ;
	outFile.open(outFilename.c_str()) ;

	outFile << IMAGE_WIDTH(this) << "," << IMAGE_HEIGHT(this) << std::endl ;

	for(int h = 0 ; h < IMAGE_HEIGHT(this); h++)
	{
		for(int w = 0 ; w < (IMAGE_WIDTH(this) - 1); w++)
		{
			// Write Red
			int red   = (int)(this->getPixel_r(w, h) * scale) ;
			int green = (int)(this->getPixel_g(w, h) * scale) ;
			int blue  = (int)(this->getPixel_b(w, h) * scale) ;

			//if ( red > 255 )
		//		red = 255 ;
		//	if ( green > 255 )
		//		green = 255 ;
		///	if ( blue > 255 )
			//	blue = 255 ;
			outFile << red << "," ;
			// Write Green
			outFile << green << "," ;
			// Write Blue
			outFile << blue << "," ;
			
		}

		int red   = (int)(this->getPixel_r(IMAGE_WIDTH(this) - 1, h) * scale) ;
		int green = (int)(this->getPixel_g(IMAGE_WIDTH(this) - 1, h) * scale);
		int blue  = (int)(this->getPixel_b(IMAGE_WIDTH(this) - 1, h) * scale) ;


		// Write Red
		outFile << red  << "," ;
		// Write Green
		outFile << green << "," ;
		// Write Blue
		outFile << blue << std::endl ;
	}

	// Print the meta information
	outFile << this->meta ;
	outFile.close() ;
	return 1 ;
}

void Image::makeGrayscale()
{

	#pragma taffo luminance Image::makeGrayscale "range -1024 1024"
	float luminance ;

	#pragma taffo rC Image::makeGrayscale "range -511 511"
	float rC = 0.30 / 256.0 ;
	#pragma taffo gC Image::makeGrayscale "range -511 511"
	float gC = 0.59 / 256.0 ;
	#pragma taffo bC Image::makeGrayscale "range -511 511"
	float bC = 0.11 / 256.0 ;

	for(int h = 0 ; h < IMAGE_HEIGHT(this) ; h++)
	{
		for(int w = 0 ; w < IMAGE_WIDTH(this); w++)
		{
			luminance = ( rC * this->getPixel_b(w, h) ) + 
						( gC * this->getPixel_g(w, h) ) + 
						( bC * this->getPixel_b(w, h) ) ;

			this->putPixel_r(w, h, luminance) ;
			this->putPixel_g(w, h, luminance) ; 
			this->putPixel_b(w, h, luminance) ; 
		}
	}
}
