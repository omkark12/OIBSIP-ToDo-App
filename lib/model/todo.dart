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
      Todo(id: "01", todotext: "welcome", isdone: true),
      Todo(
        id: "02",
        todotext: "this is an demo note",
      ),
      Todo(
        id: "03",
        todotext: "explore all buttons to get familiar",
      ),
    ];
  }
}
