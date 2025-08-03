import 'package:flutter/material.dart';
import 'package:shecantask/features/dashboard/presentation/widgets/reward_card.dart';

class RewardPath extends StatelessWidget {
  const RewardPath({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: 100, height: 130, child: RewardCard()),
          SizedBox(width: 100, height: 130, child: RewardCard()),
          SizedBox(width: 100, height: 130, child: RewardCard()),
          SizedBox(width: 100, height: 130, child: RewardCard()),
          SizedBox(width: 100, height: 130, child: RewardCard()),
        ],
      ),
    );
  }
}
