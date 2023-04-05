//4. Write a program to find the Area of Circle.

import 'dart:io';
void main() 
{
  //declaring variables
  int radius;
  double pie=3.14,area;

  //prompt message
  print("Enter the radius of a circle");
  radius = int.parse(stdin.readLineSync()!);

  
  //computation
  //area
  area=pie*radius*radius;

  //displaying output
  print("Area=$area");
}