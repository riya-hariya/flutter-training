// parameter constructor
class Student{
    late int num;

    //constructor
    Student(int num){
        this.num=num;
    }
    void display(){
        print("num=$num");
    }
}
void main(){
    Student obj = new Student(10);
    obj.display();
}
