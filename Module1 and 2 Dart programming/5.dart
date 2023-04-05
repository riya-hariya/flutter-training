//5. Write a program to find the Area of Triangle

import 'dart:io';
void main() 
{
  //declaring variables
  double base,height,area;

  //prompt message
  print("Enter the base of a triangle");
  base = double.parse(stdin.readLineSync()!);
  
  print("Enter the height of a triangle");
  height = double.parse(stdin.readLineSync()!);

  //computation
  //area
  area=(base*height)/2;

  //displaying output
  print("Area=$area");
}