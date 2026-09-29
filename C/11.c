#include<stdio.h>

void selecion_sort(int arr[8],int size){
    int i;
    int j;
    for( i =0;i< size -1 ;i++){
        int min = i;
        for( j = i+1;j<size;j++){
            if(arr[j]<arr[min]){
                min = j;
            }
        }
        if(min!=i){
            int temp = arr[i];
            arr[i] = arr[min];
            arr[min] = temp;
        }
    }
    for (int i =0;i<size;i++){
        printf("%d ",arr[i]);
    }
    printf("\n\n");

}

int main(){

    int arr[] = {8,7,6,5,4,3,2,1};
    int size = sizeof(arr)/sizeof(arr[0]);

    
    
    
    for (int i =0;i<size;i++){
        printf("%d ",arr[i]);
    }
    printf("\n\n");
    selecion_sort(arr,size);
   

    return 0;
}