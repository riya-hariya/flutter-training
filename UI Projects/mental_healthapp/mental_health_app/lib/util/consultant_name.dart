import 'package:flutter/material.dart';

class Consultant extends StatelessWidget {
  final Color consultant_color;
  final String consultant_name,category_type;
  

  const Consultant({
    Key? key,
    required this.consultant_color,
    required this.consultant_name,
    required this.category_type,
    }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: consultant_color,
                    borderRadius: BorderRadius.circular(12)),
                  child: Icon(Icons.person),
                  
                ),
                SizedBox(width: 5,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(consultant_name,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    Text(category_type,style: TextStyle(color: Colors.grey),)
                  ],
                ),
              ],
            ),
      
            Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}