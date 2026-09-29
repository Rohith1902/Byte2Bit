#include<stdio.h>

// reverse
void rev(int arr[],int rvrr[],int size){
    int j = 0;
    for (int i = size -1 ; i >= 0; i--){
        rvrr[j] = arr[i];
        j++;
    }
}
void read(int rvrr[],int size){
    for (int i = 0 ; i < size ; i++){
        printf("%d\n",rvrr[i]);
    }
}
int main(){
    int rvrr[8];
    int arr[] = {1, 2, 3, 4, 5, 6, 7, 8};
    int size = sizeof(arr) / sizeof(arr[0]);

    rev(arr, rvrr, size);
    read(rvrr, size);
    return 0;
}