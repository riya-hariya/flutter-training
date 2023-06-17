import 'package:flutter/material.dart';

class MyTask8 extends StatelessWidget {
  const MyTask8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ColoredBoxes"),
      ),

      body: Column(
        children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                height: 250,
                width: double.maxFinite,
            
                decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Flexible(
                  child: Container(
                    height: 150,
                    width: 300,
                
                    decoration: BoxDecoration(
                      color: Color.fromARGB(251, 77, 231, 100),
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(251, 78, 100, 231),
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(12)
                        ),
                      ),
              
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),

          Padding(
            padding: EdgeInsets.all(4),
            child: Flexible(
              child: Container(
                height: 150,
                width: double.maxFinite,
            
                decoration: BoxDecoration(
                  color: Color.fromARGB(251, 77, 231, 100),
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(12),
                  ),
              ),
            ),
          )

      ]),
    );
  }
}