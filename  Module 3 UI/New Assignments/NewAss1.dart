import 'package:flutter/material.dart';

class NewAssign1 extends StatelessWidget {
  const NewAssign1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Container Example")
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(12),
              color: Colors.green,
              height: 150,
              width: 350,
              
              transform: Matrix4.skew(0.02, 0.2),
              child: const Text("Hello! I am in the container widget!!"), 
              
            )
          ]),
    );
  }
}