import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/categoriesScreen.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/todos_by_category.dart';
import 'package:flutter_application_1/services/categoryService.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({super.key});

  @override
  State<DrawerNavigation> createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  //List<Todo>_todoList = <Todo>[];
  
  final List<Widget>_categoryList=<Widget>[];

  final CategoryService _categoryService=CategoryService();

  @override
  initState(){
    super.initState();
    getAllCategories();
  }

  getAllCategories() async {
    var categories = await _categoryService.readCategory();

    categories.forEach((i){
      setState(() {
        _categoryList.add(
          InkWell(
            onTap: () => Navigator.push(
              context,
             MaterialPageRoute(
              builder: (context) => TodosByCategory(category: i['name'],))),
            child: ListTile(
            title:Text(i['name'])),
          ));
      });
    });
    print(_categoryList);
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/woman-7905926_1280.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                accountName: Text("Riya Ved"),
                accountEmail: Text("riyaved530@gmail.com")
                ),

                 ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("Home"),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomeScreen(),)),
                ),

                  ListTile(
                  leading: const Icon(Icons.view_list),
                  title: const Text("Categories"),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CategoriesScreen(),)),
                ),

                const Divider(),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ..._categoryList,
                  ],
                )
                
              ]
            );
          }
        )  )       
    );    
    
  }
}