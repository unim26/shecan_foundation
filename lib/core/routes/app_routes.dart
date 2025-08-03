import 'package:flutter/widgets.dart';
import 'package:shecantask/features/anouncement/presentation/pages/anouncement_page.dart';
import 'package:shecantask/features/app_layout/presentation/pages/app_layout.dart';
import 'package:shecantask/features/auth/presentation/pages/login_page.dart';
import 'package:shecantask/features/intro/presentation/pages/splash_page.dart';

class AppRoutes {
  //routes
  static Map<String,Widget Function(BuildContext)> routes = {

    //default route
    '/': (_) => SplashPage (),
    //login page
    '/login-page': (_)=>LoginPage(),
    //app layout page
    '/app-layout-page':(_)=>AppLayout(),
    //anouncement page
    '/anouncement-page':(_)=> AnouncementPage(),
  };
}
