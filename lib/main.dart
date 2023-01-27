import 'package:flutter/material.dart';
import 'package:social_media_app/theme/pallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kavir',
      theme: Pallete.darkModeAppTheme,
      home: const SizedBox(),
    );
  }
}
