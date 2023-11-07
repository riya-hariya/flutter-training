import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hinttxt;
  final TextEditingController controller;

  const MyTextfield({super.key,required this.hinttxt,required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,

      decoration: InputDecoration(
        hintText: hinttxt,
        hintStyle: TextStyle(color: Colors.grey),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        )
      ),
    );
  }
}