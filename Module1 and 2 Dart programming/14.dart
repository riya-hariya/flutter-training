//14. Write a program to find the Max number from the given three number using Ternary Operator

import 'dart:io';
void main() 
{
  //declaring variables
  int a=50,b=30,c=90,max;

  //check the condition
  max= (a>b)?(a>c ? a:c) :(b>c)? b:c;

  //display output
  print("$max is maximum");
   
}