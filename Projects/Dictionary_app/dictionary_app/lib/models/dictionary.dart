class Dictionary{
  int? id;
  String? word;
  String? meaning;
  String? description;
  String? example;

  dictionaryMap(){
    var mapping=<String,dynamic>{};
    mapping['id']=id;
    mapping['word']=word;
    mapping['meaning']=meaning;
    mapping['description']=description;
    mapping ['example']=example;

    return mapping;
  }
}