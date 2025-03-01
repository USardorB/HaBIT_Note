import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/core/shared/usecase.dart';
import 'package:habit_note/features/notes/domain/repository/notes_repository.dart';

class DeleteNote implements Usecase<Null, (int, String)> {
  final NotesRepository _repository;

  DeleteNote(this._repository);
  @override
  Future<Either<Failure, Null>> call({required (int, String) param}) {
    return _repository.deleteNote(param.$1, param.$2);
  }
}
