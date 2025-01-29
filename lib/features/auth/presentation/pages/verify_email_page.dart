import 'package:flutter/material.dart';
import 'package:habit_note/core/l10n/strings.dart';

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
        title: Text(Strings.emailVerification),
        backgroundColor: ColorScheme.of(context).secondary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              Strings
                  .weHaveSentYouAVerificationEmailPleaseCheckYourMailBoxIfYouHaveNotRecievedItYetYouCanRequestItInSeconds(
                sekund: 0,
              ),
            ),
            const Spacer(flex: 1),
            Align(
              alignment: const Alignment(1, 0),
              child: TextButton(
                onPressed: () {},
                child: Text(Strings.resend),
              ),
            ),
            const Spacer(flex: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text(Strings.confirmVerification),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
