import 'package:flutter_temeplete/features/todos/domain/entities/todo_entity.dart';
import 'package:flutter_temeplete/features/todos/domain/repositories/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final List<Todo> _todos = [];

  @override
  List<Todo> getTodos() => _todos;

  @override
  void addTodo(Todo todo) => _todos.add(todo);

  @override
  void toggleTodo(String id) {
    final index = _todos.indexWhere((todo) => todo.id == id);
    if (index != -1) {
      _todos[index] = _todos[index].toggleCompletion();
    }
  }

  @override
  void deleteTodo(String id) {
    _todos.removeWhere((todo) => todo.id == id);
  }
}
