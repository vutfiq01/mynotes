import 'package:flutter/material.dart';
import 'package:mynotes/constants/routes.dart';
import 'package:mynotes/services/auth/auth_service.dart';

class EmailVerificationView extends StatefulWidget {
  const EmailVerificationView({super.key});

  @override
  State<EmailVerificationView> createState() => _EmailVerificationViewState();
}

class _EmailVerificationViewState extends State<EmailVerificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email Verification'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Text(
            "We've already sent an email verification, please verify your account.",
          ),
          TextButton(
            onPressed: () async {
              await AuthService.firebase().sendEmailVerification();
            },
            child: const Text(
              'Send email verification again',
            ),
          ),
          TextButton(
            onPressed: () async {
              await AuthService.firebase().logOut();
              if (mounted) {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(registerRoute, (route) => false);
              }
            },
            child: const Text(
              'Restart',
            ),
          ),
        ],
      ),
    );
  }
}
