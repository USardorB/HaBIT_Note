import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:go_router/go_router.dart';
import 'package:habit_note/core/presentation/home_page.dart';
import 'package:habit_note/features/auth/auth_route.dart';
import 'package:habit_note/features/me/presentation/pages/help_view.dart';
import 'package:habit_note/features/me/presentation/pages/me_view.dart';
import 'package:habit_note/features/notes/presentation/pages/notes_page.dart';
import 'package:habit_note/features/ocr/presentation/pages/ocr_page.dart';
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
          builder: (context, state) => const NotesPage(),
        ),
        GoRoute(
          path: '/ocr',
          name: 'OCR',
          builder: (context, state) => const OCRPage(),
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
