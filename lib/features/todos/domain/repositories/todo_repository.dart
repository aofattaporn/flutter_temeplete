import 'package:flutter_temeplete/features/todos/domain/entities/todo_entity.dart';

abstract class TodoRepository {
  List<Todo> getTodos();
  void addTodo(Todo todo);
  void toggleTodo(String id);
  void deleteTodo(String id);
}
