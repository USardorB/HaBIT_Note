import 'package:get_it/get_it.dart';
import 'package:habit_note/features/auth/presentation/controllers/auth_bloc.dart';

import 'package:habit_note/features/onboarding/presentation/controllers/onboarding_cubit.dart';
import 'features/onboarding/data/data.dart';
import 'features/onboarding/domain/domain.dart';

import 'package:habit_note/features/auth/data/datasources/data_sources.dart';
import 'package:habit_note/features/auth/data/repository/auth_repository_impl.dart';
import 'package:habit_note/features/auth/domain/repository/auth_repository.dart';
import 'package:habit_note/features/auth/domain/usecases/usecases.dart';

final sl = GetIt.instance;

void initializeGetIt() {
  _regOnboarding();
  _regAuth();
}

void _regOnboarding() {
  sl.registerLazySingleton<OnboardingLocalDataSource>(
    () => OnboardingLocalDataSourceImpl(),
  );
  sl.registerLazySingleton<OnboardingRepository>(
    () => OnboardingRepositoryImpl(sl()),
  );
  sl.registerLazySingleton(() => GetOnboardingData(sl()));
  sl.registerLazySingleton(() => OnboardingCubit(sl()));
}

void _regAuth() {
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(),
  );
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(sl()),
  );
  sl.registerLazySingleton(() => ConfirmPasswordReset(sl()));
  sl.registerLazySingleton(() => Initialize(sl()));
  sl.registerLazySingleton(() => SendEmailVerification(sl()));
  sl.registerLazySingleton(() => SendPasswordReset(sl()));
  sl.registerLazySingleton(() => SignIn(sl()));
  sl.registerLazySingleton(() => SignOut(sl()));
  sl.registerLazySingleton(() => SignUp(sl()));
  sl.registerLazySingleton(() => AuthBloc(
        sl(),
        sl(),
        sl(),
        sl(),
        sl(),
        sl(),
        sl(),
      ));
}
