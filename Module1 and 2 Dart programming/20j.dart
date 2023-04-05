//Write a program you have to make a summation of first and last Digit. 
import 'dart:io';
void main()    
{    
    //declaring variables
    int lastdigit=0,firstdigit,sum;
    double n;

    //prompt message  
    print("Enter a number: ");    
    n=double.parse(stdin.readLineSync()!);
    lastdigit=n%10;

    //looping    
    while(n>=10){ 
        n=n/10;
    }
      firstdigit=n;
      sum=firstdigit+lastdigit;
      print("sum=$sum");
}   