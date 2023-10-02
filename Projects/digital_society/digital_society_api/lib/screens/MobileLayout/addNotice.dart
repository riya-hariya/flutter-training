import 'package:digital_society_api/widgets/button.dart';
import 'package:digital_society_api/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyAddNotice extends StatefulWidget {
  
   MyAddNotice({super.key});

  @override
  State<MyAddNotice> createState() => _MyAddMembersState();
}

class _MyAddMembersState extends State<MyAddNotice> {
  TextEditingController noticeTitleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  
  

   insertNewData(String noticetitle, String noticedescription) async{
    print("=====??? insert data called ");
    // var uri;
    var response = await http.post(
      Uri.parse("https://riyafirstapi.000webhostapp.com/insert_data.php"),
      body: {"noticetitle": noticetitle,"noticedescripton": noticedescription}
    );
    print("--------------${response.body}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromRGBO(202, 223, 240, 1),

      appBar: AppBar(
        title: Text("Add Notice"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Notice Title
              SizedBox(height: 10,),
              Text("Notice title",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              MyTextfield(controller: noticeTitleController, hintText: "Notice", obscureText: false),
              
              //Description
              SizedBox(height: 10,),
              Text("Description",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              MyTextfield(controller: descriptionController, hintText: "Description", obscureText: false),

              
              
              //save button
              Center(
                child: MyButton(childText: "Save", onPress: () {
               print("button pressed");
               insertNewData(noticeTitleController.text.toString(),descriptionController.text.toString(),);
              
              noticeTitleController.clear();
              descriptionController.clear();
            
            //success snackbar  
            final snackBar = SnackBar(
            content: const Text('Successfully saved!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );//success snackbar
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
             },),
              )
            ],
          ),
        )),
    );
  }
}