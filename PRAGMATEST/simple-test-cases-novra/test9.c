///TAFFO_TEST_ARGS -disable-vra

float oven(int stuff, int baked, float cherry)
{
  #pragma taffo cake oven "range -32767 32767"
  float cake = baked + stuff;
  return cake + cherry;
}


