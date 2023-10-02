import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String childText;
  final Function()? onPress;


  const MyButton({super.key,required this.childText,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.black)),
        onPressed: onPress,
        child: Text(childText),
      ),
    );
  }
}