import 'package:flutter/material.dart';

class Palette {
  static Palette? _instance;
  static Palette get instance {
    _instance ??= Palette._init(); //eğer null ise bunu kullan
    return _instance!;
  }

  Palette._init();
 Color get blackColor => Colors.black; // primary color
  Color greyColor = const Color.fromRGBO(26, 39, 45, 1); // secondary color
  Color drawerColor = const Color.fromRGBO(18, 18, 18, 1);
  Color whiteColor = Colors.white;
  Color redColor = Colors.red.shade500;
  Color blueColor = Colors.blue.shade300;

  // Themes

  ThemeData lightModeAppTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Palette.instance.whiteColor,
      cardColor: Palette.instance.greyColor,
      appBarTheme: AppBarTheme(
        backgroundColor: Palette.instance.whiteColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Palette.instance.blackColor,
        ),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: Palette.instance.whiteColor,
      ),
      primaryColor: Palette.instance.redColor,
      colorScheme: ColorScheme.light(background: Palette.instance.whiteColor));
}
class CustomAppColors {
  static CustomAppColors? _instance;
  static CustomAppColors get instance {
    _instance ??= _instance = CustomAppColors._init();
    return _instance!;
  }

  CustomAppColors._init();
  final Color primaryColor = const Color(0xFFEE3025);
  final Color textFieldShadowColor = const Color(0xFFF0F0F0);
  final Color textFieldHintColor = const Color(0xFFCACBCD);
  final Color textBlackColor = const Color(0xFF252525);
  final Color failedSnackbarBackgroundColor = const Color(0xFFFFF2F2);
  final Color failedSnackbarBorderColor = const Color(0xFFEE3025);
  final Color successSnackbarBackgroundColor = const Color(0xFFF2FEFF);
  final Color successSnackbarBorderColor = const Color(0xFF2569EE);
  final Color greyTextColor = const Color(0xFF757575);
  final MaterialColor grey = Colors.grey;
  final Color black = Colors.black;
  final Color white = Colors.white;
}
