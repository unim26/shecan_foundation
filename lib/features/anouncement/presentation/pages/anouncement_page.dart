import 'package:flutter/material.dart';

class AnouncementPage extends StatelessWidget {
  const AnouncementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Anouncement')),

        body: Center(
          child: Text(
            'No Anouncements Availble',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
