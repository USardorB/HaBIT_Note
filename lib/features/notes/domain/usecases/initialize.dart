import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/core/shared/usecase.dart';
import 'package:habit_note/features/notes/domain/repository/notes_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class InitializeDB implements Usecase<Null, Null> {
  final NotesRepository _repository;

  const InitializeDB(this._repository);
  @override
  Future<Either<Failure, Null>> call({Null param}) {
    return _repository.initialize();
  }
}
