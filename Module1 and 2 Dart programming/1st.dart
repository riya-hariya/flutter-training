/*
1. Display This Information using print 
a. Your Name
b. Your Birth date
c. Your Age
d. Your Address
*/

import 'dart:io';
void main() 
{
  //declaring variables
  var name,address,dob;
  int age;

  //prompt message
  print("Enter your Name");
  name = stdin.readLineSync()!;

  print("Enter your Date of Birth");
  dob = stdin.readLineSync()!;

  print("Enter your Age");
  age = int.parse(stdin.readLineSync()!);

  print("Enter your Address");
  address = stdin.readLineSync()!;

  //display output
  print("My name is $name");
  print("My BirthDate is $dob");
  print("My age is $age years");
  print("My address is $address"); 
}