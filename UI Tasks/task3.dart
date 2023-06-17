import 'package:flutter/material.dart';

class MyTask3 extends StatelessWidget {
  const MyTask3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 208, 236),
      body: Center(
        child:Row(
          children: [
        Icon(
              Icons.account_circle,
              color: Colors.pink,
              size: 36,
            ),
        Icon(
          Icons.account_circle,
          color: Colors.blue,
           size: 36,
            ),
        Icon(
          Icons.account_circle,
          color: Colors.yellow,
           size: 36,
            ),
        Icon(
          Icons.account_circle,
          color: Colors.purple,
           size: 36,
            ),
          ]
        )
    ));
  }
}