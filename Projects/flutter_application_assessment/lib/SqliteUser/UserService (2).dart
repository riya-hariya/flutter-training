import 'package:flutter_application_assessment/SqliteUser/User.dart';
import 'package:flutter_application_assessment/SqliteUser/repository%20(1).dart';

class UserService {
  late Repository _repository;

  // constructor

  UserService() {
    _repository = Repository();
  }

  // for save user
  saveUser(User user) async {
    return await _repository.insertData("users", user.userMap());
  }

  // for read all user
  readallUsers() async {
    return await _repository.readData("users");
  }

  updateUser(User user) async {
    return await _repository.updateData("users", user.userMap());
  }

  deleteUser(userid) async {
    return await _repository.deleteDataById("users", userid);
  }
}
