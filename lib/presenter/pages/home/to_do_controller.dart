import 'package:flutter/cupertino.dart';
import 'package:todo_list/domain/usecases/get_to_do/get_to_do_usecase.dart';
import 'package:todo_list/presenter/pages/home/to_do_state.dart';

class ToDoController extends ValueNotifier<ToDoState> {
  final GetToDoUsecase getToDoUsecase;

  ToDoController(this.getToDoUsecase) : super(EmptyToDoState());

  void emit(ToDoState newState) => value = newState;

  Future<void> fetchToDos() async {
    emit(LoadingToDoState());

    final result = await getToDoUsecase.execute();

    emit(SucessToDoState(result));
  }
}
