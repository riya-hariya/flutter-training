//16. Write a program user enter the 5 subjects mark. You have to make a total and find the percentage. 
//percentage > 75 you have to print “Distinction” percentage > 60 and percentage <= 75 you have to print “First class” 
//percentage >50 and percentage <= 60 you have to print “Second class” percentage > 35 and percentage <= 50 you have 
//to print “Pass class” Otherwise print “Fail”


import 'dart:io';
void main() 
{
  //declaring variables
  double total,percentage,marks1,marks2,marks3,marks4,marks5;
 

  //prompt message
  print("Enter the marks of 1st subject");
  marks1 = double.parse(stdin.readLineSync()!);

  print("Enter the marks of 2nd subject");
  marks2 = double.parse(stdin.readLineSync()!);

  print("Enter the marks of 3rd subject");
  marks3 = double.parse(stdin.readLineSync()!);

  print("Enter the marks of 4th subject");
  marks4 = double.parse(stdin.readLineSync()!);

  print("Enter the marks of 5th subject");
  marks5 = double.parse(stdin.readLineSync()!);

  //computation
  total = marks1+marks2+marks3+marks4+marks5;
  percentage=(total/500)*100;
  print("Percentage=$percentage");

  //check condition
  if(percentage>75){
    print("Distinction");
  }

  else if(percentage>60 && percentage<=75){
    print("First Class");
  }
  

  else if(percentage>50 && percentage<=60){
    print("Second Class");
    }

  else if(percentage>35 && percentage<=50){
    print("Pass Class");
  }
  
  else{
    print("Fail");
  }
}
