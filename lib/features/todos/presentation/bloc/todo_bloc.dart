import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_temeplete/features/todos/domain/usecases/todo_usecase.dart';
import 'package:flutter_temeplete/features/todos/presentation/bloc/todo_event.dart';
import 'package:flutter_temeplete/features/todos/presentation/bloc/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoUseCases useCases; // Injected as a single object

  TodoBloc({required this.useCases}) : super(TodoState(todos: [])) {
    on<LoadTodos>((event, emit) {
      emit(TodoState(todos: useCases.getTodos()));
    });

    on<AddTodo>((event, emit) {
      useCases.addTodo(event.title);
      emit(TodoState(todos: useCases.getTodos()));
    });

    on<ToggleTodo>((event, emit) {
      useCases.toggleTodo(event.id);
      emit(TodoState(todos: useCases.getTodos()));
    });

    on<DeleteTodo>((event, emit) {
      useCases.deleteTodo(event.id);
      emit(TodoState(todos: useCases.getTodos()));
    });
  }
}
