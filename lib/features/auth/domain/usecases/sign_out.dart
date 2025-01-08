import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/core/shared/usecase.dart';
import 'package:habit_note/features/auth/domain/repository/auth_repository.dart';

class SignOut implements Usecase<Null, Null> {
  final AuthRepository _repository;

  const SignOut(this._repository);

  @override
  Future<Either<Failure, Null>> call({Null param}) {
    return _repository.signOut();
  }
}
