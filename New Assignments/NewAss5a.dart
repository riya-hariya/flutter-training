import 'package:flutter/material.dart';

class MyNewAss5a extends StatelessWidget {
  const MyNewAss5a({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                prefixIcon: Icon(Icons.account_circle),
                hintText: "Label Text Demo",
                suffixIcon: Icon(Icons.account_box), 
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Helper Text Demo",style: TextStyle(color: Colors.grey),),
                Text("0/10",style: TextStyle(color: Colors.grey),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}