import 'package:flutter_temeplete/features/todos/domain/usecases/add_todo_usecase.dart';
import 'package:flutter_temeplete/features/todos/domain/usecases/delete_todo_usecase.dart';
import 'package:flutter_temeplete/features/todos/domain/usecases/get_todo_usecase.dart';
import 'package:flutter_temeplete/features/todos/domain/usecases/toggle_todo_usecase.dart';

class TodoUseCases {
  final GetTodosUsecase getTodos;
  final AddTodoUsecase addTodo;
  final ToggleTodoUsecase toggleTodo;
  final DeleteTodoUsecase deleteTodo;

  TodoUseCases({
    required this.getTodos,
    required this.addTodo,
    required this.toggleTodo,
    required this.deleteTodo,
  });
}
