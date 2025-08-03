import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shecantask/features/anouncement/presentation/pages/anouncement_page.dart';
import 'package:shecantask/features/app_layout/presentation/controller/layout_index_controller.dart';
import 'package:shecantask/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:shecantask/features/leaderboard/presentation/pages/leader_board_page.dart';
import 'package:shecantask/features/setting/presentation/pages/setting_page.dart';

class AppLayout extends StatelessWidget {
  AppLayout({super.key});

  //controllers
  final LayoutIndexController _layoutIndexController =
      Get.put<LayoutIndexController>(LayoutIndexController());

  //pages
  final List<Widget> _pages = [
    //dash page
    DashboardPage(),
    //anouncement page
    AnouncementPage(),

    //leatherboard page
    LeaderBoardPage(),

    //setting page
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() {
        return Scaffold(
          body: _pages[_layoutIndexController.selectedIndex.value],

          bottomNavigationBar: BottomNavigationBar(
            enableFeedback: true,
            showUnselectedLabels: false,

            currentIndex: _layoutIndexController.selectedIndex.value,
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Theme.of(context).colorScheme.secondary,
            onTap: (value) => _layoutIndexController.updateIndex(value),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                tooltip: 'Dashboard',

                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.announcement),
                tooltip: 'Anouncements',

                label: 'Anouncements',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.leaderboard),
                tooltip: 'Leaderboard',

                label: 'Leaderboard',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                tooltip: 'Setting',
                label: 'Setting',
              ),
            ],
          ),
        );
      }),
    );
  }
}
