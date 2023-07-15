import 'package:flutter/material.dart';
import 'package:myflutterprograms/New Assignments/NewAss7/NewAss7.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            padding: const EdgeInsets.only(top: 150),
            child: Center(
                child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            )),
          )),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Welcome Back! Login with your credentials",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 30),
            child: Text("Email"),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              left: 30,
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "abc@gmail.com",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 30),
            child: Text("Password"),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              left: 30,
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "*****",
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
              ),
            ),
          ),

          Center(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: 
                  Text("Dont have an account?",style: TextStyle(color: Colors.black),),
                ),
                Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold),),
                ]
            ),
          ),
        ],
      ),
    );
  }
}
