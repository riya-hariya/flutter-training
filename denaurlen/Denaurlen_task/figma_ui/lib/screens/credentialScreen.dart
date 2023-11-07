import 'package:figma_ui/screens/valuationScreen.dart';
import 'package:figma_ui/widgets/button.dart';
import 'package:figma_ui/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyCredentials extends StatefulWidget {
  const MyCredentials({super.key});

  @override
  State<MyCredentials> createState() => _MyCredentialsState();
}

class _MyCredentialsState extends State<MyCredentials> {
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  insertNewData(String name, String username) async {
    //var uri;
    var response = await http.post(
        Uri.parse("https://riyasproject.000webhostapp.com/insert_data.php"),
        body: {"name": name, "username": username});
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            SizedBox(height: 30,),

            Text(
              "Enter the credentials",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),
            ),

            //name
            SizedBox(height: 35,),
            MyTextfield(hinttxt: "Enter your name", controller: nameController),


            //username
            SizedBox(height: 15,),
            MyTextfield(hinttxt: "Enter your username", controller: usernameController),


            //submit button
            SizedBox(height: 25,),
            Center(
              child: 
              Container(
                height: 50,
                width: double.maxFinite,
                child: MyButton(childText: "Submit", onPress: () { 
                  String name=nameController.text.toString(); 
                  insertNewData(
                      nameController.text.toString(),
                      usernameController.text.toString());
                
                  
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyFirstScreen(name: name),));
                },),
              ),
            ),
              
          ],
          ),
        )),
    );
  }
}
