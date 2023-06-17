
import 'package:flutter/material.dart';

class MyTask5 extends StatelessWidget {
  const MyTask5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(47, 238, 149, 227),
      appBar: AppBar(
        title: Text("Task5"),
        backgroundColor: Colors.purple,
      ),
      body: Center( 
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, 
       
        children: [
        Text(
            "Strawberry Pavlova",
            style: TextStyle(fontSize: 36,color: Colors.black87),
            textAlign: TextAlign.center ,
          ),
          Text(
            " ",
          ),
          Text(
            "Pavlova is a meringue-based dessert named after the russian Ballerina Anna Pavlova. It features a crisp crust and soft,light inside,topped with fruit and whipped cream.",
            style: TextStyle(fontSize: 22,color: Colors.black87),
            textAlign: TextAlign.center ,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [Icon(
      Icons.kitchen,
      color: Colors.purple,
      size: 24.0,),
      const Text('PREP:'),
      const Text('25 min'),
    Icon(
      Icons.timer,
      color: Colors.purple,
      size: 24.0,),
      const Text('COOK:'),
      const Text('1 hr'),
    Icon(
      Icons.restaurant,
      color: Colors.purple,
      size: 24.0,
    ),
    const Text('FEEDS:'),
    const Text('4-6'),
    ] 
      ),
        ]
          )
       ),
    );
  }
}
