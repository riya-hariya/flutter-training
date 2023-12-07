//single level inheritance
//class declaration
class Parent{
    //method declaration
    void displayParent()
    {
        print("hello parent class here");
    }
}

//child class which inherit properties from parent class
class Child extends Parent{
    void displayChild()
    {
        print("hello child class here");
    }
}

void main(){
    //object creation
    Child obj = new Child();
    obj.displayParent();
    obj.displayChild();

}