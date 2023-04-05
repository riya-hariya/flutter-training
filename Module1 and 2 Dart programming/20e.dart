//e. Write a program you have to print the Fibonacci series up to user given number
import 'dart:io';
void main()    
{    
    //declaring variables
    int n1=0,n2=1,n3,i,num;  

    //prompt message  
    print("Enter the number of elements you want to display: ");    
    num=int.parse(stdin.readLineSync()!);

    print(n1);
    print(n2);

    //looping    
    for(i=2;i<=num;i++){ 
        n3=n1+n2;
        print(n3);
        n1=n2;
        n2=n3;   
          
    }    
}   
 
  