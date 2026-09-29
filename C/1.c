#include<stdio.h>

int count(int arr[] , int size){

    int count = 0;
    for(int i = 0;i < size; i++){
        if (arr[i]%2==0){
            count += 1;
        }
    }
    return count;
}


int main(){

    int arr[] = {10,20,13,17,5,8,33,9};
    int size = sizeof(arr)/sizeof(arr[0]);

    printf("Number of elemnts which are even is : %d ",count(arr,size));

    return 0;
}
