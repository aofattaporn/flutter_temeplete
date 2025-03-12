import 'package:flutter_temeplete/features/todos/domain/entities/todo_entity.dart';
import 'package:flutter_temeplete/features/todos/domain/repositories/todo_repository.dart';

class AddTodoUsecase {
  final TodoRepository repository;

  AddTodoUsecase(this.repository);

  void call(String title) {
    repository.addTodo(Todo(id: DateTime.now().toString(), title: title));
  }
}
