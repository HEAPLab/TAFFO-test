///TAFFO_TEST_ARGS -disable-vra

int main(int argc, char *argv[])
{
  #pragma taffo a main "scalar(disabled)"
  int a;
  #pragma taffo b main "scalar(range(-1,1))"
  float b;
  a = 1;
  b = 2;
  printf("%f\n", a/(b*2.0));
  printf("%f\n", (b*2.0)/a);
  return 0;
}


