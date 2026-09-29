#include<stdio.h>



int coun(int arr[],int size){
    int fir = arr[0];
    int sec = arr[0];
    for (int i=0;i<size;i++){
        if(arr[i]>fir){
            sec = fir;
            fir = arr[i];
        }
        else if(arr[i]>sec && arr[i]!= fir){
            sec = arr[i];
        }
    }
    return sec;

}
int main(){
    int arr[] = {1,2,3,4,51,6,7,8};
    int count;
    int size = sizeof(arr)/sizeof(arr[0]);

    count = coun(arr,size);

    printf("The second largest  number is %d ",count);

}