import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_media_firebase/components/button.dart';
import 'package:social_media_firebase/components/text_field.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailTextController=TextEditingController();
  final passwordTextEditingController=TextEditingController();
  final confirmPasswordTextEditingController=TextEditingController();

  //sign up user
  void signUp() async {
    //show loading circle
    showDialog(
      context: context,
      builder: (context) => Center(child: CircularProgressIndicator())
      );

    //make sure passwords match
    if(passwordTextEditingController.text!=confirmPasswordTextEditingController.text){
      //pop loading circle
      Navigator.pop(context);
      //show error to user
      displayMessage("Passwords dont match");
      return;
    }
    //try creating the user
    try {
      //create the user
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailTextController.text,
        password: passwordTextEditingController.text);

      //after creating user, create a new document in firestore called users
      FirebaseFirestore.instance.collection("Users").doc(userCredential.user!.email)
      .set({
        'username':emailTextController.text.split('@')[0], //initial username
        'bio': 'Empty bio..'//initially empty bio
        //any additional field as needed
      });

      if(context.mounted) Navigator.pop(context);
    } on FirebaseAuthException catch(e){
      //pop loading circle
      Navigator.pop(context);

      //show error to user
      displayMessage(e.code);
    }
  }
  //display a dialog message
  void displayMessage(String message){
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(message),
      ),);
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            //logo
            SizedBox(height: 80,),
            Center(child: const Icon(Icons.lock,size: 100,color:Colors.black,)),
              
            SizedBox(height: 50,),
            //welcome back message
            const Text("Let's create an account for you",
            style: TextStyle(color: Colors.black87),),
        
        
            SizedBox(height: 25,),
            //email textfield
            MyTextfield(
              controller: emailTextController,
              hintText: 'Email',
              obscureText: false),
        
            SizedBox(height: 10,),
            //password textfield
            MyTextfield(
              controller: passwordTextEditingController,
              hintText: 'Password',
              obscureText: true),

            //confirm password
            MyTextfield(
              controller: confirmPasswordTextEditingController,
              hintText: 'Confirm Password',
              obscureText: true),



            //sign up button
            MyButton(onTap: signUp, text:'Sign Up'),

            //goto Login page
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account",style: TextStyle(color: Colors.grey[700]),),
                  SizedBox(width: 4,),
                  
                  GestureDetector(
                    onTap: widget.onTap,
                    child:const Text("Login now",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),

                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}