//g. Write a program to print the number in reverse order.

import 'dart:io';
void main()    
{    
    //declaring variables
    double n,r,sum=0; 

    //prompt message  
    print("Enter a number: ");    
    n=double.parse(stdin.readLineSync()!);

    //looping    
    while(n!=0){    
        r=n%10; 
        sum=sum*10+r;
        n=n/10;    
    } 
    print("Reverse number is $sum");   
}   
 