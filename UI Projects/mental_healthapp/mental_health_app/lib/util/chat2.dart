import 'package:flutter/material.dart';

class ChitChat2 extends StatelessWidget {
  final String chat2;
  static String time='11:04';


  const ChitChat2({
    Key? key,
    required this.chat2,
   
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12)),
                        
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(chat2,style: TextStyle(color: Colors.white),),
                      Text(time,style: TextStyle(color: Colors.white,fontSize: 9),),
                    ],
                ),//hi jason
          );
  }
}