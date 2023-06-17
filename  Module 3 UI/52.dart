/*Create an application with radio buttons (Add, Substraction, Multiply, Division) EditText (number1, number2) and print result as
per user choice from radio button in TextView*/

import 'package:flutter/material.dart';

class MyAssignment52 extends StatefulWidget {
  const MyAssignment52({super.key});

  @override
  State<MyAssignment52> createState() => _MyAssignment52State();
}

class _MyAssignment52State extends State<MyAssignment52> {
  int? add=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RadioListTile(
            title: Text("addition"),
            value: "addition",
             groupValue: add,
              onChanged: (value){

              }),
        ],
      ),
    );
  }
}