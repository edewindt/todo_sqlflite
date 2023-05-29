class TodoDBItem {
  final int? id;
  final bool checked;
  final String content;
  TodoDBItem({this.checked = false, this.id, required this.content});
}