import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get/get.dart'; // Import GetX

class getxMyHomePage extends StatefulWidget {
  @override
  _getxMyHomePageState createState() => _getxMyHomePageState();
}

class _getxMyHomePageState extends State<getxMyHomePage> {
  final RxString currentUser = "".obs; // Use RxString from GetX

  @override
  void initState() {
    super.initState();
    fetchRandomUser();
  }

  Future<void> fetchRandomUser() async {
    try {
      final response = await http.get(Uri.parse('https://randomuser.me/api/'));
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body.toString());
        final List<dynamic> results = data['results'];
        final Map<String, dynamic> user = results[0]['name'];

        print(user);
        print(user['first']);
        print(user['last']);

        currentUser.value = user['first'] + ' ' + user['last']; // Use .value with RxString
      } else {
        throw Exception('Failed to load user');
      }
    } catch (e) {
      print(e);
    }
  }

  void refreshUser() {
    fetchRandomUser();
  }

  final RxInt count = 0.obs; // Use RxInt from GetX

  void incrementCounter() {
    count.value++;
  }

  void decrementCounter() {
    if (count.value > 0) {
      count.value--;
    }
  }

  void resetCounter() {
    count.value = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Stack(
        children: [
          // reset button
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

          // - button
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

          // + button
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
        ],
      ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Obx(() => Text('${currentUser.value.split(' ')[0]}')),
                      SizedBox(
                        width: 5,
                      ),
                      Obx(() => Text('${currentUser.value.split(' ')[1]}')),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 5,
            ),
            // You have pushed...
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 13),
            ),

            // Count:
            Obx(() => Text(
                  '${count.value}',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.normal),
                )),

            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
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
