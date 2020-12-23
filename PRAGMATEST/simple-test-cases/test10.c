///TAFFO_TEST_ARGS -Xvra -propagate-all

int main(int argc, char *argv[])
{
  #pragma taffo a main "scalar(range(0, 3))"
  float  a = 3;
  #pragma taffo b main "scalar(range(0, 4))"
  float b = 4;
  float c = a * b;
  printf("%f", c);
  return 0;
}

