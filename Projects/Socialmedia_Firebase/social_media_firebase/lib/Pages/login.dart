import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:social_media_firebase/components/button.dart';
import 'package:social_media_firebase/components/text_field.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key,required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController=TextEditingController();
  final passwordTextEditingController=TextEditingController();

  //try sign user in
  void signIn() async{
    //show loading circle
    showDialog(
      context: context,
      builder: (context) => Center(child: CircularProgressIndicator()),);
  
  //try sign in
   try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailTextController.text,
      password: passwordTextEditingController.text
      );
    
    
    //pop loading circle
    if(context.mounted)Navigator.pop(context);
   }
     on FirebaseAuthException catch(e){
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
            const Text("Welcome back!, you've been missed",
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


            //sign in button
           MyButton(onTap: signIn, text:'Sign In'),

            //goto register page
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a Member?",style: TextStyle(color: Colors.grey[700]),),
                  SizedBox(width: 4,),
                  
                  GestureDetector(
                    onTap: widget.onTap,
                    child:const Text("Register now",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),

                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}