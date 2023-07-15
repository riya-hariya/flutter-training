import 'package:flutter/material.dart';
import 'package:myflutterprograms/New Assignments/NewAss7/NewAss7.dart';

class MySignUpScreen extends StatelessWidget {
  const MySignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.white,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         SafeArea(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Center(child: Text("Sign Up")),
           ),
         ),

         Center(
          child: Text("Create an account,its free",
          style: TextStyle(color: Colors.grey),
            ) ,
          ),

          Text("Email"),

          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
            ),
          ),

          Text("Password"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Password",
            ), 
          ),

          Text("Confirm Password"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Confirm Password",
            ),
          ),

       ElevatedButton(
          onPressed: () {
              
          },
          child: Text("Sign Up"),
      ),

    Row(
      children: [
        Text("Already have an account"),
        Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold)),
      ]
    ),

    ],
  ),
 );
  }
}