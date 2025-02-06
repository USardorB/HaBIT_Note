import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_note/core/extensions/build_context.dart';
import 'package:habit_note/core/l10n/strings.dart';
import 'package:habit_note/features/auth/presentation/controllers/auth_bloc.dart';
import 'package:habit_note/features/auth/presentation/pages/create_account_page.dart';
import 'package:habit_note/features/auth/presentation/pages/forgot_password_page.dart';
import 'package:habit_note/features/auth/presentation/widgets/authentication_forum.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});
  static Route route() => MaterialPageRoute(
        builder: (context) => const LogInPage(),
      );
  @override
  State<LogInPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<LogInPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  final _forumKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorScheme.of(context).secondary,
      appBar: AppBar(
        title: Text(Strings.logIn),
        backgroundColor: ColorScheme.of(context).secondary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(Strings.welcomeBack),
              subtitle: Text(Strings.pleaseLoginWithYourCredentials),
            ),
            const Spacer(flex: 1),
            AuthForum(
              _forumKey,
              email: _email,
              password: _password,
            ),
            const Spacer(flex: 1),
            Align(
              alignment: const Alignment(1, 0),
              child: InkWell(
                onTap: () => context.push(ForgotPasswordPage.route()),
                child: Text(Strings.forgotPassword),
              ),
            ),
            const Spacer(flex: 5),
            const Text('Don’t have an account yet ?'),
            Align(
              alignment: const Alignment(-1, 0),
              child: InkWell(
                onTap: () {
                  if (!(_forumKey.currentState?.validate() ?? false)) return;
                  context.push(CreateAccountPage.route());
                },
                child: Text(
                  Strings.createAnAccountHere,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    decorationColor: ColorScheme.of(context).primary,
                    color: ColorScheme.of(context).primary,
                  ),
                ),
              ),
            ),
            const Spacer(flex: 12),
            ElevatedButton(
              onPressed: () {
                if (!(_forumKey.currentState?.validate() ?? false)) return;
                context.read<AuthBloc>().add(AuthSignIn(
                      email: _email.text,
                      password: _password.text,
                    ));
              },
              child: Text(Strings.logIn),
            ),
            const Spacer(flex: 16),
          ],
        ),
      ),
    );
  }
}
