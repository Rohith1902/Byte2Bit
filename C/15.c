#include<stdio.h>
#define N 5 



void enqueue(int queue[],int *front,int *rear,int x){
    if(*rear == N-1){
        printf("Queue is full");
    }
    else if(*front == -1 && *rear == -1) {
        *front = *rear = 0;
        queue[*rear] = x;
    }
    else{
        *rear = *rear+1;
        queue[*rear] = x;    
    }
}

void dequeue(int queue[],int *front,int *rear){
    if(*rear == -1 && *front == -1 ){
        printf("Queue is empty");
    }
    else if (*front == *rear){
        printf("The dequeud element is : %d\n",queue[*front]);
        *front = *rear = -1;
    }
    else{
        printf("The dequeud element is : %d\n",queue[*front]);
        (*front)++;
    }
}

void display(int queue[],int *front,int *rear){
    if(*front == -1 && *rear == -1){
        printf("Queue is empty");
    }
    else{
        for(int i = *front;i<*rear+1;i++){
            printf("%d ",queue[i]);
        }
        printf("\n");
    }
}

void peek(int queue[],int *front,int *rear){
    if(*front == -1 && *rear == -1){
        printf("Queue is empty");
    }
    else{
        printf("%d ",queue[*front]);
    }
}

int main(){
    int queue[5];
    int front = -1;
    int rear = -1;

    enqueue(queue, &front, &rear, 10);
    enqueue(queue, &front, &rear, 20);
    enqueue(queue, &front, &rear, 30);
    display(queue, &front, &rear);
    peek(queue, &front, &rear);
    dequeue(queue, &front, &rear);
    display(queue, &front, &rear);
}