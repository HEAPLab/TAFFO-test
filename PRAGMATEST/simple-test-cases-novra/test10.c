///TAFFO_TEST_ARGS -disable-vra

int main(int argc, char *argv[])
{
  #pragma taffo a main "range 0 3"
  float a = 3;
  #pragma taffo b main "range 0 4"
  float  b = 4;
  float c = a * b;
  printf("%f", c);
  return 0;
}

