#include <stdio.h>
int main() {
    int i,j; 
    for(i=0; i<6; i++){
        for (j=0; j<6; j++){
            printf("%3d", i*j);
        }
        printf("\n");
    }
}