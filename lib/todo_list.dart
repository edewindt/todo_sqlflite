import 'package:flutter/material.dart';
import 'package:todo_sqlflite/todo_item.dart';

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
            GestureDetector(
                onTap: () {
                  print("added");
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 50,
                  color: Colors.lightGreen,
                  child: Center(
                      child: Text(
                    "Add",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                )),
                TodoItem(checked: checked, id: 1, content: "Hello Bro")
            
          ],
        ),
      ),
    );
  }
}
