/*#include <stdio.h>
int main() {
    printf("Hello World from GPU!\n");
}

__global__
void printer (){
    printf("Hello World from GPU\n");
}
int main() {
    printer<<<1,1>>>();
    return 0;
}
*/
#include<stdio.h>
#include<stdlib.h>

__global__ void print_from_gpu(void) {
    printf("Hello World! from thread [%d,%d] \
        From device\n", threadIdx.x,blockIdx.x);
}

int main(void) {
    printf("Hello World from host!\n");
    print_from_gpu<<<1,1>>>();
    cudaDeviceSynchronize();
    return 0;
}
