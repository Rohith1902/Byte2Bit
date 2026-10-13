#include <stdio.h>
#include <stdlib.h>

int my_strlen(char *s){
    int count = 0;
    while (*s != '\0'){
        count++;
        s++;
    }
    return count;
}

void print_chars(char *p){
    while (*p !='\0'){
        printf("%c\n",*p);
        p++;
    }
}

void to_upper(char *s){
    while(*s != '\0'){
        if(*s >= 'a' && *s <= 'z'){
            *s = *s - ('a' - 'A');
            
        }
        s++;
    }
    
    
    
}

int main(void){
    char s[] = "hello";
    

    char *p = s;

    printf("Value of *p is : %c\n",*p);
    printf("Value of *(p+1) : %c\n",*(p+1));
    printf("The length of the string is : %d\n",my_strlen(s));
    print_chars(s);
    to_upper(s);
    printf("The uppercase of the string is : %s\n",s);
    return 0;
}