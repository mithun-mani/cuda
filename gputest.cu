#include <iostream>
#include <math.h>
using namespace std;

__global__
void add (float *x){
    x = 12;
    cout << x;
}
int main(void) {

    float *x;

    cudaMallocManaged(&x,sizeof(float));

    add<<<1,1>>>(x);
    

    cudaDeviceSynchronize();

    cudaFree(x);
    cudaFree(y);

    return 0;
}
