#include <stdio.h>
int main() {
    int sum=0;
    for(int i=0; i<100; i++){
        sum+=i;
    }
    printf("The sum of numbers 1-100 is: %d\n",sum);
}