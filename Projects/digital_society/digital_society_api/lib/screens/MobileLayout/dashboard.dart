import 'package:digital_society_api/screens/MobileLayout/addEvents.dart';
import 'package:digital_society_api/screens/MobileLayout/viewMembers.dart';
import 'package:digital_society_api/screens/MobileLayout/viewNotice.dart';
import 'package:digital_society_api/widgets/gridviewContainer.dart';
import 'package:flutter/material.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Color.fromRGBO(202, 223, 240, 1),
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyViewMembers(),));
            },
            child: GridContainer(color: Colors.red, text: "Add Members",icon: Icon(Icons.person,color: Colors.white,),)),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyViewNotice(),));
            },
            child: GridContainer(color: Colors.yellow.shade800, text: "Add Notice",icon: Icon(Icons.note_add,color: Colors.white,))),

          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyAddEvents(),));
            },
            child: GridContainer(color: Colors.green, text: "Add Events",icon: Icon(Icons.event,color: Colors.white,))),
          GridContainer(color: Colors.grey, text: "View Complaint",icon: Icon(Icons.notes,color: Colors.white,)),
        ],
        ),
    );
  }
}