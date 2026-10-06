/*Define struct Student { char name[20]; int age; float marks; };. Create 3 struct Student variables (no pointers, no next yet), fill in their fields, and write a function void print_student(struct Student s) that prints all three fields. This is purely about getting comfortable with . field access and passing structs to functions.*/


#include <stdio.h>
#include <stdlib.h>

struct student{
    char name[20];
    int age;
    float marks;
};

void print_student(struct student s){
    printf("Name : %s\n",s.name);
    printf("Age :  %d\n",s.age);
    printf("Marks : %.2f\n",s.marks);
}

int main(){
    struct student s1 = {"Ravi", 20, 85.5};
    struct student s2 = {"Arun", 21, 78.5};
    struct student s3 = {"Kumar", 20, 91.0};

    print_student(s1);
    print_student(s2);
    print_student(s3);


    return 0;
}