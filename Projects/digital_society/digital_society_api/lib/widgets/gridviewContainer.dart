import 'package:flutter/material.dart';

class GridContainer extends StatelessWidget {
  final Icon icon;
  final String text;
  final Color? color;
  const GridContainer({super.key,required this.color,required this.text,required this.icon});

  @override
  Widget build(BuildContext context) { 
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: color,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,  
            children: [
              icon,
              SizedBox(height: 10,),
              Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ],
                  ),
          )),
      
    );
  }
}