import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:habit_note/core/shared/failure.dart';
import 'package:habit_note/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:habit_note/features/auth/data/models/user_model.dart';
import 'package:habit_note/features/auth/data/datasources/firebase_options.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<void> deleteAccount() async {
    try {
      await FirebaseAuth.instance.currentUser?.delete();
    } on FirebaseAuthException catch (e) {
      throw switch (e.code) {
        'requires-recent-login' => Failure.reAuthenticate,
        _ => Failure.unknown,
      };
    } on SocketException {
      throw Failure.connection;
    } catch (e) {
      throw Failure.unknown;
    }
  }

  @override
  Future<void> sendPasswordReset(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: email,
      );
    } on FirebaseAuthException catch (e) {
      throw switch (e.code) {
        'auth/invalid-email' => Failure.invalidEmail,
        'auth/user-not-found' => Failure.userNotFound,
        _ => Failure.unknown,
      };
    } on SocketException {
      throw Failure.connection;
    } catch (e) {
      throw Failure.unknown;
    }
  }

  @override
  Future<void> confirmPasswordReset(
    String code,
    String newPassword,
  ) async {
    try {
      await FirebaseAuth.instance.confirmPasswordReset(
        code: code,
        newPassword: newPassword,
      );
    } on FirebaseAuthException catch (e) {
      throw switch (e.code) {
        'expired-action-code' => Failure.codeExpired,
        'invalid-action-code' => Failure.codeMissmatch,
        'weak-password' => Failure.weakPassword,
        _ => Failure.unknown,
      };
    } on SocketException {
      throw Failure.connection;
    } catch (e) {
      throw Failure.unknown;
    }
  }

  @override
  Future<UserModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // await Future.delayed(const Duration(seconds: 2));
      return UserModel.fromFirebase(FirebaseAuth.instance.currentUser!);
    } on FirebaseAuthException catch (e) {
      throw switch (e.code) {
        'invalid-email' => Failure.invalidEmail,
        'too-many-requests' => Failure.tooManyRequests,
        'user-disabled' => Failure.userDisabled,
        'weak-password' => Failure.weakPassword,
        'user-token-expired' => Failure.tokenExpired,
        'network-request-failed' => Failure.connection,
        'invalid-credential' ||
        'INVALID_LOGIN_CREDENTIALS' ||
        'wrong-password' =>
          Failure.invalidCredentials,
        _ => Failure.unknown,
      };
    } on SocketException {
      throw Failure.connection;
    } catch (e) {
      throw Failure.unknown;
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } on SocketException {
      throw Failure.connection;
    } catch (e) {
      throw Failure.unknown;
    }
  }

  @override
  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await FirebaseAuth.instance.currentUser?.updateDisplayName(name);

      return UserModel(email: email, name: name);
    } on FirebaseAuthException catch (e) {
      throw switch (e.code) {
        'invalid-email' => Failure.invalidEmail,
        'too-many-requests' => Failure.tooManyRequests,
        'user-disabled' => Failure.userDisabled,
        'weak-password' => Failure.weakPassword,
        'email-already-in-use' => Failure.emailInUse,
        'invalid-credential' => Failure.invalidCredentials,
        'user-token-expired' => Failure.tokenExpired,
        'network-request-failed' => Failure.connection,
        _ => Failure.unknown,
      };
    } on SocketException {
      throw Failure.connection;
    } catch (e) {
      throw Failure.unknown;
    }
  }

  @override
  Future<bool> verifyEmail() async {
    try {
      await FirebaseAuth.instance.currentUser?.reload();
      if (FirebaseAuth.instance.currentUser!.emailVerified) return true;
      await FirebaseAuth.instance.currentUser?.sendEmailVerification();
      return false;
    } on SocketException {
      throw Failure.connection;
    } catch (e) {
      throw Failure.unknown;
    }
  }

  @override
  Future<UserModel?> initialize() async {
    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      // await Future.delayed(const Duration(seconds: 2));
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) return UserModel.fromFirebase(user);
      return null;
    } catch (e) {
      throw Failure.unknown;
    }
  }
}
