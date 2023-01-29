import 'package:flutter/material.dart';
import 'package:social_media_app/core/constants/constants.dart';
import 'package:social_media_app/theme/custom_color.dart';

class SingInButton extends StatelessWidget {
  const SingInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton.icon(
        onPressed: () {},
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
