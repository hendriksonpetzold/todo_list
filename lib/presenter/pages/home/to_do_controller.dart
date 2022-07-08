// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';

import 'package:todo_list/domain/entities/to_do.dart';
import 'package:todo_list/domain/usecases/get_to_do/get_to_do_usecase.dart';

class ToDoController extends GetxController {
  final GetToDoUsecase getToDoUsecase;

  ToDoController(this.getToDoUsecase);

  List<ToDo> toDoList = [];

  Future<void> fetchToDos() async {
    final result = await getToDoUsecase.execute();
    toDoList = result;
  }
}
