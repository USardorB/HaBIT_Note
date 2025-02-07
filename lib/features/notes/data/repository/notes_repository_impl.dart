import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/features/notes/data/datasources/note_local_data_source.dart';
import 'package:habit_note/features/notes/data/models/models.dart';
import 'package:habit_note/features/notes/domain/repository/notes_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: NotesRepository)
class NotesRepositoryImpl implements NotesRepository {
  final NoteLocalDataSource _localDataSource;

  NotesRepositoryImpl(this._localDataSource);

  @override
  Future<Either<Failure, Null>> createNote(
    NoteModel note,
  ) async {
    try {
      await _localDataSource.createNote(note);
      return const Right(null);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, Null>> createTodo(
    TodoModel todo,
  ) async {
    try {
      final resp = await _localDataSource.createTodo(todo);
      return Right(resp);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, Null>> deleteNote(
    int id,
    String email,
  ) async {
    try {
      final resp = await _localDataSource.deleteNote(id, email);
      return Right(resp);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, Null>> deleteNotes() async {
    try {
      final resp = await _localDataSource.deleteNotes();
      return Right(resp);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, Null>> deleteTodo(
    int id,
    String email,
  ) async {
    try {
      final resp = await _localDataSource.deleteTodo(id, email);
      return Right(resp);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, Null>> deleteTodos() async {
    try {
      final resp = await _localDataSource.deleteTodos();
      return Right(resp);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, Null>> initialize() async {
    try {
      final resp = await _localDataSource.initialize();
      return Right(resp);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, List<NoteModel>>> readAllNotes(
    int? amount,
    String email,
  ) async {
    try {
      final resp = await _localDataSource.readAllNotes(amount, email);
      return Right(resp);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, List<TodoModel>>> readAllTodos(
    int? amount,
    String email,
  ) async {
    try {
      final resp = await _localDataSource.readAllTodos(amount, email);
      return Right(resp);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, NoteModel>> readNote(
    int id,
    String email,
  ) async {
    try {
      final resp = await _localDataSource.readNote(id, email);
      return Right(resp);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, TodoModel>> readTodo(
    int id,
    String email,
  ) async {
    try {
      final resp = await _localDataSource.readTodo(id, email);
      return Right(resp);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, Null>> updateNote(
    NoteModel note,
  ) async {
    try {
      final resp = await _localDataSource.updateNote(note);
      return Right(resp);
    } on Failure catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, Null>> updateTodo(
    TodoModel todo,
  ) async {
    try {
      final resp = await _localDataSource.updateTodo(todo);
      return Right(resp);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}
