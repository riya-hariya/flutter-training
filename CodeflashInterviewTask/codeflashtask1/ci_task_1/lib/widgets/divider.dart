import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
 final String txt;
  const MyDivider({super.key,required this.txt});

  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                Expanded(
                  child: Divider()
                  ),
                  SizedBox(width: 15,),

                  Text(txt),

                  SizedBox(width: 15,),
                  Expanded(
                  child: Divider()
                  ),
              ],
            );
  }
}