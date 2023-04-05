//6. Write a program to find the simple Interest.

import 'dart:io';
void main() 
{
  //declaring variables
  double rate,si;
  int pa,years;

  //prompt message
  print("Enter the principal amount");
  pa = int.parse(stdin.readLineSync()!);
  
  print("Enter the rate of interest");
  rate = double.parse(stdin.readLineSync()!);

  print("Enter the number of years");
  years = int.parse(stdin.readLineSync()!);
  
  //computation
  //simple interest
  si=(pa*rate*years)/100;

  //displaying output
  print("Simple Interest=$si rupees");
}