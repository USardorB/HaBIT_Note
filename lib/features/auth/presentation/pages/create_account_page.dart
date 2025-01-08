import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habit_note/features/auth/presentation/widgets/authentication_forum.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

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
        title: const Text('Create Account'),
        backgroundColor: ColorScheme.of(context).secondary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Let’s get to know you !'),
              subtitle: Text('Enter your details to continue'),
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
            const Text('Already have an account?'),
            Align(
              alignment: const Alignment(-1, 0),
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Login here',
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
            const Text.rich(TextSpan(children: [
              TextSpan(
                text: 'By clicking the “CREATE ACCOUNT” button, you agree to ',
              ),
              TextSpan(
                text: 'Terms of use ',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              TextSpan(
                text: 'and ',
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ])),
            const Spacer(flex: 1),
            ElevatedButton(
              onPressed: () {
                if (_forumKey.currentState?.validate() ?? false) {
                  context.push('/authenticate');
                }
              },
              child: const Text('CREATE ACCOUNT'),
            ),
            const Spacer(flex: 15),
          ],
        ),
      ),
    );
  }
}
