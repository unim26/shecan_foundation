import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ThemeController extends GetxController {
  Rx<ThemeMode> themeMode = Rx<ThemeMode>(ThemeMode.system);
  RxString currentTheme = RxString('system');

  //toggel
  void toggleTheme(String value) {
    print('changing theme');
    print(value);

    switch (value.toLowerCase()) {
      case 'system':
        currentTheme.value = value;
        themeMode.value = ThemeMode.system;

        break;
      case 'dark':
        currentTheme.value = value;
        themeMode.value = ThemeMode.dark;

        break;
      case 'light':
        currentTheme.value = value;
        themeMode.value = ThemeMode.light;

        break;
    }
  }
}
