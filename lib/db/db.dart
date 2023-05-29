import 'package:path_provider/path_provider.dart';
import "package:sqflite/sqflite.dart";
import 'dart:io';
import 'package:path/path.dart';

class TodoDBItem {
  final int? id;
  final bool checked;
  final String content;
  TodoDBItem({this.checked = false, this.id, required this.content});

  factory TodoDBItem.fromMap(Map<String, dynamic> json) => TodoDBItem(
      id: json['id'], 
      content: json['content'],
       checked: json['checked']
       );

       Map<String,dynamic> toMap() {
        return {
          'id':id,
          'content':content,
          'checked':checked,
        };
       }
}

class DBHelper {
  DBHelper._privateConstructor();
  static final DBHelper instance = DBHelper._privateConstructor();
  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();


  Future<Database> _initDatabase() async {
    Directory appdirectory = await getApplicationDocumentsDirectory();
    String path = join(appdirectory.path, 'app.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('CREATE TABLE todos(id INTEGER PRIMARY KEY, content TEXT, checked BOOL)');
  }

}