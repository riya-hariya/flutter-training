//12. Write a Program to check the given number is prime or not prime.

import 'dart:io';
void main() 
{
  //declaring variables
  int num,i,count=0;

  //prompt message
  print("Enter a number:");
  num = int.parse(stdin.readLineSync()!);

  //check the condition
for(i=1;i<=num;i++)
  {
    if(num%i==0)
    {
        count++;
    }
  }
if(count==2)
{
    print("The number $num is prime");
}
else{
    print("The number $num is not prime");
}
  
}