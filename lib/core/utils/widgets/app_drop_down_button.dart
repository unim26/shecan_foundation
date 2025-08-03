import 'package:flutter/material.dart';

class AppDropDownButton extends StatelessWidget {
  const AppDropDownButton({
    super.key,
    required this.values,
    required this.hintText,
    this.onChanged,
    required this.title,
  });

  final List<String> values;
  final String hintText;
  final String title;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        SizedBox(height: 10),
        DropdownButtonFormField<String>(
          onChanged: onChanged,
          style: Theme.of(
            context,
          ).textTheme.titleMedium!.copyWith(fontSize: 18),
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            // contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 17),
          ),
          items:
              values.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
        ),
      ],
    );
  }
}
