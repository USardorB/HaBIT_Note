import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_note/features/auth/presentation/pages/create_account_page.dart';

final authRoutes = [
  GoRoute(
    path: '/register',
    name: 'Create Account',
    builder: (context, state) => const CreateAccountPage(),
  ),
  GoRoute(
    path: '/login',
    name: 'Log In',
    builder: (context, state) => const CreateAccountPage(),
  ),
  GoRoute(
    path: '/authenticate',
    name: 'Verify Email',
    builder: (context, state) => const Placeholder(),
  ),
];
