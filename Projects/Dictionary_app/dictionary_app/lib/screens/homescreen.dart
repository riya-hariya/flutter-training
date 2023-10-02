import 'package:dictionary_app/models/dictionary.dart';
import 'package:dictionary_app/screens/addwords.dart';
import 'package:dictionary_app/screens/editwords.dart';
import 'package:dictionary_app/services/dictionary_service.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  DictionaryService? _dictionaryService;

  List<Dictionary>_wordsList=<Dictionary>[];
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllWord();
  }

  getAllWord() async{
    _dictionaryService=DictionaryService();
    _wordsList=<Dictionary>[];

    var words=await _dictionaryService?.readDictionary();
    words.forEach((i){
      setState(() {
        var model=Dictionary();
        model.id=i['id'];
        model.word=i['word'];
        model.meaning=i['meaning'];
        model.description=i['description'];
        model.example=i['example'];

        _wordsList.add(model);
      });
    }
    );
  }


   _deleteFormDialog(BuildContext context,dictionaryId){
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

            
              var result=await _dictionaryService?.deleteDictionary(dictionaryId);
              if(result>0){
                Navigator.pop(context);
                getAllWord();
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
        
        title: const Text("Dictionary Home",style: TextStyle(color: Colors.white),),

      ),
      body: ListView.builder(
        itemCount: _wordsList.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 8,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),

            child: ListTile(
              leading: IconButton(onPressed: () async {
                Navigator.push(context, MaterialPageRoute(builder: (context) => EditWords(editWords: _wordsList[index]),));
              },
               icon: const Icon(Icons.edit,color: Colors.grey,)),

              title: Text(_wordsList[index].word ?? 'No word'),
              subtitle: Text(_wordsList[index].meaning ?? 'No meaning'),

              trailing: IconButton(onPressed: () async{
                _deleteFormDialog(context, _wordsList[index].id);
              }, icon: const Icon(Icons.delete,color: Colors.blueGrey,)),
            ),
            
          );
        },
        
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddWords())) ;
        },
        ),
    );
  }
}