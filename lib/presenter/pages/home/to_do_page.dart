import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_list/presenter/pages/home/to_do_state.dart';
import 'package:todo_list/presenter/pages/home/to_do_controller.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  @override
  void initState() {
    super.initState();
    Modular.get<ToDoController>().fetchToDos();
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<ToDoController>();
    final state = controller.value;
    List searchList = [];
    Widget child = Container();

    if (state is LoadingToDoState) {
      child = const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }

    if (state is ErrorToDoState) {
      child = const Center(
        child: Text('error'),
      );
    }

    if (state is SucessToDoState) {
      child = ListView.builder(
        itemCount: state.toDos.length,
        itemBuilder: (context, index) {
          searchList = state.toDos;
          final toDos = state.toDos[index];
          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/specific_todo/${toDos.title}');
            },
            child: ListTile(
              title: Text(toDos.title),
              subtitle: Text('completed: ${toDos.completed}'),
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDos'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/search_to_do', arguments: searchList);
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: child,
    );
  }
}
