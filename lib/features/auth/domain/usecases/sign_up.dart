import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/core/shared/usecase.dart';
import 'package:habit_note/features/auth/domain/entities/user.dart';
import 'package:habit_note/features/auth/domain/repository/auth_repository.dart';

class SignUp implements Usecase<User, (String, String, String)> {
  final AuthRepository _repository;

  const SignUp(this._repository);

  @override
  Future<Either<Failure, User>> call({
    required (String, String, String) param,
  }) {
    return _repository.signUp(
      email: param.$1,
      password: param.$2,
      name: param.$3,
    );
  }
}
