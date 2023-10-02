import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyGetAllStudentsApi extends StatefulWidget {
  const MyGetAllStudentsApi({super.key});

  @override
  State<MyGetAllStudentsApi> createState() => _MyGetAllStudentsApiState();
}

class StudentsAll{
  late int id;
  late String username;
  late String email;

  StudentsAll({
    required this.id,required this.username,required this.email
  });

  factory StudentsAll.fromjson(Map<String,dynamic> json){
    return StudentsAll(id: json['id'], username: json['username'], email: json['email']);
  }
}

Future<List<StudentsAll>> fetchData() async{
  final response = await http.get(
    Uri.parse('https://riyafirstapi.000webhostapp.com/get_students.php'));

    if(response.statusCode==200){
      List result= json.decode(response.body);
      return result.map((e) => StudentsAll.fromjson(e)).toList();
    }
    else{
      throw Exception("Invalid Api");
    }
}

class _MyGetAllStudentsApiState extends State<MyGetAllStudentsApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scaffold")),

      body: Text("Welcome to get all students"),
    );
  }
}