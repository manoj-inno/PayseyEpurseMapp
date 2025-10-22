import 'package:flutter/material.dart';

class RequiredLabelText extends StatelessWidget {
  final String text;
  final bool isRequired;
  const RequiredLabelText(
      {super.key, required this.text, required this.isRequired});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(" $text", style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(width: 2),
        if (isRequired) const Text('*', style: TextStyle(color: Colors.red)),
      ],
    );
  }
}
