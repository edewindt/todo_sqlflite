import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: TodoApp(), debugShowCheckedModeBanner: false,));
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("SQL Todo App"), centerTitle: true,backgroundColor: Colors.black,),
        body: Text("Hello World!"));
  }
}
