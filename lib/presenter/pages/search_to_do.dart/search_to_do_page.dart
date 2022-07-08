import 'package:flutter/material.dart';
import 'package:todo_list/domain/entities/to_do.dart';

class SearchToDoPage extends StatelessWidget {
  List<ToDo> list;

  SearchToDoPage({Key? key, required this.list}) : super(key: key);
  final TextEditingController searchEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: searchEC,
          ),
          const SizedBox(
            height: 8,
          ),
          const ListTile(
            title: Text('Teste'),
          ),
          ElevatedButton(
            onPressed: () async {
              print(list);
            },
            child: const Text('print list'),
          )
        ],
      ),
    );
  }
}
