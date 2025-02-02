abstract class NoteLocalDataSource {
  Future<void> initialize();
  Future<void> createNote();
  Future<void> readNote();
  Future<void> readAllNotes();
  Future<void> updateNote();
  Future<void> deleteNote();
  Future<void> deleteNotes();
  Future<void> createTodo();
  Future<void> readTodo();
  Future<void> readAllTodos();
  Future<void> updateTodo();
  Future<void> deleteTodo();
  Future<void> deleteTodos();
}
