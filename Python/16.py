"""Define a Student class with __init__(self, name, age, marks), create 3 Student objects, and write print_student(s) 
that prints the fields. Same goal — just comfort with classes/objects before adding .next pointers."""


class Student():
    def __init__(self,name,age,marks):
        self.name = name
        self.age = age
        self.marks = marks

    def print_student(self):
        print("Name : ",self.name)
        print("Age : ",self.age)
        print("Marks : ",self.marks)

s1 = Student("Ravi",14,74)
s2 = Student("Arun", 15, 82)
s3 = Student("Kumar", 14, 91)

s1.print_student()
s2.print_student()
s3.print_student()