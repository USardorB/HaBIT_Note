import 'package:go_router/go_router.dart';
import 'package:habit_note/features/onboarding/presentation/pages/onboarding_page.dart';

final onboardingRoutes = [
  GoRoute(
    path: '/',
    name: 'Onboarding',
    builder: (context, state) => const OnboardingPage(),
  )
];
