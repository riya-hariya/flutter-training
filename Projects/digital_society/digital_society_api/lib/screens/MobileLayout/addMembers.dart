import 'package:digital_society_api/widgets/button.dart';
import 'package:digital_society_api/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyAddMembers extends StatefulWidget {
  MyAddMembers({super.key});

  @override
  State<MyAddMembers> createState() => _MyAddMembersState();
}

class _MyAddMembersState extends State<MyAddMembers> {
  TextEditingController nameController = TextEditingController();
  TextEditingController houseNumberController = TextEditingController();
  TextEditingController contactNumController = TextEditingController();

  insertNewData(String name, String contactnum, String housenum) async {
    //var uri;
    var response = await http.post(
        Uri.parse("https://riyafirstapi.000webhostapp.com/insert_member.php"),
        body: {"name": name, "contactnum": contactnum, "housenum": housenum});
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(202, 223, 240, 1),
      appBar: AppBar(
        title: Text("Add Members"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Member name
            SizedBox(
              height: 10,
            ),
            Text(
              "Member Name",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            MyTextfield(
                controller: nameController,
                hintText: "Full Name",
                obscureText: false),

            //House Number
            SizedBox(
              height: 10,
            ),
            Text(
              "House Number",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            MyTextfield(
                controller: houseNumberController,
                hintText: "A101",
                obscureText: false),

            //Contact Number
            SizedBox(
              height: 10,
            ),
            Text("Contact Number",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 5,
            ),
            MyTextfield(
                controller: contactNumController,
                hintText: "989*****90",
                obscureText: false),

            //save button
            Center(
              child: MyButton(
                childText: "Save",
                onPress: () {
                  insertNewData(
                      nameController.text.toString(),
                      contactNumController.text.toString(),
                      houseNumberController.text.toString());
                  nameController.clear();
                  contactNumController.clear();
                  houseNumberController.clear();

                  //success snackbar
                  final snackBar = SnackBar(
                    content: const Text('Successfully saved!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  ); //success snackbar
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
            )
          ]
        ),
      )),
    );
  }
}
