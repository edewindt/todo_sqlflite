class TodoDBItem {
  final int? id;
  final bool checked;
  final String content;
  TodoDBItem({this.checked = false, this.id, required this.content});

  factory TodoDBItem.fromMap(Map<String, dynamic> json) => TodoDBItem(
      id: json['id'], 
      content: json['content'],
       checked: json['checked']
       );

       Map<String,dynamic> toMap() {
        return {
          'id':id,
          'content':content,
          'checked':checked,
        };
       }
}
