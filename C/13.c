#include<stdio.h>

void merge(int arr[],int lb , int mid,int ub){

    int i = lb;
    int j = mid + 1;
    int k = 0;
    int temp[ub - lb + 1];
    while(i <= mid && j <= ub){
        if(arr[i] <= arr[j]){
            temp[k] = arr[i];
            i++;
        }
        else{
            temp[k] = arr[j];
            j++;
        }
        k++;
    }

    if(i>mid){
        while(j<=ub){
            temp[k]=arr[j];
            j++;
            k++;
        }
    }
    else{
        while(i<=mid){
            temp[k] = arr[i];
            i++;
            k++;
        }
    }
    for(i = lb,k = 0;i<=ub;i++,k++){
        arr[i] = temp[k];
    }
    /*printf("\nTHE REAL ARRAY\n");
    for (int i =0;i<8;i++){
        printf("%d",arr[i]);
    }
    printf("\nTHE TEMP ARRAY\n");
    for (int i =0;i<8;i++){
        printf("%d",temp[i]);
    }
    
    printf("\nTHE REAL SORTED ARRAY\n");
    for (int i =0;i<8;i++){
        printf("%d",arr[i]);
    }
    printf("\n\n");*/
}





void merged_sort(int arr[], int lb,int ub){

    if (lb<ub){
        int mid = (lb+ub)/2;

        merged_sort(arr,lb,mid);
        merged_sort(arr,mid+1,ub);

        merge(arr,lb,mid,ub);
    }

}






int main(){

    int arr[] = {2,3,4,1,5,7,6,0};
    int size = sizeof(arr)/sizeof(arr[0]);

    printf("\nTHE REAL UNSORTED ARRAY\n");
    for (int i =0;i<8;i++){
        printf("%d",arr[i]);
    }

    merged_sort(arr,0,size-1);

    printf("\nTHE REAL SORTED ARRAY\n");
    for (int i =0;i<8;i++){
        printf("%d",arr[i]);
    }
    printf("\n\n");

}