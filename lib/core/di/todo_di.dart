import 'package:flutter_temeplete/features/todos/data/repositories/todo_repository_imp.dart';
import 'package:flutter_temeplete/features/todos/domain/repositories/todo_repository.dart';
import 'package:flutter_temeplete/features/todos/domain/usecases/add_todo_usecase.dart';
import 'package:flutter_temeplete/features/todos/domain/usecases/delete_todo_usecase.dart';
import 'package:flutter_temeplete/features/todos/domain/usecases/get_todo_usecase.dart';
import 'package:flutter_temeplete/features/todos/domain/usecases/todo_usecase.dart';
import 'package:flutter_temeplete/features/todos/domain/usecases/toggle_todo_usecase.dart';
import 'package:flutter_temeplete/features/todos/presentation/bloc/todo_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupTodoDI() {
  // Register Repository
  sl.registerLazySingleton<TodoRepository>(() => TodoRepositoryImpl());

  // Register Use Cases
  sl.registerLazySingleton(() => GetTodosUsecase(sl<TodoRepository>()));
  sl.registerLazySingleton(() => AddTodoUsecase(sl<TodoRepository>()));
  sl.registerLazySingleton(() => ToggleTodoUsecase(sl<TodoRepository>()));
  sl.registerLazySingleton(() => DeleteTodoUsecase(sl<TodoRepository>()));

  sl.registerLazySingleton(
    () => TodoUseCases(
      getTodos: sl(),
      addTodo: sl(),
      toggleTodo: sl(),
      deleteTodo: sl(),
    ),
  );

  // Register Bloc with a single `useCases` object
  sl.registerFactory(() => TodoBloc(useCases: sl()));
}
