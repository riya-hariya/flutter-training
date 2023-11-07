import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onPress;
  final String childText;

  const MyButton({super.key,required this.childText,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.deepPurple[900])
      ),

      onPressed: onPress,
      child: Text(childText),
    );
  }
}