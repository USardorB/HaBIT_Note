part of 'auth_bloc.dart';

final class AuthState extends Equatable {
  final String email;
  final String name;
  final String? photo;
  final bool isLoading;
  final String? error;
  final AuthStatus status;

  const AuthState({
    required this.email,
    required this.name,
    this.photo,
    this.isLoading = false,
    this.status = AuthStatus.initial,
    this.error,
  });

  factory AuthState._initial() => const AuthState(
        email: 'user@example.com',
        name: 'user',
      );

  AuthState copyWith({
    String? email,
    String? name,
    String? photo,
    bool? isLoading,
    AuthStatus? status,
    String? error,
  }) {
    return AuthState(
      email: email ?? this.email,
      name: name ?? this.name,
      photo: photo ?? this.photo,
      error: error,
      isLoading: isLoading ?? false,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [
        email,
        name,
        photo ?? '',
        status,
        error ?? '',
        isLoading,
      ];
}

enum AuthStatus { initial, registered, none }
