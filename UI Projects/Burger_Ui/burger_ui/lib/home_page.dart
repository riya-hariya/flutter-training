import 'package:burger_ui/burgers_list.dart';
import 'package:burger_ui/categories.dart';
import 'package:flutter/material.dart';

class HomeBurger extends StatefulWidget {
  const HomeBurger({super.key});

  @override
  State<HomeBurger> createState() => _HomeBurgerState();
}

class _HomeBurgerState extends State<HomeBurger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: () {},
      child: Icon(Icons.home),),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
        child: Container(
          color: Colors.black,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.add_alert,color: Colors.white,)),
                IconButton(onPressed: () {}, icon: Icon(Icons.turned_in,color: Colors.white,)),
              ],
            ),
          ),
        ),
      ),
        appBar: AppBar(
          title: Text("Deliver Me"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
          ],
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ),
        body: 
        Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 250,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(45)),
                      boxShadow: [BoxShadow(blurRadius: 2)]),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/dog.webp'),
                            ),
                            radius: 35,
                            backgroundColor: Colors.white70,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              Text(
                                "Wanted Jack",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black54,
                                ),
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  "Gold Member",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Text("154 \$ CAN",style: TextStyle(color: Colors.white),)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
        

            Padding(
              padding: const EdgeInsets.only(top:225.0),
              child: 
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 50),
                elevation: 3,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'What does your belly want to eat?',
                    suffixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.only(left: 20)
                  ),
                ),
              ),
            ), 
          Categories(),
          BurgersList(),
            
          ],
        )
         
        
        );
  }
}
