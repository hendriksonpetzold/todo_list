import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_list/my_app.dart';
import 'package:todo_list/to_do_module.dart';

void main() {
  runApp(ModularApp(module: ToDoModule(), child: const MyApp()));
}
