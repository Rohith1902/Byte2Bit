#include<stdio.h>

int targ_count(int arr[],int size,int target){
    int count = 0;

    for(int i =0;i<size;i++){
        if(arr[i] == target){
            count += 1;
        }
    }
    return count;
}
    

int main(){
    int target;
    int arr[] = {1,2,3,4,55,6,7,3};
    int size = sizeof(arr)/sizeof(arr[0]);
    printf("Enter the target to be found : ");
    scanf("%d",&target);
    printf("The number of time %d is counted is %d ",target,targ_count(arr,size,target));
}