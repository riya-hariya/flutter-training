import 'package:dictionary_app/models/dictionary.dart';
import 'package:dictionary_app/services/dictionary_service.dart';
import 'package:flutter/material.dart';

class EditWords extends StatefulWidget {
  final Dictionary editWords;
  const EditWords({super.key, required this.editWords});

  @override
  State<EditWords> createState() => _EditWordsState();
}

class _EditWordsState extends State<EditWords> {
  var i;
  final _wordEditController=TextEditingController();
  final _meaningEditController=TextEditingController();
  final _descriptionEditController=TextEditingController();
  final _exampleEditController=TextEditingController();

  bool _validateWord=false;
  bool _validateMeaning=false;
  bool _validateDescription=false;
  bool _validateExample=false;

  
  final _dictionaryService=DictionaryService();
  List<Dictionary> _wordsList = <Dictionary>[];

  @override
  void initState() {
    setState(() {
      _wordEditController.text = widget.editWords.word ?? "";
      _meaningEditController.text = widget.editWords.meaning ?? "";
      _descriptionEditController.text = widget.editWords.description ?? "";
      _exampleEditController.text = widget.editWords.example ?? "";
    });
    super.initState();
  }

  getAllWords() async{
    _wordsList= <Dictionary>[];
    var dict=await _dictionaryService.readDictionary();

    dict.forEach((i){
      setState(() {
        var dictModel = Dictionary();
        dictModel.id=i['id'];
        dictModel.word=i['word'];
        dictModel.description=i['description'];

        _wordsList.add(dictModel);

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit words",style: TextStyle(color: Colors.white),),
      ),
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              const Text("Edit word",style: TextStyle(color: Colors.grey),),
              TextField(
              
                controller: _wordEditController,
                decoration: const InputDecoration(

                  suffixIcon: Icon(Icons.search),
                  hintText: "Enter a word",
                  labelText: "Word",
                  enabledBorder: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 25,),

              const Text("Edit meaning",style: TextStyle(color: Colors.grey),),
              TextField(
                controller: _meaningEditController,
                decoration: const InputDecoration(
                  hintText: "Enter the meaning",
                  labelText: "Meaning",
                  enabledBorder: UnderlineInputBorder(),
                ),
              ),

              const SizedBox(height: 25,),

              const Text("Edit description",style: TextStyle(color: Colors.grey),),
              TextField(
                controller: _descriptionEditController,
                decoration: const InputDecoration(
                  hintText: "Enter the description",
                  labelText: "Description",
                  enabledBorder: UnderlineInputBorder(),
                ),
              ),


              const SizedBox(height: 25,),

              const Text("Edit Example",style: TextStyle(color: Colors.grey),),
              TextField(
                
                controller: _exampleEditController,
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
                  setState(() {
                    _wordEditController.text.isEmpty
                            ? _validateWord = true
                            : _validateWord = false;

                        _meaningEditController.text.isEmpty
                            ? _validateMeaning = true
                            : _validateMeaning = false;
                        
                        _descriptionEditController.text.isEmpty
                            ? _validateDescription = true
                            : _validateDescription = false;

                        _exampleEditController.text.isEmpty
                            ? _validateExample = true
                            : _validateExample = false;
                  });
                //check if the textEditing controller is not empty
                    if (_validateWord == false && _validateMeaning == false && _validateDescription==false && _validateExample==false) {
                        var word = Dictionary();
                        word.id = widget.editWords.id;
                        word.word = _wordEditController.text;
                        word.meaning = _meaningEditController.text;
                        word.description = _descriptionEditController.text;
                        word.example = _exampleEditController.text;


                  var result =await _dictionaryService.updateDictionary(word);
                  print(result);
                  if(result>0){
                    Navigator.pop(context, result);
                    getAllWords();
                  final snackBar = SnackBar(
                  content: const Text('updated Successfully'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      
                        },
                 ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
                
                
              }
            },
                 child: const Text("Update",style: TextStyle(color: Colors.white,fontSize: 16)),
                 ),
              ),
          ],
        ),
      ),
    );
  }
}