import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

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
      appBar: AppBar(title: const Text('Forgot Password')),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Please enter your account’s email address and we will send you a link to reset your password.',
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
                hintText: 'Email Address',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: ColorScheme.of(context).primary,
                ),
              ),
            ),
            const Spacer(flex: 12),
            ElevatedButton(
              onPressed: () {},
              child: const Text('SUBMIT'),
            ),
            const Spacer(flex: 4),
          ],
        ),
      ),
    );
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Please enter an email';
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegex.hasMatch(value)) return 'Please enter a valid email';
    return null; // Valid email
  }
}
