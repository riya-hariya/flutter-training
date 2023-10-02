import 'package:flutter_application_1/models/category.dart';
import 'package:flutter_application_1/repositories/repository.dart';

class CategoryService{
  Repository? _repository;

  CategoryService(){
    _repository=Repository();
  }

  //create data
  saveCategory(Category category) async{
    return await _repository?.insertData('categories', category.categoryMap()); 
  }

  //read data
  readCategory()async{
    return await _repository?.readData('categories');
  }

  //readSpecific data
  readCategoryById(categoryId) async{
    return await _repository?.readDataById('categories',categoryId);
  }

  updateCategory(Category category) async {
    return await _repository?.updateData('categories',category.categoryMap());
  }

  deleteCategory(categoryId) async {
    return await _repository?.deleteData('categories',categoryId);
  }
}