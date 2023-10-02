import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/categoryService.dart';
import 'package:flutter_application_1/models/category.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  var i;
  final _category = Category();
  final _categoryService= CategoryService();

  @override
  void initState(){
    getAllCategories();
    super.initState();
  }

  final _categoryNameController = TextEditingController();
  final _categoryDescriptionController = TextEditingController();

  final _editCategoryNameController=TextEditingController();
  final _editCategoryDescriptionController=TextEditingController();

  List<Category> _categoryList = <Category>[];

  _editCategory(BuildContext context,categoryId) async{
    i = await _categoryService.readCategoryById(categoryId);
    setState(() {
      _editCategoryNameController.text=i[0]['name'] ?? 'No Name';
      _editCategoryDescriptionController.text=i[0]['description'] ?? 'No description';
    });
    _editFormDialog(context);
  }

  getAllCategories() async{
    _categoryList= <Category>[];
    var categories=await _categoryService.readCategory();

    categories.forEach((i){
      setState(() {
        var categoryModel = Category();
        categoryModel.id=i['id'];
        categoryModel.name=i['name'];
        categoryModel.description=i['description'];

        _categoryList.add(categoryModel);

      });
    });
  }

  _showFormDialog(BuildContext context){
    return showDialog(context: context,barrierDismissible:false,builder: (param){
      return AlertDialog(
        actions: [
          TextButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel",style: TextStyle(color: Colors.white)),
            ),

            TextButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),
            onPressed: () async{
              _category.name=_categoryNameController.text;
              _category.description=_categoryDescriptionController.text;

              var result=await _categoryService.saveCategory(_category);
              if(result>0) {
                print(result);
              }
                Navigator.pop(context);
                getAllCategories();
              
            },
            child: const Text("Save",style: TextStyle(color: Colors.white),),
            ),
        ],
        title: const Text("Categories Form"),
        content: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _categoryNameController,
                decoration: const InputDecoration(
                  hintText: 'Write a category',
                  labelText: 'Category',
                ),
              ),
              
              TextField(
                controller: _categoryDescriptionController,
                decoration: const InputDecoration(
                  hintText: 'Write a description',
                  labelText: 'Description',
                ),
              ),


            ],
          ),
        ),
      );
    });
  }


  _editFormDialog(BuildContext context){
    return showDialog(context: context,barrierDismissible:false,builder: (param){
      return AlertDialog(
        actions: [
          TextButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel",style: TextStyle(color: Colors.white)),
            ),

            TextButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),
            onPressed: () async{

              _category.id=i[0]['id'];
              _category.name=_editCategoryNameController.text;
              _category.description=_editCategoryDescriptionController.text;

              var result=await _categoryService.updateCategory(_category);
              if(result>0){
                Navigator.pop(context);
                getAllCategories();
                final snackBar = SnackBar(
                    content: const Text('Successfully Updated!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        
                       },
                ),
              );

          
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            child: const Text("Update",style: TextStyle(color: Colors.white),),
            ),
        ],


        title: const Text("Edit Categories Form"),
        content: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _editCategoryNameController,
                decoration: const InputDecoration(
                  hintText: 'Write a category',
                  labelText: 'Category',
                ),
              ),
              
              TextField(
                controller: _editCategoryDescriptionController,
                decoration: const InputDecoration(
                  hintText: 'Write a description',
                  labelText: 'Description',
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

    _deleteFormDialog(BuildContext context,categoryId){
    return showDialog(context: context,barrierDismissible:false,builder: (param){
      return AlertDialog(
        actions: [
          TextButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel",style: TextStyle(color: Colors.white)),
            ),

            TextButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
            onPressed: () async{

            
              var result=await _categoryService.deleteCategory(categoryId);
              if(result>0){
                Navigator.pop(context);
                getAllCategories();
                final snackBar = SnackBar(
                    content: const Text('Deleted'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        
                       },
                ),
              );

          
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            child: const Text("Delete",style: TextStyle(color: Colors.white),),
            ),
        ],


        title: const Text("Are you sure you want to delete this?"),
        
      );
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomeScreen(),)),
          icon: const Icon(Icons.arrow_back,color: Colors.white),
          ),

        title: const Text("Categories"),
      ),
      body: ListView.builder(itemCount: _categoryList.length,
        itemBuilder: (context, index)
      {
          return 
          Padding(
            padding: const EdgeInsets.only(top:8.0,right: 8,left: 8),
            child: 
            Card(
              elevation: 8,
              child: ListTile(
                leading: IconButton(onPressed: () {
                  _editCategory(context, _categoryList[index].id);
                },
                icon: const Icon(Icons.edit),color: Colors.grey),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_categoryList[index].name ?? ""),
                    IconButton(onPressed: () {
                      _deleteFormDialog(context,_categoryList[index].id);
                    }, icon: const Icon(Icons.delete),color: Colors.red,)
                  ],
                ),
              subtitle: Text(_categoryList[index].description ?? ""),
              ),
            ),
          );
        
      },),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showFormDialog(context);
        },
        child: const Icon(Icons.add),
        ),
    );
  }
}