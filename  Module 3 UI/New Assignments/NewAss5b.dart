import 'package:flutter/material.dart';

class MyNewAss5b extends StatelessWidget {
  const MyNewAss5b({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonIcon(),
        title: const Text("Description"),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 50,),
          Icon(Icons.more_vert),
        ],
         ),
         body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: Text("Title",style: TextStyle(color: Colors.grey),),
            ),
            Padding(
              padding: EdgeInsets.all(6.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Title",
                  hintText: "Vintage Dress",
                ),
              ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Price",style: TextStyle(color: Colors.grey),),
                ),
                SizedBox(width: 350),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Location",style: TextStyle(color:Colors.grey),),
                ),
              ],
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: 
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "\$10",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
            
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Placeholder text",
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Description",style: TextStyle(color: Colors.grey),),
              ),

              Flexible(
                child:
                 Padding(
                   padding: EdgeInsets.all(6.0),
                   child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Description"
                    ),
                                 ),
                 ),
              ),

          ],
         ),

    );
  }
}