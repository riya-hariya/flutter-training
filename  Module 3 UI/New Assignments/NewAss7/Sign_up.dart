import 'package:flutter/material.dart';
import 'package:myflutterprograms/New%20Assignments/NewAss7/Login_screen.dart';

class MySignUpScreen extends StatelessWidget {
  const MySignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SafeArea(
            child: 
            Center(
              child: Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            )),
          ),
          const Center(
            child: Text(
              "Create an account,its free!",
              style: TextStyle(color: Color.fromARGB(255, 119, 117, 117)),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 30,top: 30),
            child: Text("Email"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10,left: 30,right: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 30,left: 30),
            child: Text("Password"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10,left: 30,right: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                labelStyle: TextStyle(
                  fontFamily: 'Schyler',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30,left: 30),
            child: Text("Confirm Password"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10,left: 30,right: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Confirm Password",
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Sign Up"),
            ),
          ),
          Row(children: [
            const Padding(
              padding: EdgeInsets.only(left: 100),
              child: Text("Already have an account?"),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context) => const LoginScreen(),));
              },
              child: const Text("Login", style: TextStyle(fontWeight: FontWeight.bold))),
          ]),
        ],
      ),
    );
  }
}
