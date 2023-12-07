//Accept 2 numbers and find out its sum check it size
import 'dart:io';

void main(){   
  double num1,num2,sum;
  
  print("Enter first and second number: ");
  num1 = double.parse(stdin.readLineSync()!);
  num2 = double.parse(stdin.readLineSync()!);

  sum=num1+num2;
  print("sum=$sum");  

}