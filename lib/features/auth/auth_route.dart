import 'package:go_router/go_router.dart';
import 'package:habit_note/features/auth/presentation/pages/create_account_page.dart';
import 'package:habit_note/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:habit_note/features/auth/presentation/pages/log_in_page.dart';
import 'package:habit_note/features/auth/presentation/pages/verify_email_page.dart';

final authRoutes = [
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
];
