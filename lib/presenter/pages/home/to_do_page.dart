import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:todo_list/presenter/pages/home/to_do_controller.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  ToDoController controller = Modular.get<ToDoController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDos'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/search_to_do', arguments: controller.toDoList);
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: FutureBuilder(
        future: controller.fetchToDos(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: controller.toDoList.length,
            itemBuilder: (context, index) {
              final list = controller.toDoList[index];
              return InkWell(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed('/specific_todo/${list.title}');
                },
                child: ListTile(
                  title: Text(list.title),
                  subtitle: Text('${list.completed}'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
