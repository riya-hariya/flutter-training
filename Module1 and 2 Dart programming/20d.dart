//d .write a program you have to find the factorial of given number.
import 'dart:io';
void main()    
{    
    //declaring variables
    int i,fact=1,number;  

    //prompt message  
    print("Enter a number: ");    
    number=int.parse(stdin.readLineSync()!);

    //looping    
    for(i=1;i<=number;i++){    
        fact=fact*i;    
    }    

    //display output
    print("Factorial of $number is: $fact"); 
}   
 
  