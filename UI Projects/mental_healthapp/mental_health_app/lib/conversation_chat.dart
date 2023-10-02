import 'package:flutter/material.dart';
import 'package:mental_health_app/util/chat1.dart';
import 'package:mental_health_app/util/chat2.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column( //main screen column
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:36.0,vertical: 26),
            child: Row(//1st row
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue[300],
                  ),
                  child: Center(child: Icon(Icons.arrow_back,color: Colors.white,)),
                ),

                Column(
                  children: [
                    Text("Bobby Singer",style: TextStyle(color: Colors.white,fontSize: 18),),
                    SizedBox(height: 5,),
                    Text("Online",style: TextStyle(color: Colors.grey[350],fontWeight: FontWeight.bold),),
                  ],
                ),// Bobby singer online

                //Call icon
                Container(
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue[300],
                  ),
                  child: Center(child: Icon(Icons.call,color: Colors.white,)),
                ),
              ],//1st row
            ),//1st Row
          ),
          //1st row padding


          SizedBox(height: 40,),

          Expanded(
            child: Container(
              color: Colors.white,

              child: 
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:60.0),
                      child: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(12)),
                        
                        child: Center(
                          child: ChitChat1(chat1: "Hi Jason! how are you?"),
                        ),//hi jason
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left:60.0),
                      child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12)),
                          
                          child: Center(
                            child: ChitChat2(chat2: "I am good, thanks!how are you?"),
                          ),//hi jason
                        ),
                    ),
                  ],
                ),
              ),
            ),//white container
          )
        ],
        ),//main screeen column
      ),
    );
  }
}