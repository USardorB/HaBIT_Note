// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
// import 'package:habit_note/core/presentation/splash_screen_page.dart';
// import 'package:habit_note/core/shared/navigator_service.dart';
// import 'package:habit_note/features/auth/presentation/controllers/auth_bloc.dart';

// class RootPage extends StatelessWidget {
//   const RootPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<AuthBloc, AuthState>(
//       listenWhen: (previous, current) => previous.status != current.status,
//       // listener: (context, state) => switch (state.status) {
//       //   AuthStatus.initial => '',
//       //   AuthStatus.registered => context.go(NavigatorService.notesPath),
//       //   AuthStatus.none => context.go(NavigatorService.onboardingPath),
//       // },
//       // if (state.status == AuthStatus.initial) return;
//       // if (state.status == AuthStatus.registered) {
//       //   context.go(NavigatorService.notesPath);
//       // } else if (state.status == AuthStatus.none) {
//       //   context.go(NavigatorService.onboardingPath);
//       // }
//       listener: (BuildContext context, state) {},
//       child: const SplashScreenPage(),
//     );
//   }
// }
