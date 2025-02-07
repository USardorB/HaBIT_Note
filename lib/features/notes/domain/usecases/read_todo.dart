import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/core/shared/usecase.dart';
import 'package:habit_note/features/notes/data/models/todo_model.dart';
import 'package:habit_note/features/notes/domain/repository/notes_repository.dart';

class ReadTodo implements Usecase<TodoModel, (int, String)> {
  final NotesRepository _repository;

  ReadTodo(this._repository);
  @override
  Future<Either<Failure, TodoModel>> call({required (int, String) param}) {
    return _repository.readTodo(param.$1, param.$2);
  }
}
