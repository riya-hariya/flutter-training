//h .Write a program to find out the max from given number (E.g. No: -1562 Max number is 6 )

import 'dart:io';
void main()    
{    
    //declaring variables
    double n,max=0,r; 

    //prompt message  
    print("Enter a number: ");    
    n=double.parse(stdin.readLineSync()!);

    //looping    
    while(n!=0){ 
        r=n%10;
        n=n/10;
        if(r>max){
            max=r;
        }
         }  
         int result = max.toInt();
         print("max=$result");      
}   
 