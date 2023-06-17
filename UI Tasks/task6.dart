import 'package:flutter/material.dart';

class MyTask6 extends StatelessWidget {
  const MyTask6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colored Boxes"),
        backgroundColor: Colors.purple,
      ),
       body:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
            Container(
              width: double.maxFinite,
              height: 100,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 165, 205, 120),
                  border: Border.all(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(20),
                  ),
                  ),
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(20),
                  ),
                  )
        ]
       ));
  }
}