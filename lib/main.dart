import 'package:flutter/material.dart';
import 'package:todo_sqlflite/tabs.dart';
import 'package:todo_sqlflite/todo_list.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(
    home: TodoApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TabScreen();
  }
}
