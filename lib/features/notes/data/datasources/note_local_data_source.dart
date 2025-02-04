import '../models/models.dart';

abstract class NoteLocalDataSource {
  Future<void> initialize();
  Future<void> createNote(NoteModel note);
  Future<NoteModel?> readNote(int id, String email);
  Future<List<NoteModel?>> readAllNotes(int? amount, String email);
  Future<void> updateNote(NoteModel note);
  Future<void> deleteNote(int id, String email);
  Future<void> deleteNotes();
  Future<void> createTodo(TodosModel todo);
  Future<void> readTodo(int id, String email);
  Future<List<TodosModel>> readAllTodos(int? amount, String email);
  Future<void> updateTodo(TodosModel todo);
  Future<void> deleteTodo(int id, String email);
  Future<void> deleteTodos();
}
