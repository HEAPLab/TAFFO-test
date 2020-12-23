///TAFFO_TEST_ARGS -Xvra -propagate-all

float oven(int stuff, int baked, float cherry)
{
  #pragma taffo cake oven "scalar(range(-32767, 32767))"
  float cake = baked + stuff;
  return cake + cherry;
}


