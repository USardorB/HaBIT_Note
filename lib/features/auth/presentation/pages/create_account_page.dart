import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_note/core/extensions/build_context.dart';
import 'package:habit_note/core/l10n/strings.dart';
import 'package:habit_note/features/auth/presentation/controllers/auth_bloc.dart';
import 'package:habit_note/features/auth/presentation/pages/log_in_page.dart';
import 'package:habit_note/features/auth/presentation/widgets/authentication_forum.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});
  static Route route() => MaterialPageRoute(
        builder: (context) => const CreateAccountPage(),
      );
  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  late final TextEditingController _name;
  late final TextEditingController _email;
  late final TextEditingController _password;
  late final TextEditingController _rePassword;
  final _forumKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _name = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    _rePassword = TextEditingController();
  }

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _password.dispose();
    _rePassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorScheme.of(context).secondary,
      appBar: AppBar(
        title: Text(Strings.createAccount),
        backgroundColor: ColorScheme.of(context).secondary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(Strings.letsGetToKnowYou),
              subtitle: Text(Strings.enterYourDetailsToContinue),
            ),
            const Spacer(flex: 1),
            AuthForum(
              _forumKey,
              name: _name,
              email: _email,
              password: _password,
              rePassword: _rePassword,
            ),
            const Spacer(flex: 1),
            Text(Strings.alreadyHaveAnAccount),
            Align(
              alignment: const Alignment(-1, 0),
              child: InkWell(
                onTap: () => context.push(LogInPage.route()),
                child: Text(
                  Strings.loginHere,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    decorationColor: ColorScheme.of(context).primary,
                    color: ColorScheme.of(context).primary,
                  ),
                ),
              ),
            ),
            const Spacer(flex: 3),
            Text.rich(TextSpan(children: [
              TextSpan(
                text: Strings.byClickingTheCreateAccountButtonYouAgreeTo,
              ),
              TextSpan(
                text: Strings.termsOfUse,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              TextSpan(
                text: Strings.and,
              ),
              TextSpan(
                text: Strings.privacyPolicy,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
            ])),
            const Spacer(flex: 1),
            ElevatedButton(
              onPressed: () {
                if (!(_forumKey.currentState?.validate() ?? false)) return;
                context.read<AuthBloc>().add(AuthSignUp(
                      email: _email.text,
                      password: _password.text,
                      name: _name.text,
                    ));
              },
              child: Text(Strings.createAccount.toUpperCase()),
            ),
            const Spacer(flex: 15),
          ],
        ),
      ),
    );
  }
}
