import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  final VoidCallback del;
  final bool checked;
  final String id;
  final String content;
  const TodoItem({super.key, this.checked = false, required this.id, required this.content, required this.del});

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  
  bool checked = false;
  String content = "";  
  bool editing = false;
  bool entered = false;
  TextEditingController textcon = TextEditingController();
  @override
  setValues(){
    checked = widget.checked;
    content = widget.content;
    textcon.text = widget.content;
  }
  void initState() {
    setValues();
    super.initState();
  }
  Widget build(BuildContext context) {

    return MouseRegion(
      onEnter: (event) => setState(() {
        entered = true;
      }),
      onExit: (event) => setState(() {
        entered = false;
      }),
      child: Opacity(
        opacity: checked ? .5 : 1,
        child: Card(
                  elevation: 30,
                  child: ListTile(
                    leading: Checkbox(
                      value: checked,
                      fillColor: MaterialStatePropertyAll(Colors.green),
                      onChanged: (value) => setState(() {
                        checked = value!;
                        editing = false;
                      }),
                    ),
                    title: editing ? TextField(controller: textcon, onChanged: (value) {
                      setState(() {
                        content = value;
                      });
                    },) : Text(content),
                    trailing: entered && !checked ? SizedBox(
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
                              icon: Icon(editing ? Icons.check : Icons.edit)),
                          IconButton(
                              splashColor: Colors.red,
                              splashRadius: 20,
                              onPressed:()=> widget.del(),
                              icon: Icon(Icons.delete)),
                              
                        ],
                      ),
                    ) : null,
                  ),
                ),
      ),
    );
  }
}