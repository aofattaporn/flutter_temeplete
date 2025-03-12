class Todo {
  final String id;
  final String title;
  final bool isCompleted;

  Todo({required this.id, required this.title, this.isCompleted = false});

  Todo toggleCompletion() =>
      Todo(id: id, title: title, isCompleted: !isCompleted);
}
