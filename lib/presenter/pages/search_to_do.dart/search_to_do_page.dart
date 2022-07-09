import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get/get.dart';
import 'package:todo_list/domain/entities/to_do.dart';
import 'package:todo_list/presenter/pages/home/to_do_controller.dart';

class SearchToDoPage extends StatefulWidget {
  final List<ToDo> list;

  const SearchToDoPage({Key? key, required this.list}) : super(key: key);

  @override
  State<SearchToDoPage> createState() => _SearchToDoPageState();
}

class _SearchToDoPageState extends State<SearchToDoPage> {
  @override
  void initState() {
    super.initState();
    Modular.get<ToDoController>().fetchToDos();
  }

  ToDoController controller = Modular.get<ToDoController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              controller: controller.searchEC,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Obx(() {
            return Text('${controller.text}');
          }),
          Obx(() {
            return Text('${controller.completed}');
          }),
          ElevatedButton(
            onPressed: () async {
              controller.getTitleList();
            },
            child: const Text('PESQUISAR'),
          )
        ],
      ),
    );
  }
}
