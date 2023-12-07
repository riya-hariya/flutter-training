//super keyword

class ParentClass{
    //same variable in parent class
    String msg = "This is parent class";
}

//inherite
class ChildClass extends ParentClass{
    //same variable in child class
    String msg ="Child class";

    void displayMessage(){
        print("\n This is ${msg}");
        print("\n ${super.msg}"); //to access parent element
    }
}

void main()
{
    ChildClass obj = new ChildClass();
    obj.displayMessage();
}