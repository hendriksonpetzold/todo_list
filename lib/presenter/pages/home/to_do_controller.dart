// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:todo_list/domain/entities/to_do.dart';
import 'package:todo_list/domain/usecases/get_to_do/get_to_do_usecase.dart';

class ToDoController extends GetxController {
  final GetToDoUsecase getToDoUsecase;

  ToDoController(this.getToDoUsecase);
  RxString text = RxString('Resultado da pesquisa');
  RxString completed = RxString('');
  List<ToDo> toDoList = [];
  List<String> listString = [];
  final TextEditingController searchEC = TextEditingController();

  Future<void> fetchToDos() async {
    final result = await getToDoUsecase.execute();
    toDoList = result;
  }

  Future<void> getTitleList() async {
    toDoList.forEach((element) {
      if (element.title == searchEC.text) {
        text.value = element.title;
        completed.value = element.completed.toString();
      }
    });
  }

  void onButtonPressed() {
    for (var title in listString) {
      if (title == searchEC.text) {
        text.value = title;
      }
    }
  }
}
