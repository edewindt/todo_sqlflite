import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: 800,
        child: ListView(
          children: [
            Card(
              elevation: 30,
              child: ListTile(
                leading: Checkbox(
                  value: checked,
                  onChanged: (value) => setState(() {
                    checked = value!;
                  }),
                ),
                title: const Text("Hello Bro"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TodoListItem {
  final int id;
  final String content;
  bool isChecked;
  TodoListItem(this.isChecked, {required this.id, required this.content});
}
