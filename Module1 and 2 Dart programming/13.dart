//13. Write a program to find the Max number from the given three number using Nested If

import 'dart:io';
void main() 
{
  //declaring variables
  int a=25,b=20,c=2;

  //check the condition
  if(a>b)
  {
    if(a>c)
    {
        print("a is max");
    }  
  }
  else if(b>c){
    print("b is max");
  }
  else{
    print("c is max");
  }
}