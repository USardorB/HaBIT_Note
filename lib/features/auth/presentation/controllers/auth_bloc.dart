import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../domain/usecases/usecases.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> with ChangeNotifier {
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
    on<AuthInitialize>(_onInit);
    on<AuthSignIn>(_onSignIn);
    on<AuthSignUp>(_onSignUp);
    on<AuthSignOut>(_onSignOut);
    on<AuthSendPasswordReset>(_onPasswordReset);
    on<AuthSendEmailVerification>(_onVerify);
    on<AuthConfirmPasswordReset>(_onConfirm);
  }

  @override
  void onChange(Change<AuthState> change) {
    super.onChange(change);
    notifyListeners();
  }

  FutureOr<void> _onInit(
    AuthInitialize event,
    Emitter<AuthState> emit,
  ) async {
    final resp = await _initialize();
    resp.fold((l) {
      log('Error when initializing Auth Bloc');
      emit(state.copyWith(error: l.msg));
    }, (r) {
      if (r != null) {
        emit(AuthState(
          email: r.email,
          name: r.name,
          photo: r.photo,
          status: AuthStatus.registered,
        ));
        log('Auth bloc has been initialized and a user found');
      } else {
        log('Auth bloc has been initialized but no user is found');
        emit(state.copyWith(status: AuthStatus.none));
      }
    });
  }

  FutureOr<void> _onSignIn(
    AuthSignIn event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final resp = await _signIn(param: (event.email, event.password));
    resp.fold((l) {
      log(l.msg);
      emit(state.copyWith(error: l.msg));
    }, (r) {
      log('successfully signedIn');
      emit(AuthState(
        email: r.email,
        name: r.name,
        photo: r.photo,
        status: AuthStatus.registered,
      ));
    });
  }

  FutureOr<void> _onSignUp(
    AuthSignUp event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final resp = await _signUp(param: (
      event.email,
      event.password,
      event.name,
    ));
    resp.fold((l) {
      log(l.msg);
      emit(state.copyWith(error: l.msg));
    }, (r) {
      log('successfully signedUp');
      emit(AuthState(
        email: r.email,
        name: r.name,
        photo: r.photo,
        status: AuthStatus.registered,
      ));
    });
  }

  FutureOr<void> _onSignOut(
    AuthSignOut event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final resp = await _signOut();
    resp.fold((l) {
      emit(state.copyWith(error: l.msg));
    }, (r) {
      emit(AuthState._initial().copyWith(status: AuthStatus.none));
    });
  }

  FutureOr<void> _onPasswordReset(
    AuthSendPasswordReset event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final resp = await _passwordReset(param: event.email);
    resp.fold((l) {
      emit(state.copyWith(error: l.msg));
    }, (r) {
      emit(state.copyWith());
    });
  }

  FutureOr<void> _onVerify(
    AuthSendEmailVerification event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final resp = await _emailVerification();
    resp.fold((l) {
      emit(state.copyWith(error: l.msg));
    }, (r) {
      emit(state.copyWith());
    });
  }

  FutureOr<void> _onConfirm(
    AuthConfirmPasswordReset event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final resp = await _reset(param: (event.code, event.email));
    resp.fold((l) {
      emit(state.copyWith(error: l.msg));
    }, (r) {
      emit(state.copyWith());
    });
  }
}
