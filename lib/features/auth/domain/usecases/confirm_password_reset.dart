import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/core/shared/usecase.dart';
import 'package:habit_note/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class ConfirmPasswordReset implements Usecase<Null, (String, String)> {
  final AuthRepository _repository;

  const ConfirmPasswordReset(this._repository);

  @override
  Future<Either<Failure, Null>> call({required (String, String) param}) {
    return _repository.confirmPasswordReset(
      param.$1,
      param.$2,
    );
  }
}
