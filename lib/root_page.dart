import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_note/core/extensions/build_context.dart';
import 'package:habit_note/core/presentation/home_page.dart';
import 'package:habit_note/core/presentation/splash_screen_page.dart';
import 'package:habit_note/features/auth/presentation/controllers/auth_bloc.dart';
import 'package:habit_note/features/onboarding/presentation/pages/onboarding_page.dart';

class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.status != AuthStatus.initial &&
          current.error == previous.error &&
          current.isLoading == false,
      listener: (context, state) => context.popUntillRoot(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listenWhen: (previous, current) => current.error != null,
        listener: (context, state) => ScaffoldMessenger.of(context)
          ..clearSnackBars()
          ..showSnackBar(SnackBar(content: Text(state.error!))),
        builder: (context, state) => switch (state.status) {
          AuthStatus.initial => const SplashScreenPage(),
          AuthStatus.registered => const HomePage(),
          AuthStatus.none => const OnboardingPage()
        },
      ),
    );
  }
}
