import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/features/notes/data/models/models.dart';

abstract class NotesRepository {
  Future<Either<Failure, Null>> initialize();
  Future<Either<Failure, Null>> createNote(NoteModel note);
  Future<Either<Failure, NoteModel>> readNote(int id, String email);
  Future<Either<Failure, List<NoteModel>>> readAllNotes(
    int? amount,
    String email,
  );
  Future<Either<Failure, Null>> updateNote(NoteModel note);
  Future<Either<Failure, Null>> deleteNote(int id, String email);
  Future<Either<Failure, Null>> deleteNotes();
  Future<Either<Failure, Null>> createTodo(TodosModel todo);
  Future<Either<Failure, TodosModel>> readTodo(int id, String email);
  Future<Either<Failure, List<TodosModel>>> readAllTodos(
    int? amount,
    String email,
  );
  Future<Either<Failure, Null>> updateTodo(TodosModel todo);
  Future<Either<Failure, Null>> deleteTodo(int id, String email);
  Future<Either<Failure, Null>> deleteTodos();
}
