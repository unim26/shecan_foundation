import 'package:flutter/material.dart';
import 'package:shecantask/core/utils/widgets/app_custom_card.dart';
import 'package:shecantask/features/dashboard/presentation/widgets/reward_card.dart';
import 'package:shecantask/features/dashboard/presentation/widgets/reward_path.dart';
import 'package:shecantask/features/dashboard/presentation/widgets/user_profile_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Dashboard')),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              //space
              SizedBox(height: 10),

              //user profile
              UserProfileCard(),

              //space
              SizedBox(height: 10),

              // //total donation raised card
              AppCustomCard(title: 'Total donation raised', amount: 5000),

              //space
              SizedBox(height: 10),

              //text
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Rewardes',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),

              //space
              SizedBox(height: 10),

              //reward path
              RewardPath(),
            ],
          ),
        ),
      ),
    );
  }
}
