import 'package:core_practicals/screens/OFLINE_DATABASE/models/User.dart';
import 'package:core_practicals/screens/OFLINE_DATABASE/services/UserService.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EditUser extends StatefulWidget {
  final User user;
  const EditUser({Key? key, required this.user}) : super(key: key);

  @override
  State<EditUser> createState() => _EditUserState();
}

class _EditUserState extends State<EditUser> {
  var _nameController = TextEditingController();
  var _mobileController = TextEditingController();

  bool _validateName = false;
  bool _validateContact = false;
  var _userService = UserService();

  @override
  void initState() {
    setState(() {
      _nameController.text = widget.user.name ?? "";
      _mobileController.text = widget.user.contact ?? "";
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit User"),
        backgroundColor: Color.fromARGB(255, 6, 6, 6),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.teal,
          width: double.maxFinite,
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text("EDIT USER",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _nameController,
                // autovalidateMode: AutovalidateMode.always,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 110, 26, 26),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    hintText: "Enter First name ",
                    labelText: "Name",
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black))
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    errorText: _validateName ? "Field can't be empty" : null,
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black, width: 2.0))),
                cursorColor: Colors.black,

                onSaved: (String? val) {
                  setState(() {
                    // set name value in specific variable
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _mobileController,
                // autovalidateMode: AutovalidateMode.always,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.call,
                      color: Colors.black,
                    ),
                    hintText: "Enter Contact Number ",
                    labelText: "Number",
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    // focusedBorder: OutlineInputBorder(
                    //     borderSide: BorderSide(color: Colors.black))
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    errorText: _validateContact ? "Field must required " : null,
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 110, 26, 26),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black, width: 2.0))),
                cursorColor: Colors.black,

                onSaved: (String? val) {
                  setState(() {});
                },
              ),
              SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        // set name value in specific variable
                        // for validation below code
                        _nameController.text.isEmpty
                            ? _validateName = true
                            : _validateName = false;

                        _mobileController.text.isEmpty
                            ? _validateContact = true
                            : _validateContact = false;
                      });

                      if (_validateName == false && _validateContact == false) {
                        var _user = User();
                        _user.id = widget.user.id;
                        _user.name = _nameController.text;
                        _user.contact = _mobileController.text;

                        var result = await _userService.updateUser(_user);
                        print("---> result = ");
                        print(result);

                        Fluttertoast.showToast(
                            msg: "Submitted",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 2,
                            textColor: Color.fromARGB(255, 245, 245, 245),
                            backgroundColor: Colors.green[800]);

                        //Navigator.pop(context, result);
                        Navigator.pop(context, result);
                      }
                    },
                    child: Text(
                      "Update Details",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 13, 110, 99),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _nameController.text = "";
                        _mobileController.text = "";
                      });
                    },
                    child: Text(
                      "Clear Data",
                      style: TextStyle(
                          color: Colors.teal, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
