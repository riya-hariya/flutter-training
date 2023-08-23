//2) create an application to increase font size when plus button click and decrease when minus button click

import 'package:flutter/material.dart';

class MyAssignment2 extends StatefulWidget {
  const MyAssignment2({super.key});

  @override
  State<MyAssignment2> createState() => _MyAssignment2State();
}

class _MyAssignment2State extends State<MyAssignment2> {
 double _changed_fontsize = 20;

  void plusSize() {
    setState(() {
      _changed_fontsize += 2;
    });
  }

  void minusSize() {
    setState(() {
      _changed_fontsize -= 2;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Padding(
            padding: const EdgeInsets.only(top:200.0),
            child: SafeArea(
                child: Center(
                    child: Text("This is the text",style:TextStyle(fontSize: _changed_fontsize, color: Colors.black),
            ))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(onPressed: () {
                  plusSize();
                }, child: const Text('+')),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    minusSize();
                  }, child: const Text('-')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
