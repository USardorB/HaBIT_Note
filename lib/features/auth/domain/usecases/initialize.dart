import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/core/shared/usecase.dart';
import 'package:habit_note/features/auth/domain/entities/user.dart';
import 'package:habit_note/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class Initialize implements Usecase<User?, Null> {
  final AuthRepository _repository;

  const Initialize(this._repository);

  @override
  Future<Either<Failure, User?>> call({Null param}) {
    return _repository.initialize();
  }
}
