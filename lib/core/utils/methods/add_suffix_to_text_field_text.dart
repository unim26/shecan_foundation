import 'package:flutter/material.dart';

void addSuffixToTextFieldText({
  required TextEditingController controller,
  required String suffix,
}) {
  if (controller.text.endsWith(' $suffix')) return;
  if (controller.text.isNotEmpty) {
    final cleanText = controller.text.replaceAll(' $suffix', '');

    if (cleanText.isNotEmpty && int.tryParse(cleanText) != null) {
      controller.text = "$cleanText$suffix";
      controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length - suffix.length),
      );
    }
  }
}
