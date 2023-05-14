/*A2. Suppose a class 'A' has a static method to print "Parent". Its subclass 'B' also has a static method with the same name to print "Child". 
Now call this method by the objects of the two classes. Also, call this method by an object of the parent class referring to the child class
i.e. A obj = new B ()
*/
class A{
    static void display(){
        print("parent");
    }
}
class B implements A{
    static void display(){
        print("child");
    }
}
void main(){
    A obj=new B();
    B b= new B();
    obj.display();
}