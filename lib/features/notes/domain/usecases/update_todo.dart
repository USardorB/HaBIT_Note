import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/core/shared/usecase.dart';
import 'package:habit_note/features/notes/data/models/models.dart';
import 'package:habit_note/features/notes/domain/repository/notes_repository.dart';

class UpdateTodo implements Usecase<Null, TodoModel> {
  final NotesRepository _repository;

  UpdateTodo(this._repository);
  @override
  Future<Either<Failure, Null>> call({required TodoModel param}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
