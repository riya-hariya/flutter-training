import 'package:flutter/material.dart';

class MyAssignment49 extends StatelessWidget {
  const MyAssignment49({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment:49"),
      ),
      
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,

      child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Flexible(child:
            Container(
              height: 50,
              width: double.maxFinite,
              color: Colors.red,
            ), 
            ),  
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),

          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
              Container(
                padding: EdgeInsets.all(20),
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),

          ],),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
              Container(
                padding: EdgeInsets.all(20),
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
          ],),
          ],),
          ),
        );
  }
}