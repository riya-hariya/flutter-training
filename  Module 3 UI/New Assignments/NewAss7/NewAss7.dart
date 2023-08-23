import 'package:flutter/material.dart';
import 'package:myflutterprograms/New%20Assignments/NewAss7/Login_screen.dart';
import 'package:myflutterprograms/New%20Assignments/NewAss7/Sign_up.dart';

class MyNewAss7 extends StatelessWidget {
  const MyNewAss7 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(232, 204, 230, 238),

      body: Column(


        children: [
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: 
              Center(
                child: Text("Hello There!",
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 40),
                textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 30,right: 30),
            child: Center(
              child:  
              Text("Automatic identify verification which enable you to verify your identity.",
              maxLines: 2,
              style: TextStyle(color: Colors.black,fontSize: 15),
              ),
            ),
          ),

          Center(
            child: Container(
              child: Image.network('https://fastly.picsum.photos/id/5/5000/3334.jpg?hmac=R_jZuyT1jbcfBlpKFxAb0Q3lof9oJ0kREaxsYV3MgCc',
              height: 300,
              width: 300,
              color: Colors.grey,
              colorBlendMode: BlendMode.darken,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.rectangle, 
                border: Border.all(color: Colors.black,width: 2),  
              ),
          
              child:
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const LoginScreen()),
                       );
                  }, 
                  child: const Text("Login"),
                  ),
               ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 50,
              width: 300, 
              decoration:  BoxDecoration(
                border: Border.all(color: Colors.black,width: 2), 
                color: Colors.amber, 
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const MySignUpScreen()),
                   );
                }, 
                child: const Text("Sign Up"),
                ),
            ),
          ),
        ],
      ),

    );
  }
}
