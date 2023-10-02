import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/todo.dart';
import 'package:flutter_application_1/services/categoryService.dart';
import 'package:flutter_application_1/services/todoService.dart';
import 'package:intl/intl.dart';


class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final _todoTitleController = TextEditingController();
  final _todoDescriptionController=TextEditingController();
  final _todoDateController = TextEditingController();
  
  var _selectedValue;
  
 final _categories = <DropdownMenuItem>[];
 //List<DropdownMenuItem>()=_categories;

@override
void initState(){
  super.initState();
  _load_categories();
}

_load_categories() async{
  var categoryService=CategoryService();
  var categories=await categoryService.readCategory();
  categories.forEach((category){
    setState(() {
      _categories.add(DropdownMenuItem(
        value: category['name'],
        child: Text(category['name']),
        ));
    });
  });
}



_selectedTodoDate(BuildContext context) async{
  DateTime? pickedDate=await showDatePicker(
    context: context,
    initialDate:  DateTime.now(),
    firstDate:  DateTime(2000),
    lastDate:  DateTime(2024));
  
   if(pickedDate!=null){
    print(pickedDate);
    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
        setState(() {
          _todoDateController.text=formattedDate;
        });
       }
}



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Todo"),
      ),
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _todoTitleController,
              decoration: const InputDecoration(
                labelText: 'Title',
                hintText: 'Write TODO title',
              ),
            ),
           
            TextField(
              controller: _todoDescriptionController,
              decoration: const InputDecoration(
                labelText: 'Description',
                hintText: 'Write TODO description',
              ),
            ),

            TextField(
             readOnly: true, 
             controller: _todoDateController,
             decoration: InputDecoration(
               labelText: 'Date',
               hintText: 'Pick a Date',
               prefixIcon: InkWell(
                 onTap: (){
                   FocusScope.of(context).requestFocus(FocusNode());
                   _selectedTodoDate(context);
                 },
                 child: const Icon(Icons.calendar_today),
               )
             ),
             ),
            DropdownButtonFormField(
              value: _selectedValue,
              items: _categories,
              hint: const Text('Category'),
              onChanged: (value){
                setState(() {
                  _selectedValue=value;
                });
              }
            ),
             
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),
              onPressed: () async{
                var todoObject=Todo();
                todoObject.title=_todoTitleController.text;
                todoObject.description=_todoDescriptionController.text;
                todoObject.isFinished=0;
                todoObject.category=_selectedValue.toString();
                todoObject.tododate=_todoDateController.text;

                var todoService=TodoService();
                var result=await todoService.saveTodo(todoObject);

                if(result>0){
                  final snackBar = SnackBar(
                  content: const Text('Saved Successfully'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                        },
                 ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
                
                print(result);
              },
               child: const Text("Save",style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}