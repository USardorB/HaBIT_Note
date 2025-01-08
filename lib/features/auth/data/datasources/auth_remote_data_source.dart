import 'package:habit_note/features/auth/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel?> initialize();
  Future<UserModel> signIn({
    required String email,
    required String password,
  });
  Future<void> signOut();
  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
  });
  Future<void> sendPasswordReset(String email);
  Future<void> confirmPasswordReset(
    String code,
    String newPassword,
  );
  Future<bool> verifyEmail();
  Future<void> deleteAccount();
}
