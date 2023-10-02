
import 'package:burger_ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cardColor: Colors.teal,
        appBarTheme: AppBarTheme(color: Colors.teal,centerTitle: true),
        bottomAppBarTheme: BottomAppBarTheme(color: Colors.teal),
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.teal)
        ),
      debugShowCheckedModeBanner: false,
      home: HomeBurger(),
    );
  }
}

