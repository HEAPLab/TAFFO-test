///TAFFO_TEST_ARGS -disable-vra


float global;

float test(float param, int notafloat)
{
  int notafloat2;
  #pragma taffo local test "range -1000000000 1000000000"
  float local;
  
  local = 134217728.0;
  local *= param;
  local += notafloat;
  notafloat2 = local;
  return notafloat2;
}

int test2(int a)
{
  return a + 2.0;
}


