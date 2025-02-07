import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/core/shared/usecase.dart';
import 'package:habit_note/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class SendEmailVerification implements Usecase<bool, Null> {
  final AuthRepository _repository;

  const SendEmailVerification(this._repository);

  @override
  Future<Either<Failure, bool>> call({Null param}) {
    return _repository.verifyEmail();
  }
}
