/*2. Write a program to make addition, Subtraction, Multiplication and Division of Two Numbers.*/


import 'dart:io';
void main() 
{
  //declaring variables
  int a,b,c,s,m;
  double d;

  //prompt message
  print("Enter number a:");
  a = int.parse(stdin.readLineSync()!);

  print("Enter number b:");
  b = int.parse(stdin.readLineSync()!);

  //computation
  //addition
  c=a+b;

  //subtraction
  s=a-b;

  //multiplication
  m=a*b;

  //division
  d=a/b;

  //displaying output
  print("Addition=$c");
  print("Subtraction=$s");
  print("Multiplication=$m");
  print("Division=$d");
}

  