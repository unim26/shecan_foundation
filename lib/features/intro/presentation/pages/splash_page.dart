import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () => Get.offAllNamed('/login-page'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size sSize = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: sSize.width * .2,
          child: Center(
            child: Text(
              'App logo',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
      ),
    );
  }
}
