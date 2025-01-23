class TodoList {
  final int id;
  final List<Todo> todos;
  final int colorId;

  const TodoList({
    this.id = 0,
    this.colorId = 0,
    required this.todos,
  });
  TodoList copyWith({
    int? colorId,
    List<Todo>? todos,
  }) {
    return TodoList(
      colorId: colorId ?? this.colorId,
      id: id,
      todos: todos ?? this.todos,
    );
  }
}

class Todo {
  final int id;
  final bool isCompleted;
  final String task;
  const Todo({
    this.id = 0,
    required this.task,
    this.isCompleted = false,
  });

  Todo copyWith({
    bool? isCompleted,
    String? task,
  }) {
    return Todo(
      task: task ?? this.task,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
