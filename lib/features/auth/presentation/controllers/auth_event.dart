part of 'auth_bloc.dart';

sealed class AuthEvent {
  const AuthEvent();
}

class AuthSignIn extends AuthEvent {
  final String email;
  final String password;

  const AuthSignIn({
    required this.email,
    required this.password,
  });
}

class AuthSignUp extends AuthEvent {
  final String email;
  final String password;
  final String name;

  const AuthSignUp({
    required this.email,
    required this.password,
    required this.name,
  });
}

class AuthSignOut extends AuthEvent {
  const AuthSignOut();
}

class AuthSendPasswordReset extends AuthEvent {
  final String email;
  const AuthSendPasswordReset(this.email);
}

class AuthConfirmPasswordReset extends AuthEvent {
  final String email;
  final String code;
  const AuthConfirmPasswordReset(this.email, this.code);
}

class AuthInitialize extends AuthEvent {
  const AuthInitialize();
}

class AuthSendEmailVerification extends AuthEvent {
  const AuthSendEmailVerification();
}
