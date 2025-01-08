import 'package:flutter/material.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({super.key});

  @override
  State<VerifyEmailPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<VerifyEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorScheme.of(context).secondary,
      appBar: AppBar(
        title: const Text('Email Verification'),
        backgroundColor: ColorScheme.of(context).secondary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'We have sent you a verification email, please check your mail box. If you have not recieved it yet, you can request it in [seconds]',
            ),
            const Spacer(flex: 1),
            Align(
              alignment: const Alignment(1, 0),
              child: TextButton(
                onPressed: () {},
                child: const Text('Resend'),
              ),
            ),
            const Spacer(flex: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Confirm Verification'),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
