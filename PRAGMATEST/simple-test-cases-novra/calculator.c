///TAFFO_TEST_ARGS -disable-vra
#include <stdio.h>


#define DO(op) { \
  _Pragma("taffo tmp1 main \"range -3000 +3000\"") \
  float tmp1; \
  _Pragma("taffo tmp2 main \"range -3000 +3000\"") \
  float tmp2; \
  tmp2 = stack[--sp]; \
  tmp1 = stack[--sp]; \
  stack[sp++] = tmp1 op tmp2; \
}


int main(int argc, char *argv[])
{
  float tmp;
  char buffer[256];
  #pragma taffo stack main "range -3000 +3000"
  float stack[32];
  int sp = 0;
  
  while (1) {
    scanf("%s", buffer);
    int n = sscanf(buffer, "%f", &tmp);
    if (n == 1) {
      stack[sp++] = tmp;
    } else {
      switch (buffer[0]) {
        case '+':
          DO(+);
          break;
        case '-':
          DO(-);
          break;
        case '*':
          DO(*);
          break;
        case '/':
          DO(/);
          break;
          /*
        case '%':
          stack[sp-2] = stack[sp-1] % stack[sp-2];
          sp--;
          break;*/
        case '=':
          printf("%f\n", stack[--sp]);
          break;
        case 'q':
          return 0;
      }
    }
  }
  return 0;
}

