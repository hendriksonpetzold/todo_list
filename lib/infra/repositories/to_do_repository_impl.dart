import 'package:todo_list/domain/entities/to_do.dart';
import 'package:todo_list/domain/repositories/to_do_repository.dart';
import 'package:todo_list/infra/datasources/to_do_datasource.dart';

class ToDoRepositoryImpl implements ToDoRepository {
  final ToDoDatasource toDoDatasource;

  ToDoRepositoryImpl(this.toDoDatasource);
  @override
  Future<List<ToDo>> getTodo() {
    Future<List> listTodo = toDoDatasource.getTodo();
    // TODO: implement getTodo
    throw UnimplementedError();
  }

  @override
  Future<ToDo> specificToDo() {
    // TODO: implement specificToDo
    throw UnimplementedError();
  }
}
