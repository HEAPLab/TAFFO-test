///TAFFO_TEST_ARGS -Xvra -propagate-all


float global;

float test(float param, int notafloat)
{
  int notafloat2;
  #pragma taffo local test "scalar(range(0, 5.0))"
  float local;
  
  local = 2.0;
  local *= param;
  local += notafloat;
  notafloat2 = local;
  return notafloat2;
}

int test2(int a)
{
  return a + 2.0;
}


