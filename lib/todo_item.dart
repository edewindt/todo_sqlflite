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
  bool checked = false;
  String content = "";  
  bool editing = false;
  @override
  setValues(){
    checked = widget.checked;
    content = widget.content;
  }
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
      String content = widget.content;
  
    return Opacity(
      opacity: checked ? .5 : 1,
      child: Card(
                elevation: 30,
                child: ListTile(
                  leading: Checkbox(
                    value: checked,
                    fillColor: MaterialStatePropertyAll(Colors.green),
                    onChanged: (value) => setState(() {
                      checked = value!;
                    }),
                  ),
                  title: editing ? TextField() : Text(content),
                  trailing: SizedBox(
                    width: 80,
                    child: Row(
                      children: [
                        IconButton(
                            splashColor: Colors.green,
                            splashRadius: 20,
                            onPressed: () {
                              setState(() {
                                editing = !editing;
                              });
                            },
                            icon: Icon(Icons.edit)),
                        IconButton(
                            splashColor: Colors.red,
                            splashRadius: 20,
                            onPressed: () {
                              print("Deleted");
                            },
                            icon: Icon(Icons.delete)),
                            
                      ],
                    ),
                  ),
                ),
              ),
    );
  }
}