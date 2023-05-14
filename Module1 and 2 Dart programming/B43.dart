/*B43. Create an abstract class 'Parent' with a method 'message'. It has two subclasses each having a method with the same name 
'message' that prints "This is first subclass" and "This is second subclass" respectively.
 Call the methods 'message' by creating an object for each subclass.*/

abstract class Parent{
    void messaage();    
}

class Child1 extends Parent{
    void messaage(){
        print("This is first subclass");
    }
}

class Child2 extends Parent{
    void messaage(){
        print("This is second subclass");
    }
}

void main()
{
    Child1 c1= new Child1();
    Child2 c2= new Child2();
    c1.messaage();
    c2.messaage();
}