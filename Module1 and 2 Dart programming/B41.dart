/*B41.Write a program to print the area and perimeter of a triangle having sides of 3, 4 and 5 units by creating a class named 'Triangle' 
without any parameter in its constructor.*/
import 'dart:io';
import 'dart:math';

class Triangle{
    double s1=3,s2=4,s3=5,semi_peri=0;
    double peri=0,b=0,a=0;

    void perimeter(){
        peri= s1+s2+s3;
        print("Perimeter of triangle=$peri");
    }

    void area(){
        semi_peri=peri/2;
        b=semi_peri*(semi_peri-3)*(semi_peri-4)*(semi_peri-5);
        a=sqrt(b);
        print("area of triangle=$a");
    }
}

void main(){
    Triangle t = new Triangle();
    t.perimeter();
    t.area();
}