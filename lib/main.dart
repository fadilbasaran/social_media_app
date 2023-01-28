import 'package:flutter/material.dart';
import 'package:social_media_app/theme/dark_theme.dart';

import 'features/auth/screens/login_screen.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kavir',
     theme: DarkTheme.instance.darkModeAppTheme,
      home: const LoginScreen(),
    );
  }
}
