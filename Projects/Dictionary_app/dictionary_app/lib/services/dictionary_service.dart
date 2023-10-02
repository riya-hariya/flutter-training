import 'package:dictionary_app/repositories/repository.dart';
import 'package:dictionary_app/models/dictionary.dart';

class DictionaryService{
  Repository? _repository;

  DictionaryService(){
    _repository=Repository();
  }

  //create data
  saveDictionary(Dictionary dictionary)async{
    return await _repository?.insertData('dictionary', dictionary.dictionaryMap());
  }

  //read data
  readDictionary()async{
    return await _repository?.readData('dictionary');
  }

  readDictionaryById(dictionaryId) async{
    return await _repository?.readDataById('dictionary',dictionaryId);
  }

  updateDictionary(Dictionary dictionary) async {
    return await _repository?.updateData('dictionary',dictionary.dictionaryMap());
  }

  deleteDictionary(dictionaryId) async{
    return await _repository?.deleteData('dictionary',dictionaryId);
  }

}