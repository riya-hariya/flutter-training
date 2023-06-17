import 'package:flutter/material.dart';

class MyTask2 extends StatelessWidget {
  const MyTask2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 208, 236),
      body: Center(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, 
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