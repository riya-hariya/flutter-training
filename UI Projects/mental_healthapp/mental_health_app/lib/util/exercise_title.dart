import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final String exercise_title;
  final String num_of_exercise;
  final Color sticker_color;
  final ex_icon;


  const ExerciseTile({
    Key? key,
    required this.exercise_title,
    required this.num_of_exercise,
    required this.sticker_color,
    required this.ex_icon,
    }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:10.0),
      child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ 
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: sticker_color,
                                ),
                                child: Icon(ex_icon)),
    
                              SizedBox(width: 18,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text(exercise_title,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                                  SizedBox(height: 5,),
                                  Text(num_of_exercise,style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            ],
                          ),
                          Icon(Icons.more_horiz),
                          
                        ],
                      ),
                  ),
    );
  }
}