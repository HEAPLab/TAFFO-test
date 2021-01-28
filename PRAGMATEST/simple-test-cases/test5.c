///TAFFO_TEST_ARGS -Xvra -propagate-all


float fpextfptrunc( float a,  double b){

  //function parameters attributes
  #pragma taffo a fpextfptrunc "scalar(range(-32767, 32767))"
  #pragma taffo b fpextfptrunc "scalar(range(-32767, 32767))"
  #pragma taffo c fpextfptrunc "scalar(range(-32767, 32767))"

	
  double c = 123.0;
  c += a;
  return (float)c + b;
}

