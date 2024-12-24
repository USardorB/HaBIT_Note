import 'package:flutter/material.dart';
import 'package:habit_note/features/onboarding/presentation/pages/onboarding_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnboardingPage(),
    );
  }
}
