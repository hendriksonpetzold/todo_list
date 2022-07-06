import 'package:todo_list/domain/entities/to_do.dart';

abstract class GetToDoUsecase {
  Future<List<ToDo>> execute();
}
