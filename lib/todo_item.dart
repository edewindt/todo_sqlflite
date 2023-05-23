import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  final bool checked;
  final int id;
  final String content;
  const TodoItem({super.key, required this.checked, required this.id, required this.content});

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  @override
  Widget build(BuildContext context) {
    bool checked = widget.checked;
    String content = widget.content;
    return Opacity(
      opacity: checked ? .5 : 1,
      child: Card(
                elevation: 30,
                child: ListTile(
                  leading: Checkbox(
                    value: checked,
                    onChanged: (value) => setState(() {
                      checked = value!;
                    }),
                  ),
                  title: Text(content),
                  trailing: IconButton(
                      splashColor: Colors.red,
                      splashRadius: 20,
                      onPressed: () {
                        print("Deleted");
                      },
                      icon: Icon(Icons.delete)),
                ),
              ),
    );
  }
}