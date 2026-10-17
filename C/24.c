//dynamic memory with malloc and free

#include <stdio.h>
#include <stdlib.h>

int *make_arry(int n){

    int *arr = malloc(n*sizeof(int));

    if(arr == NULL){
        return NULL;
    }
    for(int i = 1;i<n+1;i++){
            arr[i] = i * 1;
            printf("%d ",*(arr+i));
    }
    return arr;
}

 
int main(void){
    int n = 5;
    

    
    int *arr = malloc(n * sizeof(int));
    if (arr == NULL) {
        printf("Allocation failed\n");
        return 1;
    }

    for (int i = 0; i < n; i++) {
        arr[i] = i * 10;
    }

    for (int i = 0; i < n; i++) {
        printf("%d ", *(arr + i));
    }
    printf("\n");

    free(arr);
    arr = NULL;

    
    
    
    
    int *arr2 = make_arry(n);
    if (arr2 == NULL){
        printf("Allocation failed");
        return 1;
    }
    for(int i = 0;i<n;i++){
        arr2[i] = i* 10;
    }
    free(arr2);
    arr2 = NULL;
}