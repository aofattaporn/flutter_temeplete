import 'package:flutter_temeplete/features/todos/domain/entities/todo_entity.dart';
import 'package:flutter_temeplete/features/todos/domain/repositories/todo_repository.dart';

class GetTodosUsecase {
  final TodoRepository repository;

  GetTodosUsecase(this.repository);

  List<Todo> call() => repository.getTodos();
}
