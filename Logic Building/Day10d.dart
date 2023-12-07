//abstraction
abstract class Parent{
    void display(){
        print("this is display");
    }

    void show();//no body
}

class Child extends Parent{
    @override
    void show(){
        print("This is show method implementation");
    }
}

void main()
{
    Child obj = new Child();
    obj.display();
    obj.show();
}