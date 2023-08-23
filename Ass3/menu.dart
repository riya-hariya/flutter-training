import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:myflutterprograms/Module4/Ass3/Meals.dart';

class MyMenu extends StatefulWidget {
  const MyMenu({super.key});

  @override
  State<MyMenu> createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> with TickerProviderStateMixin{
  TabController? _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 1);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }


static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Live chat ',
      style: optionStyle,
    ),
    Text(
      'Index 1: Profile',
      style: optionStyle,
    ),
    Text(
      'Index 2: Home',
      style: optionStyle,
    ),
    Text(
      'Index 3: Menu',
      style: optionStyle,
    ),
    Text(
      'Index 4: Favorites',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black),
        title: const Text("Our Menu",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        textAlign: TextAlign.center),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top:18,right: 8),
            child: badges.Badge( 
              badgeContent: const Text('1'),
              position: badges.BadgePosition.topEnd(),
              child: 
               const Padding(
                 padding: EdgeInsets.only(top:5),
                 child: Icon(Icons.shopping_cart,color: Colors.black,),
               )),
          ),
        ],
    
      bottom:  TabBar(
        labelColor: Colors.orange,
        unselectedLabelColor: Colors.black,
       
        indicatorColor: Colors.orange,
        controller: TabController(length: 3, vsync: this),
        tabs:const [ 
        Tab(
         child: Text("Meals",style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        Tab(
          child: Text("Sides",style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        Tab(
          child: Text("Snacks",style: TextStyle(fontWeight: FontWeight.bold),),
        ),  
        ]
      ),
  ),

  body: 
  SafeArea(
    child: TabBarView(
      controller: _tabController,
      children: const [
        MyMeals(),
      ],
      ),
  ),

    
bottomNavigationBar: BottomNavigationBar(
  currentIndex: _selectedIndex,

  selectedIconTheme: const IconThemeData(color: Colors.orange,),
  onTap: _onItemTapped,
  selectedItemColor: Colors.orange,
  items: const [

    BottomNavigationBarItem(
      icon: Icon(Icons.chat,color: Colors.black),
      label: 'Live chat',
      ),

      BottomNavigationBarItem(
        icon: Icon(Icons.person,color: Colors.black,),
        label: 'Profile'),

        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black),
        label: 'Home'),

        BottomNavigationBarItem(
          icon: Icon(Icons.restaurant_menu,color: Colors.black),
        label: 'Menu'),

        BottomNavigationBarItem(
          icon: Icon(Icons.favorite,color: Colors.black),
          label: 'Favorites',
          ),
  ],
  ),    
);    
  }
}