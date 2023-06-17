//50. Create an application to take input number from user and print its reverse number in textfield.
import "package:flutter/material.dart";

class MyAssignment50 extends StatefulWidget {
  const MyAssignment50({super.key});

  @override
  State<MyAssignment50> createState() => _MyAssignment50State();
}

class _MyAssignment50State extends State<MyAssignment50> {
  TextEditingController numcontroller=TextEditingController();
  String? number="";

  void updateReverse(){
    String input=numcontroller.text;
              String reversed='';
              for(int i=input.length-1;i>=0;i--){
                reversed+=input[i];
            }
            setState(() {
              number=reversed;
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reverse Number"),
        backgroundColor: Colors.amber,
      ),
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
          TextField(
            controller: numcontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,color: Colors.pink
                ),
                borderRadius: BorderRadius.circular(12),),
                hintText:"enter number",
            ),
            onChanged: (value) => updateReverse(),
          
          ),

          Text(
            "Reverse=$number",
            style: TextStyle(
              fontSize: 20),
          ),
          ]),
      ),

      
    );
  }
}

