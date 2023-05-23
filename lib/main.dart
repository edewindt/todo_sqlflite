import 'package:flutter/material.dart';
import 'package:todo_sqlflite/tabs.dart';
import 'package:todo_sqlflite/todo_list.dart';

void main() {
  runApp(const MaterialApp(home: TodoApp(), debugShowCheckedModeBanner: false,));
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("SQL Todo App"), centerTitle: true,backgroundColor: Colors.black,),
        body: const TabScreen());
  }
}
