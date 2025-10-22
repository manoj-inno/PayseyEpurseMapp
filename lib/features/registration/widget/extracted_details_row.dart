import 'package:flutter/material.dart';

class ExtractedDetailsRow extends StatelessWidget {
  const ExtractedDetailsRow({
    super.key,
    required this.title,
    required this.value,
    required this.theme,
  });

  final String title;
  final String value;
  final ThemeData theme;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$title: ",
          style: theme.textTheme.labelLarge,
        ),
        Text(
          value,
          style: theme.textTheme.labelLarge,
        ),
      ],
    );
  }
}
