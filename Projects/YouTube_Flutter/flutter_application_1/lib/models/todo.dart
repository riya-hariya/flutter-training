class Todo{
  int? id;
  String? title;
  String? description;
  String? category;
  String? tododate;
  int? isFinished;

  todoMap(){
    var mapping=<String,dynamic>{};
    mapping['id']=id;
    mapping['title']=title;
    mapping['description']=description;
    mapping['category']=category;
    mapping['tododate']=tododate;
    mapping['isFinished']=isFinished;

    return mapping;
  }

}