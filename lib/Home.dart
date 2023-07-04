import 'package:flutter/material.dart';

import 'package:todoapp/model/todo.dart';
import 'package:todoapp/widgets/todo_item.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final todoslist = Todo.todolist();
  List<Todo> foundtodo = [];
  final todocontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.view_headline_sharp,
              color: Colors.black,
            ),
            Container(
              height: 40,
              width: 30,
              child: ClipRect(
                child: Image.asset("img/dog.jpeg"),
              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                  decoration: BoxDecoration(color: Colors.black12),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 20,
                        ),
                        prefixIconConstraints: BoxConstraints(
                          maxHeight: 20,
                          maxWidth: 20,
                        ),
                        border: InputBorder.none,
                        hintText: 'functionality will be soon there',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        )),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50, bottom: 20),
                        child: Text("TO-DO LIST",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )),
                      ),
                      for (Todo todoo in todoslist)
                        todoitem(
                            todo: todoo,
                            onTodochanged: handletodo,
                            deleteitem: deletetodo),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 30,
                    left: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white30,
                  ),
                  child: TextField(
                    controller: todocontroller,
                    decoration: InputDecoration(
                        hintText: "add new ", border: InputBorder.none),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                  ),
                  child: ElevatedButton(
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    onPressed: () {
                      addtodo(todocontroller.text);
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.yellow),
                  )),
            ]),
          )
        ],
      ),
    );
  }

  void handletodo(Todo todo) {
    setState(() {});
    todo.isdone = !todo.isdone;
  }

  void deletetodo(String id) {
    setState(() {
      todoslist.removeWhere((item) => item.id == id);
    });
  }

  void addtodo(String toDo) {
    setState(() {
      todoslist.add(
        Todo(
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            todotext: toDo),
      );
    });
    todocontroller.clear();
  }

  void filter(String enteredkey) {
    List<Todo> results = [];
    if (enteredkey.isEmpty) {
      results = todoslist;
    }
  }
}
