//18. Write a Program of Addition, Subtraction ,Multiplication and Division using Switch case.(Must Be Menu Driven)

import 'dart:io';
void main() 
{
    //declaring variables
    int num,a=7,b=9,addition,difference,multiplication;
    double division; 

    //prompt message
    print("Enter number 1 for addition   2 for subtraction   3 for multiplication   4 for division. "); 
    num=int.parse(stdin.readLineSync()!);

    //check condition
    switch(num) 
    { 
        case 1 : 
        addition=a+b;
        print("addition=$addition");
        break; 

        case 2 : 
        difference=a-b;
        print("subtraction=$difference");
        break; 

        case 3: 
        multiplication=a*b;
        print("multiplication=$multiplication");
        break; 

        case 4: 
        division=a/b;
        print("division=$division");
        break; 
       
        default : print("enter correct choice"); 
    }
}