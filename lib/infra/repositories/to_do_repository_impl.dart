import 'package:todo_list/domain/entities/to_do.dart';
import 'package:todo_list/domain/repositories/to_do_repository.dart';
import 'package:todo_list/infra/adapter/to_do_adapter.dart';
import 'package:todo_list/infra/datasources/to_do_datasource.dart';

class ToDoRepositoryImpl implements ToDoRepository {
  final ToDoDatasource toDoDatasource;

  ToDoRepositoryImpl(this.toDoDatasource);
  @override
  Future<List<ToDo>> getTodo() async {
    List listTodo = await toDoDatasource.getTodo();
    final toDo = listTodo.map(ToDoAdapter.fromJson).toList();
    return toDo;
  }
}
