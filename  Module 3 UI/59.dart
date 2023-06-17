import 'package:flutter/material.dart';

class MyAssignment59 extends StatefulWidget {
  const MyAssignment59({super.key});

  @override
  State<MyAssignment59> createState() => _MyAssignment59State();
}

class _MyAssignment59State extends State<MyAssignment59> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: Colors.deepPurple,
      

      child:Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                child: Text("Login",
                style: TextStyle(
                  fontSize: 46,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
            ),
          ),

          Container(
            margin: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(width: 3,color: Colors.purple),),

                focusedBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(width: 3,color: Colors.blue),),

                  hintText: "Enter email",
                  labelText: "Email",

                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.white,
                  )
              ), ),   
          ),
        Container(
          margin: EdgeInsets.all(16),
          child: TextField(
            decoration: InputDecoration(

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(width: 3,color: Colors.purple),),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(width: 3,color: Colors.blue),),

              hintText: "enter password",
              labelText: "Password",

              prefixIcon: Icon(
                Icons.password,
                color: Colors.white,
              )  
            ) ),
        ),

        Container(
          margin: EdgeInsets.only(right: 20,top:5),
          alignment: Alignment.bottomRight,
          child: Text("forgot password?",
          style: TextStyle(
           color: Colors.black,
           fontSize: 16,
           fontWeight: FontWeight.bold, 
          ),
          ), 
        ),
        ElevatedButton(onPressed: (){

        }, 
        child: Text("SIGN IN")),
        ],
      ),
      ),
    );
  }
}