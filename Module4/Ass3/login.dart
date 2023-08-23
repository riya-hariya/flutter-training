

import 'package:flutter/material.dart';


class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
   bool isChecked=false;

  @override
  Widget build(BuildContext context) {
   

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("E-mail address",style: TextStyle(color: Colors.black),textAlign: TextAlign.start),
          ),
    
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            ),
          ),
    
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Enter Password",style: TextStyle(color: Colors.black,),textAlign:TextAlign.start ),
          ),
    
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.password),
            ),
            ),
          ),
    
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Forgot Password?",style: TextStyle(color: Colors.grey),),
              ),
            ],
          ),
    
          
          Row(
            children: [
              Checkbox(
          checkColor: Colors.white,
          value: isChecked,
          onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            }
           ),
    
      const Text("Remember Me",style: TextStyle(color: Colors.black),),
      ],
    ),
    
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 200,
            alignment: Alignment.center,
            
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(15)),
            child:  
             const Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                     textAlign: TextAlign.center),
          ),
        ),
      ],
    ),

    const Padding(
      padding: EdgeInsets.only(left:18.0,right: 15),
      child: Text("____________________ OR ____________________",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
    ),

    const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(child: Text("Sign In Using:")),
    ),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('image/googleLogo.png',height: 50,width: 50),
          Image.asset('image/facebook.png',height: 40,width: 40,),
          Image.asset('image/twitter.png',height: 35,width: 35),
        ],
      ),
    ),







    
    
    
    
          
        ],
      ),
    );
  }
}