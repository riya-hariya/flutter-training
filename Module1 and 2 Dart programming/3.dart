//3. Write a program to make a square and cube of number.
import 'dart:io';
void main() 
{
  //declaring variables
  int num,square,cube;

  //prompt message
  print("Enter a number");
  num = int.parse(stdin.readLineSync()!);

  
  //computation
  //square of number
  square=num*num;
  
  //cube of number
  cube=num*num*num;

  //displaying output
  print("Square=$square");
  print("Cube=$cube");
}