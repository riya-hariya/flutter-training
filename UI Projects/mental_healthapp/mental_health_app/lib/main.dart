import 'package:flutter/material.dart';
import 'package:mental_health_app/category_page.dart';
import 'package:mental_health_app/conversation_chat.dart';
import 'package:mental_health_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Chat(),
    );
  }
}