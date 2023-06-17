import 'package:flutter/material.dart';

class MyAssignment49a extends StatelessWidget {
  const MyAssignment49a({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Container(

      child:
      Column(
        children:
        [
        Image.network("https://as2.ftcdn.net/v2/jpg/02/94/82/71/1000_F_294827158_ly47TaOT7Xbt5PkUAhSA9fOwjEUneqhG.jpg",
        height: 300,
        width: 600,
          ),

          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text("Oeschinen Lake Campground",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                    Text("Kandersteg Switzerland",
                    style: TextStyle(
                      color: Colors.grey,
                      ),
                    )
                  ],)
                ),
                Icon(
                  Icons.star,
                  color: Colors.red[500],
                ),
                Text("41"),
            ],
          ),
          
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          
           children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.blue,
                      ),
                      Text("Call",
                      style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),

                Column(
                  children: [
                    Icon(
                      Icons.route,
                      color: Colors.blue,
                    ),
                    Text("Route",
                    style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),

                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                    ),
                    Text("Share",
                    style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ), 
              ],
            ),
            Row(
              children: [
                Text('Lake Oeschinen lies at the foot of the Bluemilsalp in the Bernese Alps'
                'situated 1578 meters above sea level,it is one of the largest Alpine Lakers'),
              ],
            )
          ],
        )
      ),
      );
  }
}