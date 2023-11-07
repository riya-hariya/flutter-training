import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
 final AssetImage img;
 final double maxRadius;

  const MyCircleAvatar({super.key,required this.img,required this.maxRadius});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      maxRadius: maxRadius,
      backgroundImage: img,
    );
  }
}