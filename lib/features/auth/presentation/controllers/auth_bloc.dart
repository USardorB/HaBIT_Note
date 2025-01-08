import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/usecases/usecases.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final ConfirmPasswordReset _reset;
  final Initialize _initialize;
  final SendEmailVerification _emailVerification;
  final SendPasswordReset _passwordReset;
  final SignIn _signIn;
  final SignOut _signOut;
  final SignUp _signUp;

  AuthBloc(
    this._reset,
    this._initialize,
    this._emailVerification,
    this._passwordReset,
    this._signIn,
    this._signOut,
    this._signUp,
  ) : super(AuthState._initial()) {
    on<AuthInitialize>((event, emit) async {
      final resp = await _initialize();
      resp.fold(
        (l) => emit(state.copyWith(error: l.msg)),
        (r) {
          if (r != null) {
            emit(AuthState(
              email: r.email,
              name: r.name,
              photo: r.photo,
              status: AuthStatus.registered,
            ));
          } else {
            emit(state.copyWith(status: AuthStatus.none));
          }
        },
      );
    });
  }
}
