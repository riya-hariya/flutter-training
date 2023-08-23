import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class MyCardViewAssignment extends StatelessWidget {
  const MyCardViewAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 1, 51),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:150.0,left: 10),
                    child: Text("My Family",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:6.0,left: 10),
                    child: Text("Home",style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top:180.0,right: 10),
                child:
                badges.Badge(
                  position: badges.BadgePosition.topEnd(),
                  badgeContent: const Text('1'),
                  child: const Icon(Icons.chat,color: Colors.white,),
                 ) 
              ),
            ],
          ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                child: Container(
                  color: const Color.fromARGB(255, 52, 23, 101),
                  height: 170,
                  width: 170,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.calendar_today,color: Colors.blue,size: 40,),
                      ),
                      Text("Calendar",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("March,Wednesday",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                      ),
                      Text("3 Events",style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold) ),
                    ],
                  ),
                ), 
              ),
        
              Card(
                child: Container(
                  color: const Color.fromARGB(255, 52, 23, 101),
                  height: 170,
                  width: 170,
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.lunch_dining,color: Colors.orange,size: 40,),
                      ),
                      Text("Groceries",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Bocail,Apple",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                      ),
                      Text("4 items",style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold) ),
                    ],
                  ),
                ), 
              ),
            ],
          ), 
        ),


        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                child: Container(
                  color: const Color.fromARGB(255, 52, 23, 101),
                  height: 170,
                  width: 170,
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.location_on,color: Colors.red,size: 40,),
                      ),
                      Text("Locations",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Lucy Mao going to office",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                      ),
                      
                    ],
                  ),
                ), 
              ),
        
              Card(
                child: Container(
                  color: const Color.fromARGB(255, 52, 23, 101),
                  height: 170,
                  width: 170,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.temple_hindu_rounded,color: Colors.orange,size: 40,),
                      ),
                      Text("Activity",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Rose favrited your post",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                      ), 
                    ],
                  ),
                ), 
              ),
            ],
          ), 
        ),


        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                child: Container(
                  color: const Color.fromARGB(255, 52, 23, 101),
                  height: 170,
                  width: 170,
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.list,color: Colors.green,size: 40,),
                      ),
                      Text("To do",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Homework,design",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Text("4 items",style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold) ),
                      ),
                      
                    ],
                  ),
                ), 
              ),
        
              Card(
                child: Container(
                  color: const Color.fromARGB(255, 52, 23, 101),
                  height: 170,
                  width: 170,
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.settings,color: Colors.purple,size: 40,),
                      ),
                      Text("Settings",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                      
                      Padding(
                        padding: EdgeInsets.only(top: 48.0),
                        child: Text("2 items",style:TextStyle(color: Colors.grey,fontWeight: FontWeight.bold) ),
                      ),
                    ],
                  ),
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