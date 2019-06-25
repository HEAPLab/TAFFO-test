
#include "fourier.hpp"
#include <cmath>
#include <fstream>
#include <map>

void calcFftIndices(int K __attribute((annotate("range 0 4194304 0"))),
		    int* indices __attribute((annotate("0 4194304 0"))))
{
	int __attribute((annotate("range 0 4194304 0"))) i, __attribute((annotate("range 0 4194304 0"))) j;
	int  __attribute((annotate("range 0 4194304 0"))) N;

	N = (int)log2f(K) ;

	indices[0] = 0 ;
	indices[1 << 0] = 1 << (N - (0 + 1)) ;
	for (i = 1; i < N; ++i)
	{
		for(j = (1 << i) ; j < (1 << (i + 1)); ++j)
		{
			indices[j] = indices[j - (1 << i)] + (1 << (N - (i + 1))) ;
		}
	}
}

void radix2DitCooleyTykeyFft(int K __attribute((annotate("range 0 4194304 0"))),
			     int* indices __attribute((annotate("range 0 4194304 0"))),
			     float* x __attribute((annotate("range -167776 167776 0"))),
			     float* f __attribute((annotate("range -167776 167776 0"))))
{
  /* This FFT implementation is bugged
   * x[0] should be < x[all i != 0] because the input is all positive, except it isn't
   * The actual maximum value is the integration of all values times 4 for some reason */
	calcFftIndices(K, indices) ;

	int step ;
	float __attribute((annotate("no_float 2 30 signed 0 1.0 1e-10"))) arg ;
	int eI ;
	int oI ;

	float __attribute((annotate("target:dataOut " ANNOTATION_COMPLEX " -1.0 1.0 0"))) fftSin;
	float __attribute((annotate("target:dataOut " ANNOTATION_COMPLEX " -1.0 1.0 0"))) fftCos;

	float __attribute((annotate("target:t_real " ANNOTATION_COMPLEX " -167776 167776 0"))) t_real;
	float __attribute((annotate("target:t_imag " ANNOTATION_COMPLEX " -167776 167776 0"))) t_imag;
	int i ;
	int __attribute((annotate("range 1 4194304 0"))) N ;
	int j ;
	int __attribute((annotate("range 0 4194304 0"))) k ;
/*
	double __attribute((annotate("range -1.0 1.0"))) dataIn[1];
	double __attribute((annotate("target:dataOut range -1.0 1.0"))) dataOut[2];
*/
	for(i = 0, N = 1 << (i + 1); N <= K ; i++, N = 1 << (i + 1))
	{
		for(j = 0 ; j < K ; j += N)
		{
			step = N >> 1 ;
			for(k = 0; k < step ; k++)
			{
				arg = (float)k / N ;
				eI = j + k ; 
				oI = j + step + k ;
/*
				dataIn[0] = arg;

#pragma parrot(input, "fft", [1]dataIn)
*/
				fftSinCos(arg, &fftSin, &fftCos);
/*
				dataOut[0] = fftSin;
				dataOut[1] = fftCos;

#pragma parrot(output, "fft", [2]<0.0; 2.0>dataOut)

				fftSin = dataOut[0];
				fftCos = dataOut[1];
*/

				// Non-approximate
				t_real = COMPLEX_REAL(x,indices[eI]);
				t_imag = COMPLEX_IMAG(x,indices[eI]);
				COMPLEX_REAL(x,indices[eI]) = t_real + (COMPLEX_REAL(x,indices[oI]) * fftCos - COMPLEX_IMAG(x,indices[eI]) * fftSin);
                COMPLEX_IMAG(x,indices[eI]) = t_imag + (COMPLEX_IMAG(x,indices[eI]) * fftCos + COMPLEX_REAL(x,indices[oI]) * fftSin);

                COMPLEX_REAL(x,indices[oI]) = t_real - (COMPLEX_REAL(x,indices[oI]) * fftCos - COMPLEX_IMAG(x,indices[eI]) * fftSin);
                COMPLEX_IMAG(x,indices[eI]) = t_imag - (COMPLEX_IMAG(x,indices[eI]) * fftCos + COMPLEX_REAL(x,indices[oI]) * fftSin);
			}
			
			//printf("%f, %f, %f\n", arg, t_real, t_imag);
		}
	}

	for (int i = 0 ; i < K ; i++)
	{
		f[i] = x[indices[i]] ;
	}
}
