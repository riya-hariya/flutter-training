//i. Write a program make a summation of given number(E.g. 1523 ans :-11)

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
      print(sum);
}   
 
