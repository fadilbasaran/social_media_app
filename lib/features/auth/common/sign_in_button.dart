import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_media_app/core/constants/constants.dart';
import 'package:social_media_app/features/auth/controller/auth_controller.dart';
import 'package:social_media_app/theme/custom_color.dart';

class SingInButton extends ConsumerWidget {
  const SingInButton({super.key});
  void signInWithGoogle(BuildContext context, WidgetRef ref) {
    ref.read(authControllerProvider).signWithGoogle(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton.icon(
        onPressed: () => signInWithGoogle(context,ref),
        icon: Image.asset(
          AppConstants.instance.googlePath,
          height: 35,
        ),
        label: const Text(
          'Continue with Google',
          style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: CustomAppColors.instance.greyColor,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
