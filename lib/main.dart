import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: TodoApp(), debugShowCheckedModeBanner: false,));
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("TodoAppSQLfLite")),
        body: Text("Hello World!"));
  }
}
