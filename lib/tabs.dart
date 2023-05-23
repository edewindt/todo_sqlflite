import 'package:flutter/material.dart';
import 'package:todo_sqlflite/todo_list.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 1,child: Scaffold(appBar: TabBar(tabs: [Icon(Icons.mark_as_unread)]), body: TabBarView(children: [TodoList()]),));
  }
}