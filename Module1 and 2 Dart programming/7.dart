//7. Write a program to convert temperature from degree centigrade to Fahrenheit.

import 'dart:io';
void main() 
{
  //declaring variables
  double celsius,Fahrenheit;


  //prompt message
  print("Enter the centigrade degree you want to convert ");
  celsius = double.parse(stdin.readLineSync()!);
  
  //computation
  //converting to fahrenheit
  Fahrenheit=(celsius*(9/5))+32;

  //displaying output
  print("Converted Fahrenheit=$Fahrenheit F");
}