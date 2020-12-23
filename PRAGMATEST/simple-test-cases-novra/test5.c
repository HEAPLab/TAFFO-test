///TAFFO_TEST_ARGS -disable-vra

#pragma taffo a fpextfptrunc "range -32767 32767"
#pragma taffo b fpextfptrunc "range -32767 32767"
float fpextfptrunc( float a, double b)
{
  #pragma taffo fpextfptrunc "range -32767 32767"
  double c = 123.0;
  c += a;
  return (float)c + b;
}

