import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String currentUser = "";

  @override
  void initState() {
    super.initState();
    fetchRandomUser();
  }

  Future<void> fetchRandomUser() async {
    final response = await http.get(Uri.parse('https://randomuser.me/api/'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body.toString());
      //print(data);
      //final List<dynamic> results = data['results'];
      final List<dynamic> results = data['results'];
      // print(results);
      final Map<String, dynamic> user = results[0]['name'];

      print(user);
      print(user['first']);

      print(user['last']);
      setState(() {
        currentUser = user['first'] + ' ' + user['last'];
      });
    } else {
      throw Exception('Failed to load user');
    }
  }

  void refreshUser() {
    fetchRandomUser();
  }

  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  void resetCounter() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(children: [
        //reset button
        Positioned(
          bottom: 16.0,
          right: 16.0,
          child: FloatingActionButton(
            backgroundColor: Colors.blue,
            shape: CircleBorder(),
            onPressed: () {
              resetCounter();
            },
            child: Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
        ),

        //- button
        Positioned(
          bottom: 16.0,
          right: 86.0,
          child: FloatingActionButton(
            backgroundColor: Colors.blue,
            shape: CircleBorder(),
            onPressed: () {
              decrementCounter();
            },
            child: Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
        ),

        //+ button
        Positioned(
          bottom: 16.0,
          right: 156.0,
          child: FloatingActionButton(
            backgroundColor: Colors.blue,
            shape: CircleBorder(),
            onPressed: () {
              incrementCounter();
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ]),

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Codeflash Interview Task 2',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text('${currentUser.split(' ')[0]}'),
                    SizedBox(
                      width: 5,
                    ),
                    Text('${currentUser.split(' ')[1]}'),
                  ]),
                ],
              ),
            ),

            SizedBox(
              height: 5,
            ),
            //You have pushed...
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 13),
            ),

            //Count:
            Text(
              '$count',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.normal),
            ),

            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)))),
              onPressed: refreshUser,
              child: Text('Refresh Name'),
            ),
          ],
        ),
      ),
    );
  }
}
