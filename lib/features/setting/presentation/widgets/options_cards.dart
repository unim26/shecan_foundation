import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OptionsCards extends StatelessWidget {
  const OptionsCards({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
    required this.value,
  });
  final IconData icon;
  final String title;
  final String value;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: ListTile(
          trailing: Text(value, style: Theme.of(context).textTheme.titleMedium),
          leading: Icon(icon),

          title: Text(title, style: Theme.of(context).textTheme.bodyMedium),
          onTap: onTap,
        ),
      ),
    );
  }
}
