import 'dart:async';

import 'package:figma_ui/widgets/circleAvatar.dart';
import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;


class MyFirstScreen extends StatefulWidget {
  final String name;
  const MyFirstScreen({super.key,required this.name});

  @override
  State<MyFirstScreen> createState() => _MyFirstScreenState();
}


class _MyFirstScreenState extends State<MyFirstScreen> {
  
  Timer? _timer;
  Duration _remainingTime = const Duration(hours: 144);
 
  String leadUser = 'terry_dias';
  int netCoins = 1100;
  int grossCoins = 2100;

 @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime.inSeconds > 0) {
        setState(() {
          _remainingTime = _remainingTime - Duration(seconds: 1);
        });
      } else {
        _timer?.cancel();
        // Timer has expired, perform your desired action here
        print("Timer has expired.");
      }
    });
  }

  String formatRemainingTime(Duration duration) {
    final hours = duration.inHours % 144;
    final minutes = duration.inMinutes % 60;
    final seconds = duration.inSeconds % 60;
    return '$hours : $minutes : $seconds';
  }
  


  void handleLeadPlus100Click() {
    setState(() {
      netCoins += 100; 
      grossCoins = grossCoins+netCoins; // Implement this function
      leadUser='${widget.name}';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                color: const Color.fromRGBO(255, 255, 255, 1),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Flexible(
                    child: Row(
                      //from men circleAvatar to 12:10pm
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            MyCircleAvatar(
                              img: AssetImage('assets/men1.jpeg'),
                              maxRadius: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "alfredo_roser1",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "6 June 2021, 12:10 pm",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
          
                        //from coins
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    MyCircleAvatar(
                                      img: AssetImage('assets/coins.png'),
                                      maxRadius: 10,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "$grossCoins",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Gross Coins",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            MyCircleAvatar(
                                img: AssetImage('assets/growth-chart.png'),
                                maxRadius: 10),
                            SizedBox(
                              width: 7,
                            ),
                            Icon(Icons.more_vert),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ), //Upper row container
          
              //image
              Container(
                height: 360,
                width: double.maxFinite,
                child: Image(
                  image: AssetImage('assets/couplepic.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
          
              //flash comment share
              Padding(
                padding: const EdgeInsets.only(left:8.0,top: 5),
                child:
          
                    //flash comment share
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        MyCircleAvatar(
                            img: AssetImage('assets/flash.png'), maxRadius: 10),
                        SizedBox(
                          width: 10,
                        ),
                        MyCircleAvatar(
                            img: AssetImage('assets/chat-bubble.png'),
                            maxRadius: 10),
                        SizedBox(
                          width: 10,
                        ),
                        MyCircleAvatar(
                            img: AssetImage('assets/share.png'), maxRadius: 10),
                      ],
                    ),
          
                    //Lead Button
                    Padding(
                      padding: const EdgeInsets.only(right:5.0,top: 5),
                      child: Row(
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.purple[800])),
                              onPressed: () {
                                setState(() {
                                  handleLeadPlus100Click();
                                });
                              },
                              child: Row(
                                children: [
                                  Text(
                                    "Lead+100",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  MyCircleAvatar(
                                      img: AssetImage('assets/letter-u.png'),
                                      maxRadius: 10)
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                ), ),
          
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text("50 interested",style: TextStyle(color: Colors.grey),),
            ),
          
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        MyCircleAvatar(img: AssetImage('assets/men2.jpg'), maxRadius: 20),
                        SizedBox(width: 7,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                MyCircleAvatar(
                                  img: AssetImage('assets/coins.png'),
                                  maxRadius: 10,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "$netCoins",
                                  style: TextStyle(
                                      color: Colors.black,
                                      ),
                                ),
                                SizedBox(
                                width: 7,
                                ),
                               MyCircleAvatar(
                            img: AssetImage('assets/growth-chart.png'),
                            maxRadius: 10),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "$leadUser",
                                  style: TextStyle(color: Colors.black),
                                ),
          
                                SizedBox(
                              width: 5,
                            ),
                            Text(
                              "in Lead",
                              style: TextStyle(color: Colors.grey),
                            )
                              ],
                            ),   
                          ],
                        ),
                      ],
                    ), 
          
                    Row(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Text(formatRemainingTime(_remainingTime)),
                      ),
          
                     /* Text(":"),
          
          
                      Container(
                        color: Colors.white,
                        child: Center(child: Text("00")),
                      ),
                      Text(":"),
          
                      Container(
                        color: Colors.white,
                        child: Center(child: Text("00")),
                      ),*/
                    ],
                ),
                  ],
                ),
              ),
            ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("@ alfredo r... If everything seems under control, you're going fast enough.Be Fast, Be Curious..!",maxLines: 2,),
          )
          
          
            ],
          ),
        ),
      ),
    );
  }
}
