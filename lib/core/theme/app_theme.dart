import 'package:flutter/material.dart';
import 'package:shecantask/core/theme/dark_theme_data.dart';
import 'package:shecantask/core/theme/light_theme_data.dart';

class AppTheme {
  //light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Color(0xFF20C997),
    scaffoldBackgroundColor: Color(0xFFF0F2F5),
    cardColor: Colors.white,

    appBarTheme: LightThemeData.appBarTheme,
    textTheme: LightThemeData.textTheme,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF20C997),
    ),
    colorScheme: LightThemeData.colorScheme,
  );


  //dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color(0xFF20C997),
    scaffoldBackgroundColor: Color(0xFF121212),
    cardColor: Color(0xFF1E1E1E),
    appBarTheme: DarkThemeData.appBarTheme,
    textTheme: DarkThemeData.textTheme,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF20C997),
    ),
    colorScheme:DarkThemeData.colorScheme,
  );


}

