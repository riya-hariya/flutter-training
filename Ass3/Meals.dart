import 'package:flutter/material.dart';

class MyMeals extends StatefulWidget {
  const MyMeals({super.key});

  @override
  State<MyMeals> createState() => _MyMealsState();
}

class _MyMealsState extends State<MyMeals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 200,
                  width: 180,
                  child: Card( 
                    elevation: 5,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child:Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 60),
                      child: 
                      Container(
                        child: 
                        const CircleAvatar(
                          minRadius: 1,
                          maxRadius: 3,
                          backgroundColor: Colors.white,
                          foregroundImage: AssetImage('image/food.jpeg'),
                        ),
                      ),
                    ),
                  ),
                ),
      
                SizedBox(
                  height: 200,
                  width: 180,
                  child: Card( 
                    elevation: 5,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child:
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 60),
                      child: 
                      Container(
                        child: const CircleAvatar(
                          minRadius: 1,
                          maxRadius: 3,
                          backgroundColor: Colors.white,
                          foregroundImage: AssetImage('image/food.jpeg'),
                        ),
                      ),
                    )
                  ),
                ),
              ],
            ),  
          ),
      
      
          Padding(
            padding: const EdgeInsets.only(left:8.0,right: 8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 200,
                    width: 180,
                    child: Card( 
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child:Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 60),
                        child: 
                        Container(
                          child: 
                          const CircleAvatar(
                            minRadius: 1,
                            maxRadius: 3,
                            backgroundColor: Colors.white,
                            foregroundImage: AssetImage('image/food.jpeg'),
                          ),
                        ),
                      ),
                    ),
                  ),
          
                  SizedBox(
                    height: 200,
                    width: 180,
                    child: Card( 
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child:
                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 60),
                        child: 
                        Container(
                          child: const CircleAvatar(
                            minRadius: 1,
                            maxRadius: 3,
                            backgroundColor: Colors.white,
                            foregroundImage: AssetImage('image/food.jpeg'),
                          ),
                        ),
                      )
                    ),
                  ),
                ],
              ),
          ),
      
      
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 200,
                    width: 180,
                    child: Card( 
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child:Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 60),
                        child: 
                        Container(
                          child: 
                          const CircleAvatar(
                            minRadius: 1,
                            maxRadius: 3,
                            backgroundColor: Colors.white,
                            foregroundImage: AssetImage('image/food.jpeg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                
                  SizedBox(
                    height: 200,
                    width: 180,
                    child: Card( 
                      elevation: 5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      child:
                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 60),
                        child: 
                        Container(
                          child: const CircleAvatar(
                            minRadius: 1,
                            maxRadius: 3,
                            backgroundColor: Colors.white,
                            foregroundImage: AssetImage('image/food.jpeg'),
                          ),
                        ),
                      )
                    ),
                  ),
                
                
                ],
              ),
          ),
        ],
      ),
    );
  }
}