import 'package:flutter/material.dart';

class ChitChat1 extends StatelessWidget {
  final String chat1;
  static String time='11:04';


  const ChitChat1({
    Key? key,
    required this.chat1,
   
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12)),
                        
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(chat1,style: TextStyle(color: Colors.black),),
                      Text(time,style: TextStyle(color: Colors.grey[600],fontSize: 9),),
                    ],
                ),//hi jason
          );
  }
}