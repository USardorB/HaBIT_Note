import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_note/core/shared/navigator_service.dart';
import 'package:habit_note/features/auth/presentation/controllers/auth_bloc.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorScheme.of(context).primary,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.status == AuthStatus.none) {
            context.go(NavigatorService.onboardingPath);
          }
          if (state.status == AuthStatus.registered) {
            context.go(NavigatorService.notesPath);
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(flex: 5),
            Image.asset('assets/images/logo.png', scale: 4),
            const Spacer(flex: 5),
            const Text(
              '© Copyright HABIT 2021. All rights reserved',
              textAlign: TextAlign.center,
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
