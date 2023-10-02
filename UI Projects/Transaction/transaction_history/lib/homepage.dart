import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 300,
              width: 310,
            ),

            SizedBox(height: 20,),
            Center(
              child: Text("Manage your",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)),
            Center(
              child: Text("money like never",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)),
            Center(
              child: Text("before",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),)),

            SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                ),
                child: 
                Center(child: Text("Get Started",style: TextStyle(color: Colors.purple),)),
            ),
          )


          ],//main screen column
        ),
          
        
      )
    );
  }
}