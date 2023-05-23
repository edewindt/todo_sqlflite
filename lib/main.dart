import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp(home: TodoApp()));
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text("Hello World!"));
  }
}

