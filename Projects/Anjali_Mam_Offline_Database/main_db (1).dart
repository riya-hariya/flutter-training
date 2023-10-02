import 'package:core_practicals/screens/OFLINE_DATABASE/models/User.dart';
import 'package:core_practicals/screens/OFLINE_DATABASE/screen/add_user.dart';
import 'package:core_practicals/screens/OFLINE_DATABASE/screen/edit_user.dart';
import 'package:core_practicals/screens/OFLINE_DATABASE/screen/view_user.dart';
import 'package:core_practicals/screens/OFLINE_DATABASE/services/UserService.dart';
import 'package:flutter/material.dart';

class MyOFLINEDB extends StatefulWidget {
  const MyOFLINEDB({Key? key}) : super(key: key);

  @override
  State<MyOFLINEDB> createState() => _MyOFLINEDBState();
}

class _MyOFLINEDBState extends State<MyOFLINEDB> {
  late List<User> _userList = <User>[];

  final _userservice = UserService();

  @override
  void initState() {
    getAllUserList();
    super.initState();
  }

  _showSuccessSnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  getAllUserList() async {
    var users = await _userservice.readallUsers();
    _userList = <User>[];
    users.forEach((user) {
      setState(() {
        var userModel = User();
        userModel.id = user['id'];
        userModel.name = user['name'];
        userModel.contact = user['contact'];

        _userList.add(userModel);
      });
    });
  }

  _deleteFromDialog(BuildContext context, userid) {
    return showDialog(
        context: context,
        builder: (param) {
          return AlertDialog(
            title: Text(
              "Are you sure you want to delete ",
              style: TextStyle(color: Colors.teal, fontSize: 20),
            ),
            actions: [
              TextButton(
                  onPressed: () async {
                    var result = await _userservice.deleteUser(userid);
                    if (result != null) {
                      getAllUserList();
                      _showSuccessSnackBar("User deleted !!");
                    }
                    Navigator.pop(context);
                  },
                  child: Text("Delete"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.red,
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Close"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.teal,
                  )),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DB MANAGER"),
        backgroundColor: Color.fromARGB(255, 6, 6, 6),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: _userList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ViewUser(user: _userList[index])));
                },
                leading: Icon(
                  Icons.person,
                  size: 30,
                ),
                title: Text(_userList[index].name ?? ""),
                subtitle: Text(_userList[index].contact ?? ""),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          EditUser(user: _userList[index])))
                              .then((value) {
                            if (value != null) {
                              getAllUserList();
                              _showSuccessSnackBar("User Details Updated");
                            }
                          });
                        },
                        icon: Icon(
                          Icons.edit,
                          color: Colors.teal,
                        )),
                    IconButton(
                        onPressed: () {
                          // sending id to dialog
                          _deleteFromDialog(context, _userList[index].id);
                        },
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ))
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        foregroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddUser()))
              .then((value) {
            if (value != null) {
              getAllUserList();
              _showSuccessSnackBar("User Details Added");
            }
          });
        },
      ),
    );
  }
}
