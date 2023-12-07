//Accept 5 students name from user and their subjects.store all 5 students data in map.

import 'dart:io';
void main()
{
    int i;
    String name,subject;

    var students= {};

    for(i=1;i<=5;i++)
    {
    print("enter the name of student"); 
    name = stdin.readLineSync()!;

    print("enter subject"); 
    subject = stdin.readLineSync()!;

    students[name] = subject;

    }
    print(students); 

}


