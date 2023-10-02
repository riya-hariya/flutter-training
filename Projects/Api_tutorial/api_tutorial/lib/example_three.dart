import 'dart:convert';

import 'package:api_tutorial/Models/users_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {


  List<UserModel> userList = [];
  Future<List<UserModel>> getUsersApi() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data= jsonDecode(response.body.toString());

    if(response.statusCode==200){
      for(Map i in data){
        
      }
      return userList;
    }
    else{
      return userList;
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api course'),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}