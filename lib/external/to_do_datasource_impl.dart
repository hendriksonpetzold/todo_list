import 'package:dio/dio.dart';
import 'package:todo_list/infra/datasources/to_do_datasource.dart';

class ToDoDatasourceImpl implements ToDoDatasource {
  final Dio dio;

  ToDoDatasourceImpl(this.dio);

  @override
  Future<List> getTodo() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/todos');

    return response.data;
  }
}
