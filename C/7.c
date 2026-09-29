#include<stdio.h>

int main(){

    int arr[] = {1,3,4,2,6,5,8,9};

    int length = sizeof(arr) / sizeof(arr[0]);

    for(int i = 0; i<(length);i++)
    {
        for(int j = 0;j<(length -1);j++)
        {
            if(arr[j]>arr[j+1])
            {
                int temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }

    for(int i =0;i<length;i++){
        printf("%d \n",arr[i]);
    }
}