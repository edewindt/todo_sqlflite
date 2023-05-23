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
            Container(margin: EdgeInsets.symmetric(horizontal: 5),height: 40,color: Colors.lightGreen,child: Center(child:Text("Add")),),
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
                trailing: IconButton(splashColor: Colors.red,splashRadius: 20,onPressed: (){print("Deleted");}, icon: Icon(Icons.delete)),
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
