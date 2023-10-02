import 'package:digital_society_api/screens/MobileLayout/dashboard.dart';
import 'package:digital_society_api/screens/MobileLayout/mobile_signup.dart';
import 'package:digital_society_api/widgets/button.dart';
import 'package:digital_society_api/widgets/textfield.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MyLogin> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(202, 223, 240, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //logo
              SizedBox(
                height: 80,
              ),
              Icon(
                Icons.home,
                color: Colors.black,
                size: 100,
              ),

              SizedBox(
                height: 50,
              ),

              Text(
                "Wecome back! you've been missed",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 40,
              ),

              //email
              MyTextfield(controller: emailTextController,hintText: "Enter Email",obscureText: false),
              SizedBox(height: 10,),
              MyTextfield(controller: passwordTextController,hintText: "Enter Password", obscureText: true),

              SizedBox(height: 10,),
              //Loginbutton
              MyButton(childText: "Login",onPress: () {
                
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MyDashboard()));
              },),

              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account?",style: TextStyle(color: Colors.grey[700]),),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MySignUpPage()));
                    },
                    child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold),)))
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
