//method overriding
class Parent{
    void display(){
        print("This is parent class");
    }
}

class Child extends Parent{
    void display(){
        print("This is child class");

        //parent class method called
        super.display();
    }
}

void main(){
    Child obj = new Child();
    obj.display();
}