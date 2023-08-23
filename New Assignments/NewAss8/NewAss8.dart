
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:counter_button/counter_button.dart';

class MyNewAss8 extends StatefulWidget {
  const MyNewAss8({super.key});

  @override
  State<MyNewAss8> createState() => _MyNewAss8State();
}

class _MyNewAss8State extends State<MyNewAss8> {
  int _cartItemNo = 0,_counterValue=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const BackButton(color: Colors.black),
          title: const Center(
              child: Text(
            "Colory",
            style: TextStyle(fontStyle: FontStyle.normal, color: Colors.black),
          )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18, top: 5),
              child: badges.Badge(
                  showBadge: _cartItemNo == 0 ? true : true,
                  position: badges.BadgePosition.topEnd(),
                  badgeStyle: const badges.BadgeStyle(
                    shape: badges.BadgeShape.circle,
                    badgeColor: Colors.deepPurple,
                  ),
                  badgeContent: Text(
                    _cartItemNo.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                      size: 30,
                    ),
                  )),
            ),
          ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                shape: BoxShape.rectangle,
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://fastly.picsum.photos/id/225/1500/979.jpg?hmac=jvGoek9ng_Y0GaBbzxN0KJhHaiPtk1VfRcukK8R8FxQ'),
                    fit: BoxFit.fitHeight,
                    colorFilter:
                        ColorFilter.mode(Colors.purple, BlendMode.darken)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text("Detailed Product",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "\$75.5",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, right: 10),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas libero sapien, imperdiet a ultricies at, vestibulum ac augue. Curabitur tempus dui porta tellus facilisis dignissim. Donec efficitur porta sem, sit amet lacinia libero cursus ut. In ut luctus est. Nullam et est lectus. Duis ultricies mollis elit a consectetur. Curabitur porttitor nibh imperdiet viverra molestie. Nunc eu viverra nunc. Integer luctus, nisi quis elementum mollis, nunc neque fringilla sem, vel fermentum nunc nisl quis est. Maecenas mollis lacus condimentum, varius ante ut, rhoncus justo. Aliquam cursus ex arcu, in pellentesque tellus sagittis id. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
              maxLines: 13,
              textAlign: TextAlign.justify,
            ),
          ),

          BottomAppBar(
            color: Colors.blue[30],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50,left: 28),
                  child: CounterButton(
                    loading:false,
                    onChange: (int val) {
                        setState(() {
                          print("======>>>>>> counter button clicked val = $val",);
                         _counterValue = val;
                         
                      });
                    },
                    count: _counterValue,
                    countColor: Colors.black,
                    buttonColor: Colors.black,
                    progressColor: Colors.blue,
                  ),
                ),

    
                Padding(
                  padding: const EdgeInsets.only(top: 50,right: 28),
                  child: FloatingActionButton.extended(
                    backgroundColor: Colors.deepPurple,
                    elevation: 5,
                    onPressed: () {
                      setState(() {
                      _cartItemNo=_counterValue;  
                      });
                      
                    },
                    label: const Text("Add to cart"), ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
