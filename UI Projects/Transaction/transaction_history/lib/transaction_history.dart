import 'package:flutter/material.dart';

class TransHistory extends StatefulWidget {
  const TransHistory({super.key});

  @override
  State<TransHistory> createState() => _TransHistoryState();
}

class _TransHistoryState extends State<TransHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: Text("Transactions History",style: TextStyle(color: Colors.black),),
      ),
      body: SafeArea(
        child: 
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10,top: 20),
                    height: 150,
                    width: 300,
                   decoration: BoxDecoration(
                     color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                   ),
                   child: 
                   Column( //green column
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
                        child: Icon(Icons.call_received)),
                      SizedBox(height: 5,),
                      Text("Income",style: TextStyle(color: Colors.white),),
                      SizedBox(height: 5,),
                      Text("&22,400.00",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)

                    ],
                   )//green column
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10,top: 20),
                    height: 150,
                    width: 300,
                   decoration: BoxDecoration(
                     color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                   ), 
                   child: 
                   Column( //pink column
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
                        child: Icon(Icons.arrow_outward)),
                      SizedBox(height: 5,),
                      Text("Expenses",style: TextStyle(color: Colors.white),),
                      SizedBox(height: 5,),
                      Text("&32415.00",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                   )//green colu
                  ),
                ],
              ),

              Container(
                height: 300,
                width: 550,
                child: Image.asset("assets/barchart.png"),
              ),

            SizedBox(height: 10,),

            Text("Recent Transactions",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),


            //1st trans row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                         color: Colors.red,
                         borderRadius: BorderRadius.circular(12),
                      ),
                     
                      child: Center(child: Icon(Icons.arrow_upward,color: Colors.white,))),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Transfer to CDC",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          SizedBox(height: 4,),
                           Text("Aug 12,2023",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ],
                ),
                Text("-&200.75",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
              ],
            ),
            //2nd row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                         color: Colors.green,
                         borderRadius: BorderRadius.circular(12),
                      ),
                     
                      child: Center(child: Icon(Icons.arrow_downward,color: Colors.white,))),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Transfer from Angola.W",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          SizedBox(height: 4,),
                           Text("Aug 12,2023",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ],
                ),

                Text("&32.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
              ],
            )//2ndtrans row
              
            ],
          ),
        ),
      ),


    );
  }
}