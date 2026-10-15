#include <stdio.h>
#include <stdlib.h>

int my_strlen(char *s){
    int len = 0;
    while (s[len] != '\0'){
        len++;
    }
    return len;
}
void reverse_string(char *s){
    char *start = s;
    char *end = s + my_strlen(s) - 1;

    while(start < end){
        char temp = *start;
        *start = *end;
        *end = temp;  //abcd   dcba   dcba
        start++;
        end--;
    }
    
}
int main(void){
    char str_1[] ="Hello";
    char str_2[] ="abcd";
    printf("\nString 1 : %s",str_1);
    printf("\nString 1 : %s",str_2);
    reverse_string(str_1);
    reverse_string(str_2);
    printf("\nString 1 after reverse : %s",str_1);
    printf("\nString 2 after reverse : %s\n",str_2);
}