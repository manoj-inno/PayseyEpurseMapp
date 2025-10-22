import 'package:flutter/material.dart';

import '../theme/app_themes.dart';

class GradientButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final bool isDarkMode;

  const GradientButton({
    super.key,
    this.onPressed,
    required this.child,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: onPressed == null
            ? LinearGradient(
                colors: [Colors.grey[350]!, Colors.grey[350]!],
              )
            : isDarkMode
                ? AppThemes.darkButtonGradient
                : AppThemes.lightButtonGradient,
        borderRadius: BorderRadius.circular(30),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: onPressed == null ? 0 : 10,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: child,
      ),
    );
  }
}
