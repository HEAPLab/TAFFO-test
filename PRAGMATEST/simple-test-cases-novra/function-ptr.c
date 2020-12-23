///TAFFO_TEST_ARGS -disable-vra
#pragma taffo global "range -540000000000 540000000000"
float global = 3.333;

float** fun(float **x, float *y){
    float local;
    local = **x * *y + global;
    **x = 4.9876;
    printf("%f\n",local);
    return x;
}

int main() {
    #pragma taffo a main "range -13500000000 13500000000"
    float  *a;
    
    #pragma taffo b main "range -13500000000 13500000000"
    float  b = 10.10;
    float c = 2.2;
    
    a=&b; //TODO  bug if i42* != i42* 
    
    #pragma taffo k main "range -13500000000 13500000000"
    float**  k;
    
    #pragma taffo mall main "range -20000000 20000000"
    float* mall =  (float*)malloc(5 * (sizeof(float)+1));
    
    mall[0] = 0.1;
    *(mall+1) = 1.1;
    mall[2] = 2.2;
    
    for (int i=0;i<3;i++)
         printf("%f\n",*(mall+i));
    
    for (int i=0;i<5;i++)
        mall[i] = (float) (i) / (float) (i+1);
    
    for (int i=0;i<5;i++)
         printf("%f\n",mall[i]);
    
    printf("%f\n",*a);
    k = fun(&a,&b); //TODO  bug if i42** != float**
    printf("%f\n",*a);
    printf("%f\n",**k);
    
    
    printf("-------------------\n");
    return 0;
}
