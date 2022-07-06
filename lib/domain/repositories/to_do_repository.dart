import 'package:todo_list/domain/entities/to_do.dart';

abstract class ToDoRepository {
  Future<List<ToDo>> getTodo();
}
