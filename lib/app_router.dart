import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_note/core/presentation/home_page.dart';
import 'package:habit_note/core/presentation/splash_screen_page.dart';
import 'package:habit_note/core/shared/navigator_service.dart';
import 'package:habit_note/dependency_injection.dart';
import 'package:habit_note/features/auth/auth_route.dart';
import 'package:habit_note/features/auth/presentation/controllers/auth_bloc.dart';
import 'package:habit_note/features/me/presentation/pages/help_view.dart';
import 'package:habit_note/features/me/presentation/pages/me_view.dart';
import 'package:habit_note/features/notes/presentation/pages/notes_page.dart';
import 'package:habit_note/features/ocr/presentation/pages/ocr_page.dart';
import 'package:habit_note/features/onboarding/presentation/pages/onboarding_page.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: NavigatorService.splashScreenPath,
      name: NavigatorService.splashScreenName,
      builder: (context, state) => const SplashScreenPage(),
    ),
    GoRoute(
      path: NavigatorService.createAccountPath,
      name: NavigatorService.createAccountName,
      builder: (context, state) => const CreateAccountPage(),
    ),
    GoRoute(
      path: NavigatorService.onboardingPath,
      name: NavigatorService.onboardingName,
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      path: NavigatorService.loginPath,
      name: NavigatorService.loginName,
      builder: (context, state) => const LogInPage(),
    ),
    GoRoute(
      path: NavigatorService.authenticatePath,
      name: NavigatorService.authenticateName,
      builder: (context, state) => const VerifyEmailPage(),
    ),
    GoRoute(
      path: NavigatorService.recoveryPath,
      name: NavigatorService.recoveryName,
      builder: (context, state) => const ForgotPasswordPage(),
    ),
    ShellRoute(
      builder: (context, state, child) => HomePage(child: child),
      routes: [
        GoRoute(
          path: NavigatorService.notesPath,
          name: NavigatorService.notesName,
          builder: (context, state) => const NotesPage(),
        ),
        GoRoute(
          path: NavigatorService.ocrPath,
          name: NavigatorService.ocrName,
          builder: (context, state) => const OCRPage(),
        ),
        GoRoute(
          path: NavigatorService.helpPath,
          name: NavigatorService.helpName,
          builder: (context, state) => const HelpView(),
        ),
        GoRoute(
          path: NavigatorService.mePath,
          name: NavigatorService.meName,
          builder: (context, state) => const MeView(),
        ),
      ],
    ),
  ],
  refreshListenable: sl<AuthBloc>(),
  redirect: (context, state) {
    final authState = context.watch<AuthBloc>().state.status;
    return switch (authState) {
      AuthStatus.initial => NavigatorService.splashScreenPath,
      AuthStatus.registered => NavigatorService.notesPath,
      AuthStatus.none => NavigatorService.onboardingPath
    };
  },
  initialLocation: NavigatorService.splashScreenPath,
  debugLogDiagnostics: kDebugMode,
);
