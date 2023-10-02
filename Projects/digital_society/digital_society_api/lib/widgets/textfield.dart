import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const MyTextfield({super.key,
  required this.controller,
  required this.hintText,
  required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      obscureText: obscureText,
      controller: controller,

      decoration: InputDecoration(
        fillColor: Colors.grey[200],
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[500]),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
          ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
        ),
        
      ),
    );
  }
}