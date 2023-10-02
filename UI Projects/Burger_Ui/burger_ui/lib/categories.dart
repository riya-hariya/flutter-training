import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
 
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int current_selected_item=0;
  @override
  Widget build(BuildContext context) {
    int items=10;


    return  Padding(
      padding: const EdgeInsets.only(top:280.0,left: 20),
      child: Container(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) => Stack(
          
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: index==0 ? 10 : 0,right: 10),
                  height: 90,
                  width: 90,
                  child:
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        current_selected_item=index;
                      });
                    },
                    child: Card(
                      color: index==current_selected_item ? Colors.black.withOpacity(0.7):Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                      margin: EdgeInsets.all(10),
                      elevation: 3,
                      child: Icon(Icons.fastfood,
                      color: index==current_selected_item?Colors.white : Colors.black.withOpacity(0.7),),),
                  ) ,
                )
              ],
            ),
            
            Positioned(
              bottom: 0,
              child: Container(margin: EdgeInsets.only(left: index==0 ? 20 : 0,right: 20),
              width: 90,
              child: Row(
                children: [
                  SizedBox(width: 25,),
                  Text("Burger"),
                  SizedBox(height: 10,)
                ],
              ),
              ),
            ),
          
          ],
        ),),
      ),
    );
  }
}