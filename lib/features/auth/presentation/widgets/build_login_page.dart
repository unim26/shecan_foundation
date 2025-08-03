import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shecantask/core/utils/widgets/app_branding.dart';
import 'package:shecantask/core/utils/widgets/app_button.dart';
import 'package:shecantask/core/utils/widgets/app_snac_bar.dart';
import 'package:shecantask/core/utils/widgets/app_text_field.dart';

class BuildLoginPage extends StatelessWidget {
  const BuildLoginPage({super.key, required this.phoneController});

  //controller
  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    //size
    final Size sSize = MediaQuery.sizeOf(context);

    //
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //space
              SizedBox(height: sSize.height * .1),
              //logo
              AppBranding(mainAxisAlignment: MainAxisAlignment.center),

              //space
              SizedBox(height: sSize.height * .05),

              //login text
              Text(
                "Log In",
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge!.copyWith(fontSize: 30),
              ),

              //space
              SizedBox(height: sSize.height * .005),

              //subtitle text
              Text(
                "Please login to continue",
                style: Theme.of(context).textTheme.titleMedium,
              ),

              //space
              SizedBox(height: sSize.height * .03),

              //text field
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //country code
                  DropdownButton(
                    borderRadius: BorderRadius.circular(15),
                    padding: EdgeInsets.all(7),

                    value: "+91",
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    onChanged: (value) {},
                    items: [
                      DropdownMenuItem(
                        value: "+91",
                        child: Text(
                          "+91",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),

                  //space
                  SizedBox(width: sSize.width * .02),

                  //text field
                  Expanded(
                    child: AppTextField(
                      controller: phoneController,
                      keyboardType: TextInputType.number,
                      hintText: 'Enter your phone number',
                    ),
                  ),
                ],
              ),

              //space
              SizedBox(height: sSize.height * .03),

              //send otp button
              AppButton(
                title: "Send OTP",
                onPressed: () async {
                  if (phoneController.text.isEmpty) {
                    appSnacBar(
                      context,
                      message: "Please enter your phone number",
                      type: "error",
                    );
                  } else if (phoneController.text.length < 10 ||
                      phoneController.text.length > 10) {
                    //show error  {
                    appSnacBar(
                      context,
                      message: "Please enter a valid phone number",
                      type: "error",
                    );
                  } else {
                    //handel phone auth

                    //navigate to next page
                    Get.offAllNamed('/app-layout-page');
                  }
                },
              ),

              //space
              SizedBox(height: sSize.height * .05),

              SizedBox(height: sSize.height * .05),

              //divider
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //divider
                  Expanded(child: Divider(color: Colors.black38, thickness: 2)),

                  //text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "OR",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),

                  //divider
                  Expanded(child: Divider(color: Colors.black38, thickness: 2)),
                ],
              ),

              //space
              SizedBox(height: sSize.height * .05),

              //google signin button
              AppButton(
                title: "Continue with Google",
                onPressed: () async {
                  //handle signin with google

                  //navigate to next page
                  Get.offAllNamed('/app-layout-page');
                },
                icon: FontAwesomeIcons.google,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
