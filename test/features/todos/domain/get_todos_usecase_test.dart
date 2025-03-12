import 'package:flutter_temeplete/features/todos/data/repositories/todo_repository_imp.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_temeplete/features/todos/domain/entities/todo_entity.dart';
import 'package:flutter_temeplete/features/todos/domain/repositories/todo_repository.dart'; // Import your repository

// Mock the TodoRepository
class MockTodoRepository extends Mock implements TodoRepository {}

void main() {
  late TodoRepositoryImpl todoRepository;
  late MockTodoRepository mockTodoRepository;

  setUp(() {
    // Initialize the mock and the TodoRepositoryImpl
    mockTodoRepository = MockTodoRepository();
    todoRepository = TodoRepositoryImpl();
  });

  test('getTodos should return an empty list initially', () {
    // Act
    final todos = todoRepository.getTodos();

    // Assert
    expect(todos, isEmpty);
  });

  test('getTodos should return a list with added todos', () {
    // Arrange
    final todo1 = Todo(id: '1', title: 'First Todo');
    final todo2 = Todo(id: '2', title: 'Second Todo');

    todoRepository.addTodo(todo1);
    todoRepository.addTodo(todo2);

    // Act
    final todos = todoRepository.getTodos();

    // Assert
    expect(todos, contains(todo1));
    expect(todos, contains(todo2));
    expect(todos.length, 2);
  });

  test('getTodos should return mocked todos using Mockito', () {
    // Arrange
    final todo1 = Todo(id: '1', title: 'First Mocked Todo');
    final todo2 = Todo(id: '2', title: 'Second Mocked Todo');

    // Mock the getTodos method
    when(mockTodoRepository.getTodos()).thenReturn([todo1, todo2]);

    // Act
    final todos = mockTodoRepository.getTodos();

    // Assert
    expect(todos, isNotEmpty);
    expect(todos.length, 2);
    expect(todos[0].title, 'First Mocked Todo');
    expect(todos[1].title, 'Second Mocked Todo');
  });
}
