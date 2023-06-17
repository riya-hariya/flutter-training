//Create an application to input 2 numbers from user and all numbers between those 2 numbers in next activity.

import 'package:flutter/material.dart';

class MyAssignment51 extends StatefulWidget {
  const MyAssignment51({super.key});

  @override
  State<MyAssignment51> createState() => _MyAssignment51State();
}

class _MyAssignment51State extends State<MyAssignment51> {
TextEditingController num1Controller=TextEditingController();
TextEditingController num2Controller=TextEditingController();
var numbers=[];
  
void betweenNumbers(){
  int n1=int.parse(num1Controller.text);
  int n2=int.parse(num2Controller.text);
  

  var lst=[];
  
  for(int i=n1;i<=n2;i++){
    lst.add(i);

  }
  
  setState(() {
    numbers.addAll(lst);
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              controller: num1Controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                hintText: "Enter number 1",
                labelText: "Number1",
              ),),
          ),

          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              controller: num2Controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                hintText: "Enter number 2",
                labelText: "Number2",
              ),),
          ),

          ElevatedButton(
            onPressed:() => betweenNumbers(),
            child: Text("Submit"),
          ),

          Text(
            "Numbers=$numbers",
            style: TextStyle(fontSize: 20),
          ),

        ],
      ),
    );
  }
}

