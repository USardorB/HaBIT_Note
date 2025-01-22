import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_note/core/extensions/build_context.dart';
import 'package:habit_note/dependency_injection.dart';
import 'package:habit_note/features/auth/presentation/pages/create_account_page.dart';
import 'package:habit_note/features/auth/presentation/pages/log_in_page.dart';
import 'package:habit_note/features/onboarding/presentation/controllers/onboarding_cubit.dart';
import 'package:habit_note/features/onboarding/presentation/widgets/page_indicator.dart';
import 'package:habit_note/features/onboarding/presentation/widgets/page_item.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});
  static Route route() => MaterialPageRoute(
        builder: (context) => const OnboardingPage(),
      );
  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late final PageController _controller;
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorScheme.of(context).secondary,
      appBar: AppBar(backgroundColor: ColorScheme.of(context).secondary),
      drawer: const Drawer(),
      body: Column(spacing: 25, children: [
        const ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 36),
          title: Text('WELCOME TO'),
          subtitle: Text('HaBIT Note'),
        ),
        SizedBox(
          height: context.forHeight(0.50),
          child: BlocProvider(
            create: (BuildContext context) => sl<OnboardingCubit>()..getitems(),
            child: BlocConsumer<OnboardingCubit, OnboardingCubitState>(
              listener: (context, state) {
                _showSnackbarOnError(state.error, context);
              },
              builder: (context, state) => PageView(
                controller: _controller,
                onPageChanged: (value) => setState(() => selectedIndex = value),
                children: state.items.map((e) {
                  return PageItem(item: e);
                }).toList(),
              ),
            ),
          ),
        ),
        PageViewIndicator(selectedIndex: selectedIndex),
        _buildButtons(context),
      ]),
    );
  }

  Padding _buildButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        ElevatedButton(
          onPressed: () => context.push(CreateAccountPage.route()),
          child: const Text('CREATE ACCOUNT'),
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () => context.push(LogInPage.route()),
          style: ElevatedButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.primary,
            backgroundColor: Theme.of(context).colorScheme.surfaceContainerLow,
          ),
          child: const Text('LOG IN'),
        ),
      ]),
    );
  }

  void _showSnackbarOnError(String? error, BuildContext context) {
    if (error != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error)),
      );
    }
  }
}
