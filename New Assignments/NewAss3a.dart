import 'package:flutter/material.dart';

class NewAssign3a extends StatelessWidget {
  const NewAssign3a({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 400,
                  width: 600,
                  color: Colors.purple,
                  child: Text("#8D43B3",
                    style: TextStyle(fontSize: 22,color: Colors.white),
                    ),
                  ),
                ),
            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: 150,
                  color: Colors.green,
                  child: Text("#2AA650",
                    style: TextStyle(fontSize: 15,color: Colors.white,
                    ),
                  ),
                ),
              ),

                Column(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Container(
                          height: 20,
                          width: 200,
                          color: Colors.blue[300],
                          child: Text("#58AAE8",style: TextStyle(color: Colors.white,fontSize: 10),),
                        ),
                      ),
                    ),

                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 130,
                            width: 200,
                            color: Colors.red,
                            child: Text("#E74E33",style: TextStyle(color: Colors.white,fontSize: 20),),
                        ),
                      ),
                    )
                  ],
                ),
            ]
          ),
            
            Row(
              children: [
                Expanded(
                  child: Flexible(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.green,
                        height: 100,
                        width: double.maxFinite,
                        child: Text("#2AA650",style: TextStyle(fontSize: 22,color: Colors.white),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}