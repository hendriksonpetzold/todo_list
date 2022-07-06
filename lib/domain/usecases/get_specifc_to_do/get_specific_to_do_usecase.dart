import 'package:todo_list/domain/entities/to_do.dart';

abstract class GetSpecificToDo {
  Future<ToDo> getSpecificTodo(String toDoId);
}
