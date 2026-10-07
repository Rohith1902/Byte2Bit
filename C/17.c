//Self Referental Structure


#include <stdio.h>
#include <stdlib.h>

struct Node {
    int data;
    struct Node* next;
};

struct Node* insert_front(struct Node* head, int val){
    struct Node* new_node = malloc(sizeof(struct Node));

    new_node->data = val;
    new_node->next = head;

    return new_node;

}


void print_list(struct Node* head){
    struct Node* current = head;

    while (current != NULL){
        printf("%d ",current->data);
        current = current->next;

    }
    printf("NULL\n");
}

int main(){
    struct Node* head = NULL;

    head = insert_front(head,30);
    head = insert_front(head,20);
    head = insert_front(head,10);

    print_list(head);
}