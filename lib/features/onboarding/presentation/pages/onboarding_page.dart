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
      body: Column(
        spacing: 25,
        children: [
          const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 36),
            title: Text('WELCOME TO'),
            subtitle: Text('HaBIT Note'),
          ),
          SizedBox(
            height: context.forHeight(0.50),
            child: BlocProvider(
              create: (BuildContext context) =>
                  sl<OnboardingCubit>()..getitems(),
              child: BlocConsumer<OnboardingCubit, OnboardingCubitState>(
                listener: (context, state) {
                  if (state.error != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.error!)),
                    );
                  }
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('CREATE ACCOUNT'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('LOG IN'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
