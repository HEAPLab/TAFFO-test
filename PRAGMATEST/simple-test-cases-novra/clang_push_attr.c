///TAFFO_TEST_ARGS -disable-vra
int main()
{
    float out;
    #pragma taffo a main "range -3000 3000"
    #pragma taffo b main "range -3000 3000"
    float a=10;
    float b;


    #pragma taffo c main "range -255 255"
    #pragma taffo d main "range -255 255"
    float c = 2.1024;
    float d;
    
    b = a * 0.21024;
    b /= 2;
    c /= 2;
    d = b + c;
    
    out = d;
    printf("%f\n",out);
    
    return 0;
}
