import 'package:dio/dio.dart';
import 'package:todo_list/infra/datasources/to_do_datasource.dart';

class ToDoDatasourceImpl implements ToDoDatasource {
  final data = Dio();

  @override
  Future<List> getTodo() {
    data.get('url');

    // TODO: implement getTodo
    throw UnimplementedError();
  }
}
