import 'package:digital_society_api/widgets/button.dart';
import 'package:digital_society_api/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyAddEvents extends StatefulWidget {
  const MyAddEvents({super.key});

  @override
  State<MyAddEvents> createState() => _MyAddEventsState();
}

class _MyAddEventsState extends State<MyAddEvents> {
  TextEditingController eventTitlecontroller = TextEditingController();
  TextEditingController _eventDateController = TextEditingController();

  _selectedEventDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2024));

    if (pickedDate != null) {
      print(pickedDate);
      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      setState(() {
        _eventDateController.text = formattedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(202, 223, 240, 1),

      appBar: AppBar(
        title: Text("Add Events"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 15,),
            Row(
              children: [
                //Event Title
                Text("Event Title :"),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: MyTextfield(
                        controller: eventTitlecontroller,
                        hintText: "Add title",
                        obscureText: false)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text("Select Date"),
                SizedBox(width: 10,),
                //Datepicker
                Expanded(
                  child: TextField(
                    readOnly: true,
                    controller: _eventDateController,
                    decoration: InputDecoration(
                        labelText: 'Date',
                        hintText: 'Pick a Date',
                        prefixIcon: InkWell(
                          onTap: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                            _selectedEventDate(context);
                          },
                          child: const Icon(Icons.calendar_today),
                        )),
                  ),
                ),
              ],
            ),//date picker row
            SizedBox(height: 20,),
            
            //SaveButton
            Center(
              child: MyButton(childText: "Save", onPress: () {
                
              },),
            )


          ],
        ),
      ),
    );
  }
}
