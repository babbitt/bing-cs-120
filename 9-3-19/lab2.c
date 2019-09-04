#include <stdio.h>
int max(int *array, int length) {
 int m = array[0];
 for (int i = 1; i < length; i = i + 1) {
    if (array[i] > m) m = array[i];
 }
 return m;
}

int min(int *array, int length) {
 int m = array[0];
 for (int i = 1; i < length; i = i + 1) {
    if (array[i] < m) m = array[i];
 }
 return m;
}

int total(int *array, int length) {
 int t = array[0];
 for (int i = 1; i < length; i = i + 1) {
    t+=array[i];
 }
 return t;
}

int avg(int *array, int length) {
 int a = total(array,length);
 return a/length;
}

int main() {
 int a[] = {3, 8, 2, 9, 4};
 printf("The maximum is %d\n", max(a, 5));
 printf("The minimum is %d\n", min(a, 5));
 printf("The total is %d\n", total(a, 5));
 printf("The average is %d\n", avg(a, 5));

 
}
