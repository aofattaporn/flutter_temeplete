import 'package:flutter_temeplete/features/todos/domain/repositories/todo_repository.dart';

class ToggleTodoUsecase {
  final TodoRepository repository;

  ToggleTodoUsecase(this.repository);

  void call(String id) {
    repository.toggleTodo(id);
  }
}
