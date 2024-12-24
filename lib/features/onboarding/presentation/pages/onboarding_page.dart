import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_note/core/extensions/build_context.dart';
import 'package:habit_note/dependency_injection.dart';
import 'package:habit_note/features/onboarding/presentation/controllers/onboarding_cubit.dart';
import 'package:habit_note/features/onboarding/presentation/widgets/page_item.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      appBar: AppBar(),
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
              builder: (context, state) {
                final items = state.items;
                return PageView(
                  controller: controller,
                  children: items.map((e) => PageItem(item: e)).toList(),
                );
              },
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3,
            (index) => AnimatedContainer(
              duration: Durations.medium3,
              width: 65,
              height: 16,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor:
                      Theme.of(context).colorScheme.surfaceContainerLow,
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                child: const Text('CREATE ACCOUNT'),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                child: const Text('LOG IN'),
              ),
            ],
          ),
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
