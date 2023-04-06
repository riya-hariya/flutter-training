//Write a program you have to make a summation of first and last Digit. 
import 'dart:io';
void main()    
{    
    //declaring variables
    double n,lastdigit=0,firstdigit=0,sum;

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
      int result = sum.toInt();
      print("sum=$result");
}   