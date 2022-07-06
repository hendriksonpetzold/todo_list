import 'package:todo_list/domain/entities/to_do.dart';

class ToDoAdapter {
  static ToDo fromJson(dynamic data) {
    return ToDo(
      userId: data['userId'],
      id: data['id'],
      title: data['title'],
      completed: data['completed'],
    );
  }
}
