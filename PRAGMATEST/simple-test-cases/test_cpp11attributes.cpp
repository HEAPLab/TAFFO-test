///TAFFO_TEST_ARGS -disable-vra

//expected to fail at the moment
#pragma taffo oven "range -3000 3000"
float oven (int stuff, int baked, float cherry) 
{
  #pragma taffo stuff oven "range -3000 3000"
  #pragma taffo cake oven "range -3000 3000"
  float cake  = baked + stuff;
  return cake + cherry;
}


