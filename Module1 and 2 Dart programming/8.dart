//8. Write a program to calculate sum of 5 subjects & find the percentage. Subject marks entered by user.

import 'dart:io';
void main() 
{
  //declaring variables
  int marks1,marks2,marks3,marks4,marks5;
  double percentage;

  //prompt message
  print("Enter the marks of 1st subject");
  marks1 = int.parse(stdin.readLineSync()!);

  print("Enter the marks of 2nd subject");
  marks2 = int.parse(stdin.readLineSync()!);

  print("Enter the marks of 3rd subject");
  marks3 = int.parse(stdin.readLineSync()!);

  print("Enter the marks of 4th subject");
  marks4 = int.parse(stdin.readLineSync()!);

  print("Enter the marks of 5th subject");
  marks5 = int.parse(stdin.readLineSync()!);

  //computation
  percentage=((marks1+marks2+marks3+marks4+marks5)/500)*100;

  //displaying output
  print("percentage=$percentage");
}