import 'package:flutter/material.dart';

class DarkThemeData {
  //dark theme app bar theme
static AppBarTheme appBarTheme = AppBarTheme(
      backgroundColor: Color(0xFF1E1E1E),
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      elevation: 1,
    );

//dark theme text theme
static TextTheme textTheme =  TextTheme(
      bodyLarge: TextStyle(fontSize: 25, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 22, color: Colors.white),
      titleMedium: TextStyle(color: Colors.white70),
      titleSmall: TextStyle(color: Colors.grey.shade300),
    );

//dark the color schema
static ColorScheme colorScheme = ColorScheme.dark(
      primary: Color(0xFF20C997),
      tertiary: Colors.grey.shade900,
      tertiaryFixed: Colors.white,

      secondary: Color(0xFF6C757D),
      surface: Color(0xFF1E1E1E),
    );

}
