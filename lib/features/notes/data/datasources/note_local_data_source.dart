import '../models/models.dart';

abstract class NoteLocalDataSource {
  Future<Null> initialize();
  Future<Null> createNote(NoteModel note);
  Future<NoteModel> readNote(int id, String email);
  Future<List<NoteModel>> readAllNotes(int? amount, String email);
  Future<Null> updateNote(NoteModel note);
  Future<Null> deleteNote(int id, String email);
  Future<Null> deleteNotes();
  Future<Null> createTodo(TodosModel todo);
  Future<TodosModel> readTodo(int id, String email);
  Future<List<TodosModel>> readAllTodos(int? amount, String email);
  Future<Null> updateTodo(TodosModel todo);
  Future<Null> deleteTodo(int id, String email);
  Future<Null> deleteTodos();
}
