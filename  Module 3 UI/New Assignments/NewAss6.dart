import 'package:flutter/material.dart';

class MyNewAss6 extends StatelessWidget {
  const MyNewAss6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(  
        title: const Text("Contacts"),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 30,),
          Icon(Icons.more_vert),
          SizedBox(width: 30,),
        ],
        ),

        body: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.person),
                ),
                
                Flexible(
                  child: 
                  Padding(
                    padding: EdgeInsets.all(8.0),
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
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.call),
                ),

                const Flexible(
                  child: 
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Phone",
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 10,),

                Flexible(
                  child: 
                  TextField(
                    
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "Area",
                      suffix: DropdownButton(items: List.empty(), onChanged: (value) {  
                      },),
                    ),
                  ),
                )
              ],
            ),


            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  Flexible(
                    child: 
                    Padding(
                      padding: EdgeInsets.all(10.0),
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

            const Padding(
              padding: EdgeInsets.only(top: 20.0),
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
                  const SizedBox(width: 40,),
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "State",
                        suffix: DropdownButton(items: List.empty(), onChanged: (value) {
                        },),
                        
                      ),
                    ),
                  ),

                  const Flexible(child: 
                  Padding(
                    padding: EdgeInsets.all(18.0),
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

            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
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

            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
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