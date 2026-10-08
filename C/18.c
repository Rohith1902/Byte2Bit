//inserting a node at the end of a linked list
//Still need some clarity in pointers 


#include <stdio.h>
#include <stdlib.h>

struct Node*{
    int val;
    struct Node *next;
};

struct Node* insert_end(struct Node *head,int val){

    struct Node* new_node = malloc(sizeof(struct Node));

    new_node -> data = val;
    new_node -> head = NULL;

    if(head == NULL){
        return new_node;
    }

    struct Node* temp = head;

    while(temp -> next != NULL){
        temp = temp -> next;
    }
    temp -> next = new_node;

    return head;
}

void print_list(struct Node* head){
    struct 
}




