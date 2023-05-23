import 'package:flutter/material.dart';
import 'package:todo_sqlflite/todo_list.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.black,
              tabs: [Tab(child: Text("Unfinished")), Tab(child: Text("Finished"))]),
          body: TabBarView(children: [TodoList(), Placeholder()]),
        ));
  }
}
