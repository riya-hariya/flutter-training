import 'package:flutter/material.dart';
import 'package:mental_health_app/util/emotion_face.dart';
import 'package:mental_health_app/util/exercise_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: 'Category',),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account',),
          
          ]),
      backgroundColor: Colors.blue[800],

      body: SafeArea(
        child: 
        Column( //screen column
          children: [
            // greeting row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi, Riya!
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hi, Riya!',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                          SizedBox(height: 8,),
                          Text('23 Jan 2023',style: TextStyle(color: Colors.white,fontSize:20 ),)
                        ],
                      ),
                      
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                          ),
                        child: Icon(Icons.notifications,color: Colors.white,)),   
                    ],
                  ),
            
                    SizedBox(height: 25,),
            
                    //search bar
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.search,color: Colors.white,),
                              SizedBox(width: 5,),
                              Text("Search",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                        ),
            
                        SizedBox(height: 25,),
            
                        //how do you feel
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("How do you feel?",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                            Icon(Icons.more_horiz,color: Colors.white,),
                          ],
                        ),
            
                        SizedBox(height: 25,),
            
                        //4 differnet faces
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //bad
                            Column(
                              children: [
                                EmotionFace(emotionFace: '😟'),
                                SizedBox(height: 8,),
                                Text('Bad',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                            //fine
                            Column(
                              children: [
                                EmotionFace(emotionFace: '🙂'),
                                SizedBox(height: 8,),
                                Text('Fine',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                            //well
                            Column(
                              children: [
                                EmotionFace(emotionFace: '😃'),
                                SizedBox(height: 8,),
                                Text('Well',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                            //excellent
                            Column(
                              children: [
                                EmotionFace(emotionFace: '😄'),
                                SizedBox(height: 8,),
                                Text('Excellent',style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          ],
                        ),
                ],
              ),
            ),

              SizedBox(height: 25,),

              //large container
              Expanded(
                child: 
                Container(
                  padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Column(
                  //exercise heading
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Exercises",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Icon(Icons.more_horiz),
                    ],
                  ),
                  SizedBox(height: 20,),

                  //Listview of exercise
                  Expanded(
                    child: ListView(
                      children: [
                        ExerciseTile(exercise_title: 'Reading Skills',num_of_exercise:'15 Exercise',sticker_color: Colors.orange,ex_icon: Icons.favorite),
                        ExerciseTile(exercise_title: 'Writing Skills',num_of_exercise: '6 Exercise',sticker_color: Colors.blue,ex_icon: Icons.person,),
                        ExerciseTile(exercise_title: 'Speaking Skills',num_of_exercise: '8 Exercise',sticker_color: Colors.pink,ex_icon: Icons.star,),

                      ],
                    ),
                  )
                  
                ]),
              ),
              ),
          ],
        ),//screen column
      ),
    );
  }
}