import 'dart:io';
    //class declaration
    class student{
        //member declaration
        int? num;
        String? name;

        // method define
        void input(){
            print("enter name");
            name=stdin.readLineSync()!;
            
            print("enter num");
            num=int.parse(stdin.readLineSync()!);
        }

        void display(){
            print("name=$name");
            print("num=$num");
        }
    }
    void main()
    {
        var obj=student(); //student s1=new student()
        obj.input();       //s1.input()
        obj.display();

    }
   
    