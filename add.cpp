#include <iostream>
#include <math.h>
using namespace std;

void add (int n, float *x, float *y){
    for (int i = 0; i < n; i++){
        y[i] = x[i] + y[i];
    }
}
int main(void) {
    int N = 1000000;

    float *x = new float[N];
    float *y = new float[N];

    for (int i = 0; i < N; i++){
        x[i] = 1.0f;
        y[i] = 1.0f;
    }

    add(N,x,y);

    delete []x;
    delete []y;

    return 0;

}
