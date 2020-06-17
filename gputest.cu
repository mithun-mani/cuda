#include <stdio.h>
/*int main() {
    printf("Hello World from GPU!\n");
}
*/
__global__
void printer (){
    printf("Hello World from GPU\n");
}
int main(void) {
    printer<<<1,1>>>();
}
