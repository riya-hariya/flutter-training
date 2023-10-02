import 'package:flutter/material.dart';
import 'package:mental_health_app/util/category_name.dart';
import 'package:mental_health_app/util/consultant_name.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
        ]),
        body: SafeArea(
          child: 
          Column( //main screen column
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi,Riya!",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28),),
                          SizedBox(height: 5,),
                          Text("23 Jan,2023",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
          
                  //notification container
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[300],
                    ),
                    child: Icon(Icons.notifications,color: Colors.white,),
                  ), //notification container
                  ],
                ),//Hi Riya Row
              ),
              SizedBox(height: 20),
          
              //search bar row
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  padding: EdgeInsets.only(left:15),
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(12)
                    ),
                  
                  child: 
                  Center(
                    child: Row(
                      children: [
                        Icon(Icons.search,color: Colors.white,),
                        SizedBox(width: 15,),
                        Text("Search",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
              ),//Search bar Row
          
            SizedBox(height: 15,),

            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Category",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),
                        Icon(Icons.more_horiz),
                      ],
                    ),// Category Text Row

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                      Row(
                        //Relationship Career
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CategoryName(category_name: "Relationship", category_color: Colors.deepPurple),
                          CategoryName(category_name: "Career", category_color: Colors.blue)
                        ],
                      ),// Relationhip Career
                    ),
                      SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        //Education Others
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                            CategoryName(category_name: "Education", category_color: Colors.orange),
                            CategoryName(category_name: "Other", category_color: Colors.pink)
                        ],
                      ),// Education //others
                    ),

                    SizedBox(height: 5,),

                  Row( //Consultant
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Consultant",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                      Icon(Icons.more_horiz),
                    ],
                  ),//Consultant
                  
                  SizedBox(height: 10,),

                  Column(
                   //Bobby singer
                    children: [
                      Consultant(consultant_color: Colors.green, consultant_name: "Bobby Singer", category_type: "Education"),
                      Consultant(consultant_color: Colors.purple, consultant_name: "Dean Winchester", category_type: "Relationship"),
                      Consultant(consultant_color: Colors.amber, consultant_name: "Keyur Panchal", category_type: "Career"),

                    ],
                  )
                  
                  ],
                ),//white Container's column
              ),
              

            )

            
            ],//main screen column    
          ),//main screen column
        ),
    );
  }
}