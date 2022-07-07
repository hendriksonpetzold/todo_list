import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SpecificTodoPage extends StatelessWidget {
  final String id;

  const SpecificTodoPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        actions: [
          BackButton(
            onPressed: () {
              Modular.to.navigate('/');
            },
          )
        ],
      ),
      body: Center(
        child: Container(
          child: Text(id),
        ),
      ),
    );
  }
}
