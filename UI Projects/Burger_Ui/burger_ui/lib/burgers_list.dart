import 'package:flutter/material.dart';

class BurgersList extends StatefulWidget {
  const BurgersList({super.key});

  @override
  State<BurgersList> createState() => _BurgersListState();
}

class _BurgersListState extends State<BurgersList> {
  int items =10;


  @override
  Widget build(BuildContext context) {
  return 
    Padding(
      padding: const EdgeInsets.only(top:400.0),
      child: Container(
       
        height: 240,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  width: 200,
                  height: 240,
                  child: 
                  GestureDetector(
                    onTap: (){},
                    child: Card(
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                        bottomLeft:Radius.circular(45),
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45)
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          children: [
                            
                            Text("Burger",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          Spacer(),
                          Row(
                            children: [
                              Spacer(),
                              Text("15,95 \$ CAN",style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                                
                                child: Icon(Icons.add)),
                            ],
                          )
                          
                          ],
                        ),
                    ),
                    ),
                  ),
                ),
                Positioned(child: GestureDetector(
                  onTap: () {
                    
                  },
                  child: index.isEven? 
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: 
                    Center(child: Image.asset("assets/chickenBurger.jpeg",height: 150,width:100 ,)),
                  ):
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Center(child: Image.asset("assets/baconBurger.jpeg",height: 150,width: 100,)),
                  ),
                ))
              ],
            );
          },),
      ),
    );
  }
}