import 'dart:convert';
import 'package:digital_society_api/screens/MobileLayout/addMembers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyViewMembers extends StatefulWidget {
  const MyViewMembers({super.key});

  @override
  State<MyViewMembers> createState() => _MyViewMembersState();
}

class MembersAll {
  late String id;
  late String memberName;
  late String contactNum;
  late String houseNum;

  MembersAll(
      {required this.id,
      required this.memberName,
      required this.contactNum,
      required this.houseNum});

  factory MembersAll.fromJson(Map<String, dynamic> json) {
    return MembersAll(
        id: json['id'],
        memberName: json['name'],
        contactNum: json['contactnum'],
        houseNum: json['housenum']);
  }
}

Future<List<MembersAll>> fetchData() async {
  final Response = await http.get(
      Uri.parse("https://riyafirstapi.000webhostapp.com/get_members.php"));

  if (Response.statusCode == 200) {
    List result = json.decode(Response.body);
    return result.map((e) => MembersAll.fromJson(e)).toList();
  } else {
    throw Exception("Invalid Api");
  }
}

class _MyViewMembersState extends State<MyViewMembers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(202, 223, 240, 1),
      appBar: AppBar(
        title: Text("Members"),
      ),
      body: FutureBuilder<List<MembersAll>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.blue[180],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  elevation: 2,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text(snapshot.data![index].memberName),
                    subtitle: Text(snapshot.data![index].contactNum),
                    trailing: 
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.edit),
                          SizedBox(width: 10,),
                          Icon(Icons.delete),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
          else if(snapshot.hasError){
            return Text("${snapshot.error}");
          }
          return Center(child: CircularProgressIndicator(),);
        },
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyAddMembers(),
              ));
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
