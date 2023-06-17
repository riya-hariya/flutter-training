import 'package:flutter/material.dart';

class MyTask1 extends StatelessWidget {
  const MyTask1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 208, 236),
      appBar: AppBar(
        title: Text("Task1"),
        backgroundColor: Colors.deepPurple,
      ),
    body: Center( 
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, 
       
        children: [
        Text(
            "Oeschinen lake Campground   *    41",
            style: TextStyle(fontSize: 36,color: Colors.black87),
            textAlign: TextAlign.center ,
          ),
          Text(
            "Kanderstag.switzerland",
            style: TextStyle(fontSize: 22,color: Colors.black87),
            textAlign: TextAlign.center ,
          ),
      ]
      
      ),
    ));
  }
}