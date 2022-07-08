import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_list/domain/repositories/to_do_repository.dart';
import 'package:todo_list/domain/usecases/get_to_do/get_to_do_usecase_impl.dart';
import 'package:todo_list/external/to_do_datasource_impl.dart';
import 'package:todo_list/infra/datasources/to_do_datasource.dart';
import 'package:todo_list/infra/repositories/to_do_repository_impl.dart';
import 'package:todo_list/presenter/pages/home/to_do_page.dart';
import 'package:todo_list/presenter/pages/home/to_do_controller.dart';
import 'package:todo_list/presenter/pages/search_to_do.dart/search_to_do_page.dart';
import 'package:todo_list/presenter/pages/specific_todo/specific_todo_page.dart';

class ToDoModule extends Module {
  @override
  List<Bind> get binds => [
        //utils
        Bind.factory((i) => Dio()),
        //datasource
        Bind.factory<ToDoDatasource>((i) => ToDoDatasourceImpl(i())),
        //repository
        Bind.factory<ToDoRepository>((i) => ToDoRepositoryImpl(i())),
        //usecase
        Bind.factory((i) => GetToDoUsecaseImpl(i())),
        //store
        Bind.singleton((i) => ToDoController(i()))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const ToDoPage()),
        ChildRoute(
          '/specific_todo/:id',
          child: (context, args) => SpecificTodoPage(id: args.params['id']),
        ),
        ChildRoute(
          '/search_to_do',
          child: (context, args) => SearchToDoPage(
            list: args.data,
          ),
        ),
      ];
}
