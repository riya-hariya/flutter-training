//

import 'dart:io';
void main()
{
	//variable declaration
  var student ={
    'username' : 'riya','email':'riyaved@gmail.com','password':'123456'
  };

  //display map
  print(student);
  print(student.keys);
  print(student.values);
  print(student.length);

  print("enter name");
  var name = stdin.readLineSync()!;

  if (student["username"] == name)
  {
    print("email=${student['email']}");
  }
  student['username'] = "jiya";
  print (student);


}