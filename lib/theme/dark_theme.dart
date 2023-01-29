import 'package:flutter/material.dart';
import 'package:social_media_app/theme/custom_color.dart';

class DarkTheme {
  static DarkTheme? _instance;
  static DarkTheme get instance {
    _instance ??= DarkTheme._init(); //eğer null ise bunu kullan
    return _instance!;
  }

  DarkTheme._init() {
    blackColor = const Color.fromRGBO(26, 39, 45, 1); // primary color
    greyColor = const Color.fromRGBO(26, 39, 45, 1); // secondary color
    drawerColor = const Color.fromRGBO(18, 18, 18, 1);
    whiteColor = Colors.white;
    redColor = Colors.red.shade500;
    blueColor = Colors.blue.shade300;
  }
  Color blackColor = const Color.fromRGBO(26, 39, 45, 1);
  Color greyColor = const Color.fromRGBO(26, 39, 45, 1); // secondary color
  Color drawerColor = const Color.fromRGBO(18, 18, 18, 1);
  Color whiteColor = Colors.white;
  Color redColor = Colors.red.shade500;
  Color blueColor = Colors.blue.shade300;

  ThemeData darkModeAppTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor:
        CustomAppColors.instance.black, // bu sekilde devam et
  );
}
