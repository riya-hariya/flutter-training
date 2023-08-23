import 'package:flutter/material.dart';

class NewAssign2 extends StatelessWidget {
  const NewAssign2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

           Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Padding(
                     padding: const EdgeInsets.all(10),
                     child: Container(
                     height: 100,
                     width: 700,
                     color: const Color.fromARGB(255, 47, 129, 49),
                    ),
                  ),
                )    
            ],
            ),
          

          Row(
             children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                    ),
                  ),
                      
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 100,
                        width: 500,
                        color: Colors.red,
                      ),
                    ),
                  )     
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
               Flexible(
                flex: 1,
                 child: Container(
                  height: 400,
                  width: 600,
                  color: Colors.purple, 
                 ),
               )
              ],),
          ),

          Expanded(
            flex: 1,
            child: Row(
             children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 100,
                    width: 600,
                    color: Colors.blue[300],
                  ),
                ),
              )
             ],
            ),
          )
        ],
      ),
    );
  }
}