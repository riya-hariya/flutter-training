import 'dart:convert';

import 'package:digital_society_api/screens/MobileLayout/addNotice.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyViewNotice extends StatefulWidget {
  const MyViewNotice({super.key});

  @override
  State<MyViewNotice> createState() => _MyViewMembersState();
}

class NoticeAll{
  late String id;
  late String noticeTitle;
  late String noticeDescription;


  NoticeAll({
    required this.id,
    required this.noticeTitle,
    required this.noticeDescription});

  factory NoticeAll.fromJson(Map<String,dynamic> json){
    return NoticeAll(id: json['id'],
     noticeTitle: json['noticetitle'],
      noticeDescription: json['noticedescripton']);
  }
}
Future<List<NoticeAll>> fetchData() async {
  final Response = await http.get(
      Uri.parse("https://riyafirstapi.000webhostapp.com/get_notice.php"));

  if (Response.statusCode == 200) {
    List result = json.decode(Response.body);
    return result.map((e) => NoticeAll.fromJson(e)).toList();
  } else {
    throw Exception("Invalid Api");
  }
}



class _MyViewMembersState extends State<MyViewNotice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(202, 223, 240, 1),
      appBar: AppBar(
        title: Text("Notice"),
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.blue[180],
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  elevation: 2,
                  child: ListTile(
                    leading: Icon(Icons.list),
                    title: Text(snapshot.data![index].noticeTitle),
                    subtitle: Text(snapshot.data![index].noticeDescription),
                    trailing: Expanded(
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
        },),
      
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyAddNotice(),));
          },
          child: Icon(Icons.add,),
          ),
    );
  }
}