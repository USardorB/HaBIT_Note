import 'package:flutter/foundation.dart' show kDebugMode;
// import 'package:flutter/widgets.dart' show GlobalKey, NavigatorState;
import 'package:go_router/go_router.dart';
import 'package:habit_note/features/auth/auth_route.dart';
import 'package:habit_note/features/home/home_routes.dart';
import 'package:habit_note/features/onboarding/onboarding_route.dart';

// final _rootNavigatorKey = GlobalKey<NavigatorState>();
final goRouter = GoRouter(
  routes: [
    ...onboardingRoutes,
    ...authRoutes,
    ...homeRoute,
  ],
  initialLocation: onboardingRoutes.first.path,
  debugLogDiagnostics: kDebugMode,

  // errorBuilder: (context, state) => ErrorPage(error: state.error),
);
