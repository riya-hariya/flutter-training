import 'package:flutter/material.dart';

class CategoryName extends StatelessWidget {
  final Color category_color;
  final String category_name;


  const CategoryName({
    Key? key,
    required this.category_name,
    required this.category_color,
    }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 80,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: category_color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text(category_name,style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}