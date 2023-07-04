class Todo {
  String? id;
  String? todotext;
  bool isdone;

  Todo({
    required this.id,
    required this.todotext,
    this.isdone = false,
  });
  static List<Todo> todolist() {
    return [
      Todo(id: "01", todotext: "beat aditya", isdone: true),
      Todo(id: "02", todotext: "argue with aditya", isdone: true),
      Todo(
        id: "03",
        todotext: "make aditya's girlfreind mine",
      ),
    ];
  }
}
