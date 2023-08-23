import 'package:flutter/material.dart';
import 'package:myflutterprograms/New%20Assignments/NewAss7/Sign_up.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              child: Padding(
            padding: EdgeInsets.only(top: 100,left: 100),
            child: 
            Text(
              "Login",
              style: TextStyle(
              color: Colors.black,
              fontSize: 50,
              fontWeight: FontWeight.bold),
            ),
          )),
          const Padding(
            padding: EdgeInsets.only(left: 80.0),
            child: Text(
              "Welcome Back! Login with your credentials",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0, top: 30),
            child: Text("Email"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10,left: 30,right: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "abc@gmail.com",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0, top: 30),
            child: Text("Password"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10.0,left: 30,right: 10),
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
              child:
               Center(
                 child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Login"),
                             ),
               ),
            ),
          ),

          Center(
            child: Row(children: [
              const Padding(
                padding: EdgeInsets.only(left: 60),
                child: Text(
                  "Dont have an account?",
                  style: TextStyle(color: Colors.black),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MySignUpScreen()));
                }, 
                child: const Text(
                  "SignUp",
                  style: TextStyle(fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
