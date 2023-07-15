import 'package:flutter/material.dart';

class MyNewAss3b extends StatelessWidget {
  const MyNewAss3b({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Column Widget Alignment"),
        leading: BackButtonIcon(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "* CrossAxisAlignment",
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "start",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "center",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "end",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "stretch",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //1st outer box
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.all(10),
                  height: 140,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //1st inner blue box
                      Container(
                        height: 30,
                        width: 70,
                        alignment: Alignment.center,
                        child: Text(
                          "Box",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                      ),
                      //2nd inner blue box
                      Container(
                        height: 30,
                        width: 70,
                        alignment: Alignment.center,
                        child: Text(
                          "Box",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                      ),

                      //3rd inner blue box
                      Container(
                        height: 30,
                        width: 70,
                        child: Text(
                          "Box",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                      ),
                    ],
                  ),
                ),
                //2nd outer box
                Container(
                  height: 140,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      //1st inner box
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                        alignment: Alignment.center,
                        child: Text(
                          "Box",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      //2nd inner box
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                        alignment: Alignment.center,
                        child: Text(
                          "Box",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      //3rd inner box
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                        alignment: Alignment.center,
                        child: Text(
                          "Box",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),

                //3rd outer box
                Container(
                  height: 140,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  //1st inner box
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                        alignment: Alignment.center,
                        child: Text(
                          "Box",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      //2nd inner box
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                        alignment: Alignment.center,
                        child: Text(
                          "Box",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      //3rd inner loop
                      Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                        alignment: Alignment.center,
                        child: Text(
                          "Box",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),

                //4th outer box
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 140,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        //1st inner box
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              )),
                          alignment: Alignment.center,
                          child: Text(
                            "Box",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),

                        //2nd inner box
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              )),
                          alignment: Alignment.center,
                          child: Text(
                            "Box",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),

                        //3rd inner box
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              )),
                          alignment: Alignment.center,
                          child: Text(
                            "Box",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Text(
            "* MainAxisAlignment",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("start"),
              Text("center"),
              Text("end"),
            ],
          ),

          //2nd row 1st container
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 140,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //1st inner blue box
                    Container(
                      height: 30,
                      width: 70,
                      alignment: Alignment.center,
                      child: Text(
                        "Box",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                    ),
                    //2nd inner blue box
                    Container(
                      height: 30,
                      width: 70,
                      alignment: Alignment.center,
                      child: Text(
                        "Box",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                    ),

                    //3rd inner blue box
                    Container(
                      height: 30,
                      width: 70,
                      child: Text(
                        "Box",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                    ),
                  ],
                ),
              ),

              //2nd outer box
              Container(
                margin: EdgeInsets.all(10),
                height: 140,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //1st inner blue box
                    Container(
                      height: 30,
                      width: 70,
                      alignment: Alignment.center,
                      child: Text(
                        "Box",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                    ),
                    //2nd inner blue box
                    Container(
                      height: 30,
                      width: 70,
                      alignment: Alignment.center,
                      child: Text(
                        "Box",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                    ),

                    //3rd inner blue box
                    Container(
                      height: 30,
                      width: 70,
                      child: Text(
                        "Box",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                    ),
                  ],
                ),
              ),

              //3rd outer box
              Container(
                  margin: EdgeInsets.all(10),
                  height: 140,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //1st inner blue box
                      Container(
                        height: 30,
                        width: 70,
                        alignment: Alignment.center,
                        child: Text(
                          "Box",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                      ),
                      //2nd inner blue box
                      Container(
                        height: 30,
                        width: 70,
                        alignment: Alignment.center,
                        child: Text(
                          "Box",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                      ),

                      //3rd inner blue box
                      Container(
                        height: 30,
                        width: 70,
                        child: Text(
                          "Box",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                      ),
                    ],
                  ),
                ),
            ]
          ),

                //3rd row Container
                Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("spaceAround"),
              Text("spaceBetweeb"),
              Text("spaceEvenly"),
            ],
          ),

          //3rd row 1st container
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 140,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //1st inner blue box
                    Container(
                      height: 30,
                      width: 70,
                      alignment: Alignment.center,
                      child: Text(
                        "Box",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                    ),
                    //2nd inner blue box
                    Container(
                      height: 30,
                      width: 70,
                      alignment: Alignment.center,
                      child: Text(
                        "Box",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                    ),

                    //3rd inner blue box
                    Container(
                      height: 30,
                      width: 70,
                      child: Text(
                        "Box",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                    ),
                  ],
                ),
              ),

              //3rd row 2nd outer box
              Container(
                margin: EdgeInsets.all(10),
                height: 140,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //1st inner blue box
                    Container(
                      height: 30,
                      width: 70,
                      alignment: Alignment.center,
                      child: Text(
                        "Box",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                    ),
                    //2nd inner blue box
                    Container(
                      height: 30,
                      width: 70,
                      alignment: Alignment.center,
                      child: Text(
                        "Box",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                    ),

                    //3rd inner blue box
                    Container(
                      height: 30,
                      width: 70,
                      child: Text(
                        "Box",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          )),
                    ),
                  ],
                ),
              ),

              //3rd row 3rd outer box
              Container(
                  margin: EdgeInsets.all(10),
                  height: 140,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //1st inner blue box
                      Container(
                        height: 30,
                        width: 70,
                        alignment: Alignment.center,
                        child: Text(
                          "Box",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                      ),
                      //2nd inner blue box
                      Container(
                        height: 30,
                        width: 70,
                        alignment: Alignment.center,
                        child: Text(
                          "Box",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                      ),

                      //3rd inner blue box
                      Container(
                        height: 30,
                        width: 70,
                        child: Text(
                          "Box",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                      ),
                    ],
                  ),
                ),





            ],
          )
        
          
        ]
      ),
    );
  }
}
