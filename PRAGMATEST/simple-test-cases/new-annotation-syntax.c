///TAFFO_TEST_ARGS

typedef struct {
  float g;
  int h;
} def;

typedef struct {
  float a;
  int b;
  def c;
} abc;

int main(int argc, char *argv[])
{
  #pragma taffo t1 main "target('test') scalar()"
  float t1 = 123.0;
  #pragma taffo t2 main "backtracking scalar()"
  float t2 = 123.0;
  #pragma taffo t20 main "backtracking(true) scalar()"
  float t20 = 123.0;
  #pragma taffo t21 main "backtracking(yes) scalar()"
  float t21 = 123.0;
  #pragma taffo t22 main "backtracking(false) scalar()"
  float t22 = 123.0;
  #pragma taffo t23 main "backtracking(no) scalar()"
  float t23 = 123.0;
  #pragma taffo t3 main "target('test') backtracking scalar()"
  float t3 = 123.0;
  #pragma taffo t30 main "target('test quote @' quote') scalar()"
  float t30 = 123.0;
  #pragma taffo t31 main "target('test quote @@ quote') scalar()"
  float t31 = 123.0;
  #pragma taffo t4 main "scalar(range(-200, 200))"
  float t4 = 123.0;
  #pragma taffo t5 main "scalar(type(signed 32 8))"
  float t5 = 123.0;
  #pragma taffo t6 main "scalar(error(0.5))"
  float t6 = 123.0;
  #pragma taffo t7 main "scalar(error(0.5) range(-200, 200) type(signed 0x1F 07))"
  float t7 = 123.0;
  #pragma taffo abc "struct[scalar(range(-200, 200)), void, struct[scalar(range(-200, 200)), void]]"
  #pragma taffo t8  "struct[scalar(range(-200, 200)), void, struct[scalar(range(-200, 200)), void]]"
  return 0;
}

