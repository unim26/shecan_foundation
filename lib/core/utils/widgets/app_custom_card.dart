import 'package:flutter/material.dart';
import 'package:shecantask/core/utils/widgets/app_button.dart';

class AppCustomCard extends StatelessWidget {
  const AppCustomCard({super.key, required this.title, this.amount});

  final String title;
  final int? amount;

  @override
  Widget build(BuildContext context) {
    final Size sSize = MediaQuery.sizeOf(context);
    return SizedBox(
      width: double.infinity,
      child: Card(
        // margin: EdgeInsets.all(20),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //text
              Text(title, style: Theme.of(context).textTheme.titleMedium),
              //amount
              amount != null
                  ? Text(
                    '$amount Rs.',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  )
                  : Container(),

              //space
              SizedBox(height: 25),

              //hostory button
              OutlinedButton(
                onPressed: () {},
                child: Center(child: Text('History')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
