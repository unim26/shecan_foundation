
import 'package:flutter/material.dart';
import 'package:shecantask/features/auth/presentation/widgets/build_login_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //controller
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //body
        body: BuildLoginPage(phoneController: phoneController) ,
      ),
    );
  }
}
