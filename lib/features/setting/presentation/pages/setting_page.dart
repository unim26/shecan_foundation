import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:shecantask/features/setting/presentation/controller/theme_controller.dart';
import 'package:shecantask/features/setting/presentation/widgets/options_cards.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key});

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Setting')),
        body: Column(
          children: [
            //theme mode car
            Obx(() {
              return OptionsCards(
                icon: Icons.light_mode,
                title: 'Theme Mode',
                value: themeController.currentTheme.value,
                onTap: () {
                  print(themeController.currentTheme);
                  showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(100, 100, 20, 100),
                    items: [
                      PopupMenuItem(value: 'System', child: Text('System')),
                      PopupMenuItem(value: 'Dark', child: Text('Dark')),
                      PopupMenuItem(value: 'Light', child: Text('Light')),
                    ],
                  ).then((value) {
                    if (value != null) {
                      themeController.toggleTheme(value);
                    }
                  });
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
