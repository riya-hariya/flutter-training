import 'package:flutter/material.dart';

class NewAssign1 extends StatelessWidget {
  const NewAssign1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Container Example")
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              color: Colors.green,
              child: Text("Hello! I am in the container widget!!"),
              height: 150,
              width: 350,
              
              transform: Matrix4.skew(0.02, 0.2), 
              
            )
          ]),
    );
  }
}