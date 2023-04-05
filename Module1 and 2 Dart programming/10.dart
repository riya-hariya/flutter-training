//10. Write a Program to check the given number is Positive, Negative.

import 'dart:io';
void main() 
{
  //declaring variables
  int num;

  //prompt message
  print("Enter a number:");
  num = int.parse(stdin.readLineSync()!);

  //check the condition
  if(num>0)
  {
    print("Number is positive");
  }
  else{
    print("Number is negative");
  }
  
}