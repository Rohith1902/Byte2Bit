#include<stdio.h>

int sum(int arr[],int size){
    int count = 0;
    for(int i =0 ; i < size ; i++){
        count += arr[i];
    }
    return count;
}

float avg(int arr[],int size){
   int count = 0;
    for(int i =0 ; i < size ; i++){
        count += arr[i];
    }
    return (float)count / size;
}

int main(){
    float average;
    int total;
    int arr[] = {1,2,3,4,5,6,7,8};
    int size = sizeof(arr)/sizeof(arr[0]);

    total = sum(arr,size);
    average = avg(arr,size);
    printf("The sum of the array is %d and average of the array is %.2f ",total,average);
    return 0;
}