#include<stdio.h>

int linear_search(int arr[9],int target){
   

    for (int i =0;i<9;i++){
        if (arr[i]==target){
            return i;
        }
    }
    return -1;
}


int binary_search(int arr[9],int target){
    int high = 8;
    int low = 0;

    while (low <= high){
        int mid = low + (high - low)/2;
        printf("low = %d, high = %d, mid = %d\n", low, high, mid);
        if (arr[mid] == target){
            return mid;
        }
        else if (arr[mid] < target){
            low = mid + 1;
            printf("Low %d \n",low);
        }
        else{
            high = mid -1;
            printf("high %d \n",high);
        }
    }
    return -1;
}





int main(){

    int arr [] = {3,4,5,6,7,8,9,10,11};
    int target;
    int size = sizeof(arr)/sizeof(arr[0]);
    printf("Enter the number : ");
    scanf("%d",&target);

    int location = linear_search(arr,target);
    if (location == -1) {
    printf("Warning! Target not found.\n");
    }
    else if (location < size / 2) {
        printf("The target is in lower level.\n");
    }
    else if (location > size / 2) {
        printf("The target is in higher level.\n");
    }
    else {
        printf("The target is in mid level.\n");
    }


    int location_b = binary_search(arr,target);
    if (location_b == -1) {
        printf("Binary Search: Target not found.\n");
    }
    else if (location_b < size / 2) {
        printf("Binary Search: Target is in lower level.\n");
    }
    else if (location_b > size / 2) {
        printf("Binary Search: Target is in higher level.\n");
    }
    else {
        printf("Binary Search: Target is in mid level.\n");
    }
    return 0;
    
}