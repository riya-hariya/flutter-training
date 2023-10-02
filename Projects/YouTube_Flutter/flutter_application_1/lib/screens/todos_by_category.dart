import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/todo.dart';
import 'package:flutter_application_1/services/todoService.dart';

class TodosByCategory extends StatefulWidget {
  final String? category;
    const TodosByCategory({super.key, this.category});

  @override
  State<TodosByCategory> createState() => _TodosByCategoryState();
}

class _TodosByCategoryState extends State<TodosByCategory> {
  //List<Todo>_todoList = <Todo>[];
  final List<Todo>_todoList=<Todo>[];
  final TodoService _todoService=TodoService();


  @override
  void initState(){
    super.initState();
    getTodosByCategories();
  }

  getTodosByCategories() async{
    var todos=await _todoService.readTodosByCategory(widget.category);

    todos.forEach((i){
      setState(() {
        var model=Todo();
        model.title=i['title'];
        model.description=i['description'];
        model.tododate=i['tododate'];

        _todoList.add(model);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todos by category"),
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: _todoList.length,
            itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
                ),
                elevation: 8,
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_todoList[index].title ?? 'No title'),
                    ],
                  ),
                  subtitle: Text(_todoList[index].description ?? 'No category'),
                  trailing: Text(_todoList[index].tododate ?? 'No Date'),
                ),
              ),
            );
          },))
        ],
      ),
    );
  }
}