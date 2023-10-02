
import 'package:dictionary_app/models/dictionary.dart';
import 'package:dictionary_app/services/dictionary_service.dart';
import 'package:flutter/material.dart';

class AddWords extends StatefulWidget {
  const AddWords({super.key});

  @override
  State<AddWords> createState() => _AddWordsState();
}

class _AddWordsState extends State<AddWords> {
  final _wordController=TextEditingController();
  final _meaningController=TextEditingController();
  final _descriptionController=TextEditingController();
  final _exampleController=TextEditingController();


  final _dictionary=Dictionary();
  final _dictionaryService=DictionaryService();

  List<Dictionary> _dictionaryList=<Dictionary>[];
  //List<Category> _categoryList = <Category>[];
  @override
  void initState(){
    super.initState();
    getAllWords();
  }



  getAllWords() async{
    _dictionaryList=<Dictionary>[];
    var words=await _dictionaryService.readDictionary();
    words.forEach((i){
      setState(() {
        var dictionaryModel=Dictionary();
        dictionaryModel.word=i['word'];
        dictionaryModel.meaning=i['meaning'];
        dictionaryModel.description=i['description'];
        dictionaryModel.example=i['example'];
        dictionaryModel.id=i['id'];
        _dictionaryList.add(dictionaryModel);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add words",style: TextStyle(color: Colors.white),),
      ),
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const Text("Add a word",style: TextStyle(color: Colors.grey),),
              TextField(
                controller: _wordController,
                decoration: const InputDecoration(

                  suffixIcon: Icon(Icons.search),
                  hintText: "Enter a word",
                  labelText: "Word",
                  enabledBorder: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 25,),

              const Text("Add a meaning",style: TextStyle(color: Colors.grey),),
              TextField(
                controller: _meaningController,
                decoration: const InputDecoration(
                  hintText: "Enter the meaning",
                  labelText: "Meaning",
                  enabledBorder: UnderlineInputBorder(),
                ),
              ),

              const SizedBox(height: 25,),

              const Text("Add description",style: TextStyle(color: Colors.grey),),
              TextField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  hintText: "Enter the description",
                  labelText: "Description",
                  enabledBorder: UnderlineInputBorder(),
                ),
              ),


              const SizedBox(height: 25,),

              const Text("Add Example",style: TextStyle(color: Colors.grey),),
              TextField(
                controller: _exampleController,
                decoration: const InputDecoration(
                  hintText: "Enter the Example",
                  labelText: "Example",
                  enabledBorder: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 30,),

              Center(
                child: TextButton(
                  style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),shape: MaterialStatePropertyAll(ContinuousRectangleBorder(side: BorderSide.none))),
                  onPressed: () async {
                  _dictionary.word=_wordController.text;
                  _dictionary.meaning=_meaningController.text;
                  _dictionary.description=_descriptionController.text;
                  _dictionary.example=_exampleController.text;

                  var result =await _dictionaryService.saveDictionary(_dictionary);
                  print(result);
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
                },
                 child: const Text("Save",style: TextStyle(color: Colors.white,fontSize: 16)),
                 ),
              )
            
            
          ],
        ),
      ),
    );
  }
}