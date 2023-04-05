//11. Write a Program to check the given year is leap year or not.

import 'dart:io';
void main() 
{
  //declaring variables
  int year;

  //prompt message
  print("Enter a year:");
  year = int.parse(stdin.readLineSync()!);

  //check the condition
  if(year%4==0)
  {
    if(year%100==0){
        if(year%400==0){
            print("The year $year is a leap year"); //true statement
        }
    }
    else{
        print("The year $year is a leap year");
    }
  }
  else{
    print("The year $year is not a leap year"); //false statement
  }
  
}

