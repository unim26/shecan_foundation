import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shecantask/core/utils/widgets/app_button.dart';

class RewardCard extends StatelessWidget {
  const RewardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //icon
          Icon(FontAwesomeIcons.medal, size: 40),

          //title
          Text('Badge 1', style: Theme.of(context).textTheme.titleMedium),

          //button
          TextButton(child: Text('claim now'), onPressed: () {}),
        ],
      ),
    );
  }
}
