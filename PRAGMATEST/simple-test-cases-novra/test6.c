///TAFFO_TEST_ARGS -disable-vra

float test(int a)
{
  #pragma taffo c test "range -32767 32767"
  float c[10];
  #pragma taffo b test "range -32767 32767"
  float *b = c;
  b[5] = a;
  return b[5];
}


