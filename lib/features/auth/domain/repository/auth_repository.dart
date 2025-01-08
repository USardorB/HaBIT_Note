import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/features/auth/domain/entities/user.dart';

abstract class AuthRepository {
  Future<Either<Failure, User?>> initialize();
  Future<Either<Failure, User>> signIn({
    required String email,
    required String password,
  });
  Future<Either<Failure, Null>> signOut();
  Future<Either<Failure, User>> signUp({
    required String email,
    required String password,
    required String name,
  });
  Future<Either<Failure, Null>> passwordReset(String email);
  Future<Either<Failure, Null>> confirmPasswordReset(
    String code,
    String newPassword,
  );
  Future<Either<Failure, bool>> verifyEmail();
  Future<Either<Failure, Null>> deleteAccount();
}
