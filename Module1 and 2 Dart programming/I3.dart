/*I3. Write a program which will ask the user to enter his/her marks (out of 100). Define a method that will display grades according to the marks entered as below:
Marks Grade
91-100 AA 81-90 AB
71-80 BB
61-70 BC 51-60 CD 41-50 DD <=40 Fail
*/
import 'dart:io';

void main(){
    int marks;
    print("Enter marks");
    marks=int.parse(stdin.readLineSync()!);
    if(marks>90 && marks<=100){
        print("Grade is AA");
    }
    else if(marks>80 && marks<=90){
        print("Grade is AB");
    }
    else if(marks>70 && marks<=80){
        print("Grade is BB");
    }
    else if(marks>60 && marks<=70){
        print("Grade is BC");
    }
    else if(marks>50 && marks<=60){
        print("Grade is CD");
    }
    else if(marks>40 && marks<=50){
        print("Grade is DD");
    }
    else if(marks<=40){
        print("Fail");
    }
    else{
        print("Enter valid marks");
    }
}