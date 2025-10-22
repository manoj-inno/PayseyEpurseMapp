import 'package:flutter/material.dart';

void showErrorSnackBar(BuildContext context, String message) {
  debugPrint("______________ERROR SNACKBAR____________");
  debugPrint("Error Message: $message");
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      hitTestBehavior: HitTestBehavior.opaque,
      content: Row(
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.white,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              message,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.red.shade800,
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      margin: const EdgeInsets.all(30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      duration: const Duration(seconds: 2),
    ),
  );
}
