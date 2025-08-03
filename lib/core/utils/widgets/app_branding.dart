import 'package:flutter/material.dart';

class AppBranding extends StatelessWidget {
  const AppBranding({super.key, required this.mainAxisAlignment});

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'app', style: Theme.of(context).textTheme.bodyMedium),
          TextSpan(
            text: 'Name',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
