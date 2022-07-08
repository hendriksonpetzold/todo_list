import 'package:flutter/material.dart';

class SpecificTodoPage extends StatelessWidget {
  final String id;

  const SpecificTodoPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        child: Text(id),
      ),
    );
  }
}
