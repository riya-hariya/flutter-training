//f. write a program you have to print the table of given number.
import 'dart:io';
void main()    
{    
    //declaring variables
    int number,i,result;  

    //prompt message  
    print("Enter a number: ");    
    number=int.parse(stdin.readLineSync()!);

    //looping    
    for(i=1;i<=10;i++){    
        result=number*i; 
        print(result);    
    }     
}   
 
  

