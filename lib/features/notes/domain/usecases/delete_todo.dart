import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/core/shared/usecase.dart';
import 'package:habit_note/features/notes/domain/repository/notes_repository.dart';

class DeleteTodo implements Usecase<Null, (int, String)> {
  final NotesRepository _repository;

  DeleteTodo(this._repository);
  @override
  Future<Either<Failure, Null>> call({required (int, String) param}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
