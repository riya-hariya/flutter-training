import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/drawer_navigation.dart';
import 'package:flutter_application_1/screens/todo_screen.dart';
import 'package:flutter_application_1/services/todoService.dart';

import 'package:flutter_application_1/models/todo.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  TodoService? _todoService;
  
  List<Todo>_todoList = <Todo>[];

  @override
  initState(){
    super.initState();
    getAllTodos();
  }

  getAllTodos() async{
    _todoService = TodoService();
    _todoList=<Todo>[];

    var todos=await _todoService?.readTodos();

    todos.forEach((i){
      setState(() {
        var model=Todo();
        model.id=i['id'];
        model.title=i['title'];
        model.description=i['description'];
        model.category=i['category'];
        model.tododate=i['tododate'];
        model.isFinished=i['isFinished'];

        _todoList.add(model);
      });
    });
  }

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo SqFlite"),
      ),
      drawer: const DrawerNavigation(),
      body: ListView.builder(
        itemCount: _todoList.length,
        itemBuilder: (context, index) {
          return 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)
              ),
            child: ListTile(
            title:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(_todoList[index].title ?? 'No title'),
              ],
            ),
            subtitle: Text(_todoList[index].category ?? 'No Category'),
            trailing: Text(_todoList[index].tododate ?? 'No Date'),
            )
            ),
          );
        },
        ),
      floatingActionButton: FloatingActionButton(onPressed:() => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TodoScreen(),)),
      child: const Icon(Icons.add),
      ),
    );
  }
}