///TAFFO_TEST_ARGS -Xvra -propagate-all
int main()
{
    float out;
    #pragma taffo a main "scalar(range(-3000, 3000) final)"
    #pragma taffo b main "scalar(range(-3000, 3000) final)"
    float a=10;
    float b;
    
    #pragma taffo c main "scalar(range(-255, 255) final)"
    #pragma taffo d main "scalar(range(-255, 255) final)"
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
