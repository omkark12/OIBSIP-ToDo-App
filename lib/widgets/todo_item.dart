import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/Todo.dart';
import '../model/todo.dart';

class todoitem extends StatelessWidget {
  final Todo todo;
  final onTodochanged;
  final deleteitem;
  const todoitem(
      {Key? key,
      required this.todo,
      required this.onTodochanged,
      required this.deleteitem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onTodochanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white30,
        leading: Icon(
          todo.isdone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.yellow,
        ),
        title: Text(
          todo.todotext!,
          style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              decoration: todo.isdone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 10,
            icon: Icon(Icons.delete),
            onPressed: () {
              deleteitem(todo.id);
            },
          ),
        ),
      ),
    );
  }
}