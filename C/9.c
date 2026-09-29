#include<stdio.h>



int linear_search(int arr[8],int target,int length){
    for(int i = 0;i<length;i++){
        if (i == target){
            return i;
        }
    
    }
    return -1;
}



int main(){
    int target;
    int arr [] = {1,2,3,4,5,6,7,8};
    printf("Enter the target to found : ");
    scanf("%d",&target);
    int length = sizeof(arr)/sizeof(arr[0]);

    int result = linear_search(arr,target,length);

    if(result != -1){
        printf("The target is founded int the index %d \n",result);
    }
    else{
        printf("The target is not found \n");
    }
    return 0;
}