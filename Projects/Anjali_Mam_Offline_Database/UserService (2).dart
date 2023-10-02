import 'package:core_practicals/screens/OFLINE_DATABASE/db_helper/repository.dart';
import 'package:core_practicals/screens/OFLINE_DATABASE/models/User.dart';

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
