import 'package:flutter/material.dart';

class MyNewAss4a extends StatelessWidget {
  const MyNewAss4a({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const BackButtonIcon(),
        title: const Text("Row widget - CrossAxisAlignment",
        style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("default(CrossAxisAlignment.center)",
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.start),

          //1st outer box
          Container(
            margin: const EdgeInsets.all(2),
            height: 50,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),

            //1st inner box
            child:
             Row(
               children: [
                 Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: const Text("Box",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,),
                ),

                //2nd inner box
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: const Text("Box",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,),
                ),

                //3rd inner box
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: const Text("Box",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,),
                ),
               ],
             ),
          ),

          //2nd Text
          const Padding(
            padding: EdgeInsets.only(top: 18),
            child: Text("Default (CrossAxisAlignment.start)",
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
          ),

          //2nd outer box
          Container(
            
            margin: const EdgeInsets.all(2),
            height: 50,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),

            //1st inner box
            child:
             Row(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: const Text("Box",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,),
                ),

                //2nd inner box
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: const Text("Box",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,),
                ),

                //3rd inner box
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: const Text("Box",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,),
                ),
               ],
             ),
          ),


          //3rd Text
          const Padding(
            padding: EdgeInsets.only(top: 18),
            child: Text("CrossAxisAlignment.end",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ),

          //3rd outer box
          Container(
            margin: const EdgeInsets.all(2),
            height: 50,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),

            //1st inner box
            child:
             Row(
              crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: const Text("Box",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,),
                ),

                //2nd inner box
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: const Text("Box",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,),
                ),

                //3rd inner box
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: const Text("Box",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,),
                ),
               ],
             ),
          ),


          //4th text
          const Padding(
            padding: EdgeInsets.only(top: 18),
            child: Text("Default (CrossAxisAlignment.stretch)",
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
          ),

          //4th outer box
          Container(
            margin: const EdgeInsets.all(2),
            height: 50,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),

            //1st inner box
            child:
             Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
                 Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: const Text("Box",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,),
                ),

                //2nd inner box
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: const Text("Box",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,),
                ),

                //3rd inner box
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: const Text("Box",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,),
                ),
               ],
             ),
          ),

          //5th Text
          const Padding(
            padding: EdgeInsets.only(top: 18),
            child: Text("Default (CrossAxisAlignment.baseline)",
            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
          ),

          //5th outer box
           Container(
            margin: const EdgeInsets.all(2),
            height: 50,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),
            child: 
            const Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,

              children: [
                Text("Hello",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 50),textAlign: TextAlign.start,),
                Text("Hello",style: TextStyle(color: Colors.black,fontSize:25 ),),
                Text("Hello",style: TextStyle(color: Colors.black,fontSize:12 ),)

              ],
            ),
           ),


          //6th Text
          const Padding(
            padding: EdgeInsets.only(top:18.0),
            child: Text("CrossAxisAlignment.center and MainAxisAlignment.center",style: TextStyle(fontWeight: FontWeight.bold),),
          ),

          //6th outer Box
          Container(
            margin: const EdgeInsets.all(2),
            height: 50,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
            ),

            //1st inner box
            child:
             Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: const Text("Box",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,),
                ),

                //2nd inner box
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: const Text("Box",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,),
                ),

                //3rd inner box
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )
                  ),
                  child: const Text("Box",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,),
                ),
               ],
             ),
          ),









        ],
      ),
    );
  }
}