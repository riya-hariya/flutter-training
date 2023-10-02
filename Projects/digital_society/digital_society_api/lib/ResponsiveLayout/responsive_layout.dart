import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile_screen_layout;
  final Widget web_screen_layout;

  const ResponsiveLayout({required this.mobile_screen_layout,required this.web_screen_layout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth>900){
          return web_screen_layout;
        }
        else{
          return mobile_screen_layout;
        }
      },
    );
  }
}