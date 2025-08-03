import 'package:flutter/material.dart';

class LightThemeData {
  //dark theme app bar theme
  static AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    elevation: 1,
  );

  //dark theme text theme
  static TextTheme textTheme = TextTheme(
    bodyLarge: TextStyle(color: Color(0xFF212121), fontSize: 25),
    bodyMedium: TextStyle(color: Color(0xFF212121), fontSize: 22),
    titleMedium: TextStyle(color: Colors.black38),
    titleSmall: TextStyle(color: Colors.grey.shade600),
  );

  //dark the color schema
  static ColorScheme colorScheme = ColorScheme.light(
    primary: Color(0xFF20C997),
    secondary: Color(0xFF6C757D),
    tertiaryFixed: Colors.black,
    tertiary: Colors.grey.shade300,
    surface: Colors.white,
  );
}
