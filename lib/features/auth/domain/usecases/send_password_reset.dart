import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/core/shared/usecase.dart';
import 'package:habit_note/features/auth/domain/repository/auth_repository.dart';

class SendPasswordReset implements Usecase<Null, String> {
  final AuthRepository _repository;

  const SendPasswordReset(this._repository);

  @override
  Future<Either<Failure, Null>> call({required String param}) {
    return _repository.passwordReset(param);
  }
}
