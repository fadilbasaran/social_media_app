import 'package:flutter/material.dart';
import 'package:social_media_app/core/constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          AppConstants.instance!.logoPath,
          height: 40,
        ),
      ),
    );
  }
}
