import 'package:todo_list/domain/entities/to_do.dart';
import 'package:todo_list/domain/repositories/to_do_repository.dart';

import 'get_to_do_usecase.dart';

class GetToDoUsecaseImpl implements GetToDoUsecase {
  ToDoRepository repository;
  GetToDoUsecaseImpl(
    this.repository,
  );
  @override
  Future<List<ToDo>> execute() async {
    return await repository.getTodo();
  }
}
