import 'package:flutter/material.dart';

class AuthForum extends StatefulWidget {
  final TextEditingController? name;
  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController? rePassword;
  final GlobalKey forumKey;
  const AuthForum(
    this.forumKey, {
    super.key,
    this.name,
    required this.email,
    required this.password,
    this.rePassword,
  });

  @override
  State<AuthForum> createState() => _AuthForumState();
}

class _AuthForumState extends State<AuthForum> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.forumKey,
      child: Column(children: [
        if (widget.name != null)
          TextFormField(
            style: _style(context),
            controller: widget.name,
            validator: _validateName,
            decoration: InputDecoration(
              hintText: 'Display Name',
              prefixIcon: Icon(
                Icons.person_outline,
                color: ColorScheme.of(context).primary,
              ),
            ),
          ),
        if (widget.name != null) const SizedBox(height: 27),
        TextFormField(
          style: _style(context),
          controller: widget.email,
          validator: _validateEmail,
          decoration: InputDecoration(
            hintText: 'Email Address',
            prefixIcon: Icon(
              Icons.email_outlined,
              color: ColorScheme.of(context).primary,
            ),
          ),
        ),
        const SizedBox(height: 27),
        TextFormField(
          style: _style(context),
          controller: widget.password,
          validator: _validatePassword,
          obscureText: isVisible,
          decoration: InputDecoration(
            hintText: 'Password',
            suffixIcon: IconButton(
              icon: const Icon(Icons.visibility_off_outlined),
              selectedIcon: const Icon(Icons.visibility_outlined),
              isSelected: isVisible,
              onPressed: () => setState(() => isVisible = !isVisible),
            ),
            prefixIcon: Icon(
              Icons.lock_outline,
              color: ColorScheme.of(context).primary,
            ),
          ),
        ),
        if (widget.rePassword != null) const SizedBox(height: 27),
        if (widget.rePassword != null)
          TextFormField(
            style: _style(context),
            controller: widget.rePassword,
            obscureText: isVisible,
            validator: _validatePassword,
            decoration: InputDecoration(
              hintText: 'Confirm Password',
              prefixIcon: Icon(
                Icons.lock_outline,
                color: ColorScheme.of(context).primary,
              ),
            ),
          ),
      ]),
    );
  }

  TextStyle? _style(BuildContext context) =>
      TextTheme.of(context).bodyMedium?.copyWith(
            color: ColorScheme.of(context).outline,
          );

  String? _validateName(value) {
    if (value?.trim().isEmpty ?? true) return "Name cannot be empty";
    if ((value?.length ?? 0) < 3 || (value?.length ?? 0) > 20) {
      return 'Enter a real name';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Please enter an email';
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegex.hasMatch(value)) return 'Please enter a valid email';
    return null; // Valid email
  }

  String? _validatePassword(value) {
    final password = widget.password.text;
    final confirmation = widget.rePassword?.text;
    if (password.length < 6) return 'Weak password';
    if (confirmation == null) return null;
    if (password != confirmation) return 'The passwords do not match';
    return null;
  }
}
