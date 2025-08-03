import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/instance_manager.dart';
import 'package:shecantask/core/routes/app_routes.dart';
import 'package:shecantask/core/theme/app_theme.dart';
import 'package:shecantask/features/setting/presentation/controller/theme_controller.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  //controller
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx( () {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeController.themeMode.value,
          title: 'App Name',
          initialRoute: '/',
          routes: AppRoutes.routes,
        );
      }
    );
  }
}
