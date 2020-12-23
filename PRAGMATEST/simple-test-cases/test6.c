///TAFFO_TEST_ARGS -Xvra -propagate-all

float test(int a)
{
  #pragma taffo c test "scalar(range(-32767, 32767))"
  float c[10];
  #pragma taffo b test "scalar(range(-32767, 32767))"
  float *b = c;
  b[5] = a;
  return b[5];
}


