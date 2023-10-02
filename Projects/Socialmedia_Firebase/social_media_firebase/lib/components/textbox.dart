import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  final String text;
  final String sectionName;
  final void Function()? onPressed;

  const MyTextBox({super.key,required this.text,required this.sectionName,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200]
        ),
      padding: EdgeInsets.only(left: 15,bottom: 15),
      margin: EdgeInsets.only(left: 20,right: 20,top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          
          Row(
            children: [
              //section name
              Text(sectionName,style: TextStyle(color: Colors.grey),),

              //button
              IconButton(onPressed: onPressed, icon: Icon(Icons.settings,color: Colors.grey[400],))
            ],
          ),

          //text
          Text(text),
        ],
      ),
    );
  }
}