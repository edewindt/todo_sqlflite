import 'package:flutter/material.dart';
import 'package:todo_sqlflite/todo_item.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}
class _TodoListState extends State<TodoList> {
  bool checked = false;
  bool adding = false;
  String newTodo = "";
  List<TodoItem> todos = [];
  TextEditingController textcon = TextEditingController();
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
                  setState(() {
                    adding = true;
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 50,
                  color: Color.fromARGB(255, 186, 217, 150),
                  child: Center(
                      child: adding ?  TextField(controller: textcon, onEditingComplete: () => setState(() {
                        todos.add(TodoItem(content: newTodo)); textcon.text = "";
                      }),onChanged: (value) => setState(() {
                    newTodo = value; 
                  }) ) : Text(
                    "Add",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))  ,
                )),
                for (var i in todos) TodoItem(id: i.id,checked: i.checked,content: i.content)
            
          ],
        ),
      ),
    );
  }
}
