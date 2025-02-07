// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:habit_note/features/auth/data/datasources/auth_remote_data_source.dart'
    as _i688;
import 'package:habit_note/features/auth/data/datasources/auth_remote_data_source_impl.dart'
    as _i641;
import 'package:habit_note/features/auth/data/datasources/data_sources.dart'
    as _i110;
import 'package:habit_note/features/auth/data/repository/auth_repository_impl.dart'
    as _i1009;
import 'package:habit_note/features/auth/domain/repository/auth_repository.dart'
    as _i551;
import 'package:habit_note/features/auth/domain/usecases/confirm_password_reset.dart'
    as _i1060;
import 'package:habit_note/features/auth/domain/usecases/initialize.dart'
    as _i417;
import 'package:habit_note/features/auth/domain/usecases/send_email_verification.dart'
    as _i978;
import 'package:habit_note/features/auth/domain/usecases/send_password_reset.dart'
    as _i743;
import 'package:habit_note/features/auth/domain/usecases/sign_in.dart' as _i629;
import 'package:habit_note/features/auth/domain/usecases/sign_out.dart'
    as _i955;
import 'package:habit_note/features/auth/domain/usecases/sign_up.dart' as _i373;
import 'package:habit_note/features/auth/domain/usecases/usecases.dart'
    as _i312;
import 'package:habit_note/features/auth/presentation/controllers/auth_bloc.dart'
    as _i98;
import 'package:habit_note/features/notes/data/datasources/note_local_data_source.dart'
    as _i479;
import 'package:habit_note/features/notes/data/datasources/note_local_data_source_impl.dart'
    as _i241;
import 'package:habit_note/features/notes/data/repository/notes_repository_impl.dart'
    as _i516;
import 'package:habit_note/features/notes/domain/repository/notes_repository.dart'
    as _i923;
import 'package:habit_note/features/notes/domain/usecases/create_note.dart'
    as _i1026;
import 'package:habit_note/features/notes/domain/usecases/initialize.dart'
    as _i598;
import 'package:habit_note/features/notes/domain/usecases/usecases.dart'
    as _i252;
import 'package:habit_note/features/notes/presentation/controllers/notes_cubit.dart'
    as _i738;
import 'package:habit_note/features/onboarding/data/datasources/onboarding_local_data_source.dart'
    as _i947;
import 'package:habit_note/features/onboarding/data/datasources/onboarding_local_data_source_impl.dart'
    as _i115;
import 'package:habit_note/features/onboarding/data/repositories/onboarding_repository_impl.dart'
    as _i851;
import 'package:habit_note/features/onboarding/domain/repository/onboarding_repository.dart'
    as _i334;
import 'package:habit_note/features/onboarding/domain/usecases/get_onboarding_data.dart'
    as _i287;
import 'package:habit_note/features/onboarding/presentation/controllers/onboarding_cubit.dart'
    as _i775;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i947.OnboardingLocalDataSource>(
        () => _i115.OnboardingLocalDataSourceImpl());
    gh.singleton<_i479.NoteLocalDataSource>(
        () => _i241.NoteLocalDataSourceImpl());
    gh.singleton<_i688.AuthRemoteDataSource>(
        () => _i641.AuthRemoteDataSourceImpl());
    gh.singleton<_i923.NotesRepository>(
        () => _i516.NotesRepositoryImpl(gh<_i479.NoteLocalDataSource>()));
    gh.singleton<_i334.OnboardingRepository>(() =>
        _i851.OnboardingRepositoryImpl(gh<_i947.OnboardingLocalDataSource>()));
    gh.singleton<_i551.AuthRepository>(
        () => _i1009.AuthRepositoryImpl(gh<_i110.AuthRemoteDataSource>()));
    gh.singleton<_i955.SignOut>(
        () => _i955.SignOut(gh<_i551.AuthRepository>()));
    gh.singleton<_i743.SendPasswordReset>(
        () => _i743.SendPasswordReset(gh<_i551.AuthRepository>()));
    gh.singleton<_i373.SignUp>(() => _i373.SignUp(gh<_i551.AuthRepository>()));
    gh.singleton<_i1060.ConfirmPasswordReset>(
        () => _i1060.ConfirmPasswordReset(gh<_i551.AuthRepository>()));
    gh.singleton<_i629.SignIn>(() => _i629.SignIn(gh<_i551.AuthRepository>()));
    gh.singleton<_i978.SendEmailVerification>(
        () => _i978.SendEmailVerification(gh<_i551.AuthRepository>()));
    gh.singleton<_i417.Initialize>(
        () => _i417.Initialize(gh<_i551.AuthRepository>()));
    gh.factory<_i98.AuthBloc>(() => _i98.AuthBloc(
          gh<_i312.ConfirmPasswordReset>(),
          gh<_i312.Initialize>(),
          gh<_i312.SendEmailVerification>(),
          gh<_i312.SendPasswordReset>(),
          gh<_i312.SignIn>(),
          gh<_i312.SignOut>(),
          gh<_i312.SignUp>(),
        ));
    gh.singleton<_i1026.CreateNote>(
        () => _i1026.CreateNote(gh<_i923.NotesRepository>()));
    gh.singleton<_i598.InitializeDB>(
        () => _i598.InitializeDB(gh<_i923.NotesRepository>()));
    gh.singleton<_i287.GetOnboardingData>(
        () => _i287.GetOnboardingData(gh<_i334.OnboardingRepository>()));
    gh.factory<_i738.NotesCubit>(() => _i738.NotesCubit(
          gh<_i252.InitializeDB>(),
          gh<_i252.CreateNote>(),
        ));
    gh.factory<_i775.OnboardingCubit>(
        () => _i775.OnboardingCubit(gh<_i287.GetOnboardingData>()));
    return this;
  }
}
