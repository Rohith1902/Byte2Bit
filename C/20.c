#include <stdio.h>
#include <stdlib.h>


int sum(int *arr,int n){
    int total = 0;
    int *p = arr;

    for(int i = 0;i<n;i++){
        total = total + *(p+i);
        
    }
    return total;
}

void reverse(int *arr,int n){
    int *p = arr + n - 1;
    for(int i = 0;i < n;i++){
        printf("%d ",*(p-i));
    }
}

int main(void){
    int arr[5] = {10,20,30,40,50};
    int *p = arr;

    printf("*p      = %d \n",*p);
    printf("*p + 1     = %d \n",*(p+1));
    printf("*p + 5     = %d \n",*(p+4));


    printf("========================");
    printf("\nList of elements in the array : ");
    for(int i = 0;i<5;i++){
        printf("%d ",*(p + i));
    }
    
    printf("\n=========================");
    printf("\nThe sum of the elements of the array ");

    printf("Sum = %d\n",sum(arr,5));

    printf("\n=========================");
    printf("\nReverse : ");
    reverse(arr,5);

    printf("\n===========================");
    printf("\nAddresses : ");
    printf("\nAddress of p : %p",(void *)p);
    printf("\nAddress of p + 1  : %p",(void *)(p+1));

    printf("\nThe size of the byte is : %zu",sizeof(int));
    return 0;
}