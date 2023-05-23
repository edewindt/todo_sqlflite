import 'package:flutter/material.dart';
import 'package:todo_sqlflite/todo_item.dart';
import 'dart:math';
GlobalKey<_TodoListState> todokey = GlobalKey();


class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  bool checked = false;
  String newTodo = "";
  List<TodoItem> todos = [];

 rid(String id) {
    print(id);
    List newtodos = [];
    newtodos = todos.where((element) => element.id != id).toList();
    setState(() {
      todos.removeWhere((element) => element.id == id);
    });
    print(newtodos);
  }

  TextEditingController textcon = TextEditingController();
  @override
  void dispose() {
    textcon.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        width: 800,
        child: ListView(
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(horizontal: 5),
                height: 50,
                color: Color.fromARGB(255, 186, 217, 150),
                child: Center(
                  child: TextField(
                      controller: textcon,
                      onEditingComplete: () {
                       String NewId = generateRandomString(5);
                        setState(() {
                          todos.add(TodoItem(
                              id: NewId,
                              content: textcon.text,
                              del:()=>rid(NewId)));
                          textcon.text = "";
                        });
                      },
                
                ))),
            for (var i = 0; i < todos.length; i++) todos[i]
          ],
        ),
      ),
    );
  }
}

String generateRandomString(int length) {
  const String chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  Random random = Random();
  String result = '';

  for (int i = 0; i < length; i++) {
    int randomIndex = random.nextInt(chars.length);
    result += chars[randomIndex];
  }

  return result;
}
