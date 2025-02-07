import 'package:dartz/dartz.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/features/auth/data/datasources/data_sources.dart';
import 'package:habit_note/features/auth/domain/entities/user.dart';
import 'package:habit_note/features/auth/domain/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;

  AuthRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, Null>> confirmPasswordReset(
    String code,
    String newPassword,
  ) async {
    try {
      await _remoteDataSource.confirmPasswordReset(code, newPassword);
      return const Right(null);
    } catch (e) {
      if (e is Failure) return Left(e);
      return const Left(Failure.unknown);
    }
  }

  @override
  Future<Either<Failure, Null>> deleteAccount() async {
    try {
      await _remoteDataSource.deleteAccount();
      return const Right(null);
    } catch (e) {
      if (e is Failure) return Left(e);
      return const Left(Failure.unknown);
    }
  }

  @override
  Future<Either<Failure, User?>> initialize() async {
    try {
      final resp = await _remoteDataSource.initialize();
      return Right(resp?.toUser());
    } catch (e) {
      if (e is Failure) return Left(e);
      return const Left(Failure.unknown);
    }
  }

  @override
  Future<Either<Failure, Null>> passwordReset(String email) async {
    try {
      await _remoteDataSource.sendPasswordReset(email);
      return const Right(null);
    } catch (e) {
      if (e is Failure) return Left(e);
      return const Left(Failure.unknown);
    }
  }

  @override
  Future<Either<Failure, User>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final resp = await _remoteDataSource.signIn(
        email: email,
        password: password,
      );
      return Right(resp.toUser());
    } catch (e) {
      if (e is Failure) return Left(e);
      return const Left(Failure.unknown);
    }
  }

  @override
  Future<Either<Failure, Null>> signOut() async {
    try {
      await _remoteDataSource.signOut();
      return const Right(null);
    } catch (e) {
      if (e is Failure) return Left(e);
      return const Left(Failure.unknown);
    }
  }

  @override
  Future<Either<Failure, User>> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final resp = await _remoteDataSource.signUp(
        email: email,
        password: password,
        name: name,
      );
      return Right(resp.toUser());
    } catch (e) {
      if (e is Failure) return Left(e);
      return const Left(Failure.unknown);
    }
  }

  @override
  Future<Either<Failure, bool>> verifyEmail() async {
    try {
      final resp = await _remoteDataSource.verifyEmail();
      return Right(resp);
    } catch (e) {
      if (e is Failure) return Left(e);
      return const Left(Failure.unknown);
    }
  }
}
