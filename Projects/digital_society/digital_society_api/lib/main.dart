import 'package:digital_society_api/ResponsiveLayout/responsive_layout.dart';
import 'package:digital_society_api/screens/MobileLayout/mobile_login.dart';
import 'package:digital_society_api/screens/WebLayout/web_screen_layout.dart';
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
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.black,foregroundColor: Colors.white)),
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobile_screen_layout: MyLogin(),
        web_screen_layout: WebScreenLayout(),
        ),
    );
    }
}
