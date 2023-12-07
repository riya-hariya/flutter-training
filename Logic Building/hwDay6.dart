//make 4 functions 1)add 2)subtract 3)multiply 4)divide

import 'dart:io';
void main()    
{    

    //function calling
    addition();  
    subtraction();
    multiplication();
    division();
}

//function definition   
void addition()
{
    double c,a=20,b=6;
    c=a+b;
    print("addition=$c");
}

void subtraction()
{
    double c,a=20,b=6;
    c=a-b;
    print("subtraction=$c");
}

void multiplication()
{ 
    double c,a=20,b=6;
    c=a*b;
    print("multiplication=$c");
}         

 void division()
{
    int a=20,b=6;
    double c;
    c=a/b;
    print("division=$c");
}         
 