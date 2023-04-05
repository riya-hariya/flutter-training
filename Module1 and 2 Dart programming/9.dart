//9. Write a Program to show swap of two No's without using third variable.

import 'dart:io';
void main() 
{
  //declaring variables
  int x,y;

  //prompt message
  print("Enter x:");
  x = int.parse(stdin.readLineSync()!);

  print("Enter y:");
  y= int.parse(stdin.readLineSync()!);
  

  //computation
  x=x+y;
  y=x-y;
  x=x-y;

  //displaying output after swapping
  print("After swapping x=$x");
  print("After swapping y=$y");
}