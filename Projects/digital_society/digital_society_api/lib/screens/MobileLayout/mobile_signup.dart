import 'package:digital_society_api/screens/MobileLayout/mobile_login.dart';
import 'package:digital_society_api/widgets/button.dart';
import 'package:digital_society_api/widgets/textfield.dart';
import 'package:flutter/material.dart';

class MySignUpPage extends StatefulWidget {
  const MySignUpPage({super.key});

  @override
  State<MySignUpPage> createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
  final emailController = TextEditingController();
  final fullNameController = TextEditingController(); 
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(202, 223, 240, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80,),
                //Icon
                Center(
                  child: Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 100,
                    ),
                ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Sign Up",style: TextStyle(color: Colors.black,fontSize: 25),),
                  
                  SizedBox(height: 15),
          
                  //Full Name
                  Text("Full Name",style: TextStyle(color: Colors.black),),
                  SizedBox(height: 5),
                  MyTextfield(controller: fullNameController, hintText: "FirstName Surname ", obscureText: false),
                  
                  //email
                  SizedBox(height: 5,),
                  Text("Email",style: TextStyle(color: Colors.black),),
                  SizedBox(height: 5),
                  MyTextfield(controller: emailController, hintText: "xyz@gmail.com", obscureText: false),
      
                  //password
                  SizedBox(height: 5,),
                  Text("Password",style: TextStyle(color: Colors.black),),
                  SizedBox(height: 5),
                  MyTextfield(controller: passwordController, hintText: "******", obscureText: true),
          
          
                  //confirm password
                  SizedBox(height: 5,),
                  Text("Confirm Password",style: TextStyle(color: Colors.black),),
                  SizedBox(height: 5),
                  MyTextfield(controller: confirmpasswordController, hintText: "******", obscureText: true),

                  //Signup button
                  SizedBox(height: 5,),
                  Center(child: MyButton(childText: "Sign Up",onPress: () {
                    
                  },)),

                  //Already have an account?
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",style: TextStyle(color: Colors.grey[700]),),
                      SizedBox(width: 5,),
                      
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyLogin(),));
                        },
                        child: Text("Login",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold),)),
                    ],
                  )

              ],
            ),
          ),
        )),
    );
  }
}