import 'package:flutter/material.dart';

class MyNewAss6 extends StatelessWidget {
  const MyNewAss6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(  
        title: Text("Contacts"),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 30,),
          Icon(Icons.more_vert),
          SizedBox(width: 30,),
        ],
        ),

        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.person),
                ),
                
                Flexible(
                  child: 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Name",
                      ),
                    ),
                  ),
                )
              ],
            ),
            
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.call),
                ),

                Flexible(
                  child: 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Phone",
                      ),
                    ),
                  ),
                ),

                SizedBox(width: 10,),

                Flexible(
                  child: 
                  TextField(
                    
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Area",
                      suffix: DropdownButton(items: List.empty(), onChanged: (value) {  
                      },),
                    ),
                  ),
                )
              ],
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  Flexible(
                    child: 
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Address",
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  SizedBox(width: 40),
                  Flexible(child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "City"
                    ),
                  ))
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  SizedBox(width: 40,),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "State",
                        suffix: DropdownButton(items: List.empty(), onChanged: (value) {
                        },),
                        
                      ),
                    ),
                  ),

                  Flexible(child: 
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Zip"
                      ),
                    ),
                  )),
                ],
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.email),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email",
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.cake),
                  ),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Birthday",
                        suffixIcon: Icon(Icons.calendar_month),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
    );
  }
}