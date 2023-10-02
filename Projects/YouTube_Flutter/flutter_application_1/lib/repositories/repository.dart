import 'package:flutter_application_1/repositories/databaseConnection.dart';
import 'package:sqflite/sqflite.dart';

class Repository{
  DatabaseConnection? _databaseConnection;

  Repository(){
    _databaseConnection=DatabaseConnection();
  }

  static Database? _database;

  //check if database exist or not
  Future<Database?> get database async{
    if(_database!=null){
      return _database;
    }
    _database=await _databaseConnection?.setDatabase();
    return _database;
  }

  //insertData
  insertData(table,data) async{
    var connection = await database;
    return await connection?.insert(table, data);
  }
  readData(table) async{
    var connection = await database;
    return await connection?.query(table);
  }

  readDataById(table,itemid) async{
    var connection = await database;
    return await connection?.query(table,where: 'id=?',whereArgs: [itemid]);
  }

  updateData(table,data) async{
    var connection=await database;
    return await connection?.update(table, data,where: 'id=?',whereArgs: [data['id']]);
  }

  deleteData(table,itemId) async{
    var connection=await database;
    return await connection?.rawDelete("DELETE FROM $table WHERE id=$itemId");
  }

  readDataByColumnName(table,columnName,columnValue) async{
    var connection=await database;
    return await connection?.query(table,where: '$columnName=?',whereArgs: [columnValue]);
  }
}