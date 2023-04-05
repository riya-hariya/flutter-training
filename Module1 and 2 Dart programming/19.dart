//19. Write a program of to find out the Area of Triangle, Rectangle and Circle using If Condition.(Must Be Menu Driven)

import 'dart:io';
void main() 
{
  //declaring variables
  int num;
  double base,height,areaOfTriangle,width,length,areaOfRectangle,pie=3.14,radius,areaOfCircle;

  //prompt message
  print("Enter number 1 for area of triangle  2 for Area of rectangle and 3 for area of circle");
  num = int.parse(stdin.readLineSync()!);

  
  //computation
  if(num==1){
    print("Enter base of triangle:");
    base = double.parse(stdin.readLineSync()!);

    print("Enter height of triangle:");
    height = double.parse(stdin.readLineSync()!);

    areaOfTriangle = (base*height)/2;
    print("Area=$areaOfTriangle");
  }

 else if(num==2){
    print("Enter width of rectangle:");
    width = double.parse(stdin.readLineSync()!);

    print("Enter length of triangle:");
    length = double.parse(stdin.readLineSync()!);

    areaOfRectangle = 2*(width+length);
    print("Area=$areaOfRectangle");
 }

else if(num==3){
    print("Enter the radius of a circle");
    radius = double.parse(stdin.readLineSync()!);

  areaOfCircle=pie*radius*radius;
  print("Area=$areaOfCircle");
}
else{
    print("enter valid number");
    } 
}

