import 'package:flutter/material.dart';
import 'package:habit_note/core/l10n/strings.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});
  static Route route() => MaterialPageRoute(
        builder: (context) => const ForgotPasswordPage(),
      );
  @override
  State<ForgotPasswordPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<ForgotPasswordPage> {
  late final TextEditingController _email;
  final _forumKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
  }

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorScheme.of(context).secondary,
      appBar: AppBar(
        title: Text(Strings.forgotPassword),
        backgroundColor: ColorScheme.of(context).secondary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              Strings
                  .pleaseEnterYourAccountsEmailAddressAndWeWillSendYouALinkToResetYourPassword,
            ),
            const Spacer(flex: 3),
            TextFormField(
              key: _forumKey,
              style: TextTheme.of(context).bodyMedium?.copyWith(
                    color: ColorScheme.of(context).outline,
                  ),
              controller: _email,
              validator: _validateEmail,
              decoration: InputDecoration(
                hintText: Strings.emailAddress,
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: ColorScheme.of(context).primary,
                ),
              ),
            ),
            const Spacer(flex: 12),
            ElevatedButton(
              onPressed: () {},
              child: Text(Strings.submit),
            ),
            const Spacer(flex: 4),
          ],
        ),
      ),
    );
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) return Strings.pleaseEnterAnEmail;
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegex.hasMatch(value)) return Strings.pleaseEnterAValidEmail;
    return null; // Valid email
  }
}
