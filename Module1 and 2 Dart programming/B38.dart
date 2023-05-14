//B38. Create a class with a method that prints "This is a parent class" and its subclass with another method 
//that prints "This is child class". Now, create an object for each of the class and call 1 - method of parent class 
//by object of parent class 2 - method of child class by object of child class 3 - method of parent class by object of child class
import 'dart:io';

class parent{
    void pmethod(){
    print("This is a parent class");  
   }  
 }
class child extends parent{
   void cmethod(){
    print("This is a child class");
   }
}
void main() {
    parent p=new parent();
    child c =new child();
    p.pmethod();
    c.cmethod();
    c.pmethod();
}
