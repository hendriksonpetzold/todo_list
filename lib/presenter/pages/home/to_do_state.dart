import 'package:todo_list/domain/entities/to_do.dart';

abstract class ToDoState {}

class SucessToDoState implements ToDoState {
  final List<ToDo> toDos;

  SucessToDoState(this.toDos);
}

class EmptyToDoState extends SucessToDoState {
  EmptyToDoState() : super([]);
}

class LoadingToDoState extends ToDoState {}

class ErrorToDoState extends ToDoState {
  final String message;

  ErrorToDoState(this.message);
}
