#include <stdio.h>
#include <stdlib.h>

void min_max(int *arr, int n,int *min,int *max){
    *min = *arr;
    *max = *arr;
    for(int i = 0;i<n;i++){
        if(*(arr+i) < *min){
            *min = *(arr+i);
        }
        if (*(arr + i) > *max){
            *max = *(arr+i);
        }
        
    }
}

void swap_ends(int *arr,int n){
    if(n<=1){
        return;
    }
    int temp = *arr;
    *arr = *(arr+n-1);
    *(arr+n-1) = temp;
}


int main(void){
    int lo,hi;
    int arr1[] = {10, 4, 7, 2, 5, 3};
    int arr2[] = {2, 4, 7, 1, 5, 10};
    int arr3[] = {8};
   
   
    min_max(arr1, 6, &lo, &hi);
    printf("Array 1: min = %d, max = %d\n", lo, hi);
    swap_ends(arr1, 6);
    printf("After swap: ");
    for (int i = 0; i < 6; i++)
        printf("%d ", arr1[i]);
    printf("\n\n");

    
    
    min_max(arr2, 6, &lo, &hi);
    printf("Array 2: min = %d, max = %d\n", lo, hi);
    swap_ends(arr2, 6);
    printf("After swap: ");
    for (int i = 0; i < 6; i++)
        printf("%d ", arr2[i]);
    printf("\n\n");


    min_max(arr3, 1, &lo, &hi);
    printf("Array 3: min = %d, max = %d\n", lo, hi);
    swap_ends(arr3, 1);
    printf("After swap: %d\n", arr3[0]);

}