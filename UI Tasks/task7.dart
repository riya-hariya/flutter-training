import 'package:flutter/material.dart';

class MyTask7 extends StatelessWidget {
  const MyTask7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ColoredBoxes"),
      ),

      body: Column(
        children: [
        
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 100,
              width: double.maxFinite,
              
              decoration: BoxDecoration(
                color: Color.fromARGB(198, 165, 237, 165),
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  height: 100,
                  width: 100,
              
                  decoration: BoxDecoration(
                    color: Color.fromARGB(227, 72, 184, 228),
                    border:Border.all(width: 2),
                    borderRadius: BorderRadius.circular(12),
                     ),
                ),
              ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      height: 100,
                      width: 400,
                                  
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
            ],
          ),

          Flexible(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                height: 400,
                width: double.maxFinite,
            
                decoration: BoxDecoration(
                  color: Colors.purple,
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              height: 100,
              width: double.maxFinite,
          
              decoration: BoxDecoration(
               color: Color.fromARGB(227, 72, 184, 228),
               border: Border.all(width:2),
               borderRadius: BorderRadius.circular(12)
              ),
            ),
          )

        ],
      )
    );
  }
}