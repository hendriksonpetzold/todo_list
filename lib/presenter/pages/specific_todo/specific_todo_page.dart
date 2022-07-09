import 'package:flutter/material.dart';

class SpecificTodoPage extends StatelessWidget {
  final String title;

  const SpecificTodoPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo específico'),
      ),
      body: Center(
        child: SizedBox(
          child: Text(title),
        ),
      ),
    );
  }
}
