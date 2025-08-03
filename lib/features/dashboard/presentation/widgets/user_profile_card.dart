import 'package:flutter/material.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Size sSize = MediaQuery.of(context).size;
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: Row(
          children: [
            //user profile image
            CircleAvatar(
              radius: sSize.width * .12,
              child: Icon(size: sSize.width * .2, Icons.person),
            ),
            const SizedBox(width: 20),
            //user detail
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //user name
                Text(
                  'Abhishek kumar',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                //user email
                Text(
                  'aniketsagar4323@gmail.com',
                  style: Theme.of(context).textTheme.titleSmall,
                ),

                //phone
                Text(
                  '9341307595',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
