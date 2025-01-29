import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_note/core/l10n/strings.dart';
import 'package:habit_note/dependency_injection.dart';
import 'package:habit_note/features/auth/presentation/controllers/auth_bloc.dart';

class MeView extends StatelessWidget {
  const MeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: sl<AuthBloc>(),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(const AuthSignOut());
                  },
                  child: Text(Strings.logOut),
                ),
                const Spacer(),
              ],
            ),
          );
        },
      ),
    );
  }
}
