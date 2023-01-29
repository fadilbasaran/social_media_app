import 'package:flutter/material.dart';
import 'package:social_media_app/core/constants/constants.dart';
import 'package:social_media_app/features/auth/common/sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          AppConstants.instance.logoPath,
          height: 40,
        ),
        actions: [
          TextButton(onPressed: () {}, child: const Text('Skip')),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),
          const Text(
            'Dive into anything',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, letterSpacing: 0.5),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              AppConstants.instance.loginEmotePath,
              height: 400,
            ),
          ),
          const SingInButton(),
        ],
      ),
    );
  }
}
