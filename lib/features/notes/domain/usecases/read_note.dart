import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/core/shared/usecase.dart';
import 'package:habit_note/features/notes/data/models/models.dart';
import 'package:habit_note/features/notes/domain/repository/notes_repository.dart';

class ReadNote implements Usecase<NoteModel, (int, String)> {
  final NotesRepository _repository;

  ReadNote(this._repository);
  @override
  Future<Either<Failure, NoteModel>> call({required (int, String) param}) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
