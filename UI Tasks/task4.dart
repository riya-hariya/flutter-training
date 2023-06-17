import 'package:flutter/material.dart';

class MyTask4 extends StatelessWidget {
  const MyTask4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Task4 Button"),
      backgroundColor: Colors.deepPurple,
),

    bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      
      BottomNavigationBarItem(
        icon: Icon(Icons.call),
        label: 'Calls',
      ),

      BottomNavigationBarItem(
        icon: Icon(Icons.route),
        label: 'Route',
      ),

      BottomNavigationBarItem(
        icon: Icon(Icons.share),
        label: 'Share',
      )
    ]
      ),
    );
  }
}