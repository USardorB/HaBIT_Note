import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:go_router/go_router.dart';
import 'package:habit_note/features/auth/auth_route.dart';
import 'package:habit_note/features/home/home_routes.dart';
import 'package:habit_note/features/home/presentation/pages/help_view.dart';
import 'package:habit_note/features/home/presentation/pages/home_view.dart';
import 'package:habit_note/features/home/presentation/pages/me_view.dart';
import 'package:habit_note/features/home/presentation/pages/ocr_view.dart';
import 'package:habit_note/features/onboarding/onboarding_route.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'Onboarding',
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      path: '/register',
      name: 'Create Account',
      builder: (context, state) => const CreateAccountPage(),
    ),
    GoRoute(
      path: '/login',
      name: 'Log In',
      builder: (context, state) => const LogInPage(),
    ),
    GoRoute(
      path: '/authenticate',
      name: 'Verify Email',
      builder: (context, state) => const VerifyEmailPage(),
    ),
    GoRoute(
      path: '/password',
      name: 'Forgot Password',
      builder: (context, state) => const ForgotPasswordPage(),
    ),
    ShellRoute(
      builder: (context, state, child) => HomePage(child: child),
      routes: [
        GoRoute(
          path: '/notes',
          name: 'Notes',
          builder: (context, state) => const HomeView(),
        ),
        GoRoute(
          path: '/ocr',
          name: 'OCR',
          builder: (context, state) => const OCRView(),
        ),
        GoRoute(
          path: '/help',
          name: 'Help',
          builder: (context, state) => const HelpView(),
        ),
        GoRoute(
          path: '/me',
          name: 'Me',
          builder: (context, state) => const MeView(),
        ),
      ],
    ),
  ],
  initialLocation: '/',
  debugLogDiagnostics: kDebugMode,
);
