import 'package:flutter_temeplete/features/todos/domain/repositories/todo_repository.dart';

class DeleteTodoUsecase {
  final TodoRepository repository;

  DeleteTodoUsecase(this.repository);

  void call(String id) {
    repository.deleteTodo(id);
  }
}
