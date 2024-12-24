import 'package:get_it/get_it.dart';
import 'package:habit_note/features/onboarding/presentation/controllers/onboarding_cubit.dart';
import 'features/onboarding/data/data.dart';
import 'features/onboarding/domain/domain.dart';

final sl = GetIt.instance;

void initializeGetIt() {
  _regOnboarding();
}

void _regOnboarding() {
  sl.registerLazySingleton<OnboardingLocalDataSource>(
    () => OnboardingLocalDataSourceImpl(),
  );
  sl.registerLazySingleton<OnboardingRepository>(
    () => OnboardingRepositoryImpl(sl()),
  );
  sl.registerLazySingleton(() => GetOnboardingData(sl()));
  sl.registerFactory(() => OnboardingCubit(sl()));
}
