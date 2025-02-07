import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/core/shared/usecase.dart';
import 'package:habit_note/features/notes/data/models/models.dart';
import 'package:habit_note/features/notes/domain/repository/notes_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class CreateNote implements Usecase<Null, NoteModel> {
  final NotesRepository _repository;

  CreateNote(this._repository);
  @override
  Future<Either<Failure, Null>> call({required NoteModel param}) {
    return _repository.createNote(param);
  }
}
