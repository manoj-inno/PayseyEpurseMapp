import 'package:flutter/material.dart';

class AppColors {
  // Light Theme Colors
  static const lightPrimary = Color(0xFFD0EADC);
  static const lightSecondary = Color(0xFFFFFFFF);
  static const lightBackground1 = Color(0xFFFFFFFF);
  static const lightBackground2 = Color(0xFFFFFFFF);
  static const lightButtonStart = Color(0xFF2AB461);
  static const lightButtonEnd = Color(0xFF3CB774);

  // Dark Theme Colors - Complementary to light theme
  static const darkPrimary = Color(0xFF029C58);
  static const darkSecondary = Color(0xFF2AB461);
  static const darkBackground1 = Color(0xFFECF6FF);
  static const darkBackground2 = Color(0xFFFFFFF2);
  static const darkButtonStart = Color(0xFF053767);
  static const darkButtonEnd = Color(0xFF029C58);

  // Text Colors
  static const lightTextPrimary = Color(0xFF000000);
  static const lightTextSecondary = Color(0xFFFFFFFF);

  static const darkTextPrimary = Color(0xFFFFFFFF);
  static const darkTextSecondary = Color(0xFF000000);

  // Loader Colors
  static const loaderPrimaryLight = Color(0xFF2AB461);
  static const loaderPrimaryDark = Color(0xFFFFFFFF);

  // OTP Colors
  static const otpLightBackground1 = Color(0xFFFFFFFF);
  static const otpLightBackground2 = Color(0xFFF5F5F5);
  static const otpLightBorder = Color(0xFF2AB461);

  static const otpDarkBackground1 = Color(0xFF029C58);
  static const otpDarkBackground2 = Color(0xFF2AB461);
  static const otpDarkBorder = Color(0xFFFFFFFF);

  static const shimmerBaseLight = Color.fromARGB(255, 114, 196, 255);
  static const shimmerBaseLight2 = Color.fromARGB(255, 223, 242, 255);
  static const shimmerHighlightLight = Color(0xFFFFFFFF);
  static const shimmerBaseDark = Color(0xFF0A3B6A);
  static const shimmerHighlightDark = Color(0xFF2AB461);

  static const iconLightColor = Color(0xFF2AB461);
  static const iconDarkColor = Color(0xFFFFFFFF);

  // Progress Indicator Colors
  static const progressIndicatorLightColor = Color(0xFFFFFFFF);
  static const progressIndicatorDarkColor = Color(0xFFFFFFFF);
}

class AppThemes {
  static const lightScaffoldGradientPrimary = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.lightPrimary, AppColors.lightSecondary],
  );

  static const lightScaffoldGradientSecondary = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.lightBackground1, AppColors.lightBackground2],
  );

  static const darkScaffoldGradientPrimary = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.darkPrimary, AppColors.darkSecondary],
  );

  static const darkScaffoldGradientSecondary = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.darkBackground1, AppColors.darkBackground2],
  );

  static const lightButtonGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.lightButtonStart, AppColors.lightButtonEnd],
  );

  static const lightButtonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );

  // Add new outlined button styles
  static const lightOutlinedButtonStyle = TextStyle(
    color: Color(0xFF2AB461),
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.5,
  );

  static const darkButtonGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColors.darkButtonStart, AppColors.darkButtonEnd],
  );

  static const darkButtonTextStyle = TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
  );

  // Add new outlined button styles for dark theme
  static const darkOutlinedButtonStyle = TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
  );

  static BoxDecoration scaffoldBackgroundDecoration({
    required bool isDark,
    bool isPrimary = true,
  }) {
    return BoxDecoration(
      gradient: isDark
          ? (isPrimary
              ? darkScaffoldGradientPrimary
              : darkScaffoldGradientSecondary)
          : (isPrimary
              ? lightScaffoldGradientPrimary
              : lightScaffoldGradientSecondary),
    );
  }

  // Helper method to get text style with color based on theme and importance
  static TextStyle _getThemedTextStyle({
    required bool isDark,
    required TextStyle baseStyle,
    bool isSecondary = false,
  }) {
    final color = isDark
        ? (isSecondary
            ? AppColors.darkTextSecondary
            : AppColors.darkTextPrimary)
        : (isSecondary
            ? AppColors.lightTextSecondary
            : AppColors.lightTextPrimary);
    return baseStyle.copyWith(color: color);
  }

  // Add these new gradient definitions
  static const lightInputGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFFFFFFF),
      Color(0xFFECF6FF),
    ],
  );

  static const darkInputGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF389DFF),
      Color.fromARGB(255, 118, 186, 255),
    ],
  );

  static const otpLightGradient1 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.otpLightBackground1,
      AppColors.otpLightBackground2,
    ],
  );

  static const otpLightGradient2 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.lightBackground1,
      AppColors.lightBackground2,
    ],
  );

  static const otpDarkGradient1 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.otpDarkBackground1,
      AppColors.otpDarkBackground2,
    ],
  );

  static const otpDarkGradient2 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.darkBackground1,
      AppColors.darkBackground2,
    ],
  );

  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xFF2AB461),
      brightness: Brightness.light,
    ),
    textTheme: TextTheme(
      // Display styles
      displayLarge: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.normal,
            fontFamily: "RozhaOne"),
      ),
      displayMedium: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.normal,
            fontFamily: "RozhaOne"),
      ),
      displaySmall: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.normal,
            fontFamily: "RozhaOne"),
      ),

      // Headline styles
      headlineLarge: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
            fontSize: 24, fontWeight: FontWeight.normal, fontFamily: "Roboto"),
      ),
      headlineMedium: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.normal, fontFamily: "Roboto"),
      ),
      headlineSmall: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.normal, fontFamily: "Roboto"),
      ),

      // Title styles
      titleLarge: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
            fontSize: 26, fontWeight: FontWeight.w700, fontFamily: "Roboto"),
      ),
      titleMedium: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.w700, fontFamily: "Roboto"),
      ),
      titleSmall: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w700, fontFamily: "Roboto"),
      ),

      // Body styles
      bodyLarge: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.normal, fontFamily: "Roboto"),
      ),
      bodyMedium: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
            fontSize: 13, fontWeight: FontWeight.normal, fontFamily: "Roboto"),
      ),
      bodySmall: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.normal, fontFamily: "Roboto"),
      ),

      // Label styles
      labelLarge: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w700, fontFamily: "Roboto"),
      ),
      labelMedium: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
            fontSize: 13, fontWeight: FontWeight.w700, fontFamily: "Roboto"),
      ),
      labelSmall: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.w700, fontFamily: "Roboto"),
      ),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Colors.transparent,
        elevation: 1,
        shadowColor: Colors.transparent,
        textStyle: lightButtonTextStyle,
      ).copyWith(
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        foregroundColor: WidgetStateProperty.all(lightButtonTextStyle.color),
      ),
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.lightSecondary),
        elevation: WidgetStateProperty.all(2),
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: AppColors.lightSecondary,
      iconColor: AppColors.lightButtonEnd,
      elevation: 2,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        side: const BorderSide(color: Color(0xFF2AB461), width: 2),
        textStyle: lightOutlinedButtonStyle,
      ).copyWith(
        foregroundColor:
            WidgetStateProperty.all(lightOutlinedButtonStyle.color),
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppColors.iconLightColor,
      size: 24.0,
    ),
    primaryIconTheme: const IconThemeData(
      color: AppColors.iconLightColor,
      size: 24.0,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: AppColors.iconLightColor,
        minimumSize: const Size(48, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      // border: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(12),
      //   borderSide: BorderSide.none,
      // ),
      // enabledBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(12),
      //   borderSide:
      //       const BorderSide(color: AppColors.lightButtonStart, width: 1),
      // ),
      // focusedBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(12),
      //   borderSide:
      //       const BorderSide(color: AppColors.lightButtonStart, width: 2),
      // ),
      // errorBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(12),
      //   borderSide: const BorderSide(color: Colors.red, width: 2),
      // ),
      // focusedErrorBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(12),
      //   borderSide: const BorderSide(color: Colors.red, width: 2),
      // ),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.lightSecondary,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      titleTextStyle: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: "RozhaOne",
        ),
      ),
      contentTextStyle: _getThemedTextStyle(
        isDark: false,
        baseStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          fontFamily: "Roboto",
        ),
      ),
    ),
    cardTheme: CardThemeData(
      color: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: AppColors.lightButtonStart,
          width: 2,
        ),
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.progressIndicatorLightColor,
      circularTrackColor: Color(0xFFD1F1FF),
      linearTrackColor: Color(0xFFD1F1FF),
      refreshBackgroundColor: Color(0xFFECF6FF),
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color(0xFF2AB461),
      brightness: Brightness.dark,
    ),
    textTheme: TextTheme(
      // Display styles
      displayLarge: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.normal,
            fontFamily: "RozhaOne"),
      ),
      displayMedium: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.normal,
            fontFamily: "RozhaOne"),
      ),
      displaySmall: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.normal,
            fontFamily: "RozhaOne"),
      ),

      // Headline styles
      headlineLarge: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
            fontSize: 24, fontWeight: FontWeight.normal, fontFamily: "Roboto"),
      ),
      headlineMedium: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.normal, fontFamily: "Roboto"),
      ),
      headlineSmall: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.normal, fontFamily: "Roboto"),
      ),

      // Title styles
      titleLarge: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
            fontSize: 26, fontWeight: FontWeight.w700, fontFamily: "Roboto"),
      ),
      titleMedium: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.w700, fontFamily: "Roboto"),
      ),
      titleSmall: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w700, fontFamily: "Roboto"),
      ),

      // Body styles
      bodyLarge: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.normal, fontFamily: "Roboto"),
      ),
      bodyMedium: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
            fontSize: 13, fontWeight: FontWeight.normal, fontFamily: "Roboto"),
      ),
      bodySmall: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.normal, fontFamily: "Roboto"),
      ),

      // Label styles
      labelLarge: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w700, fontFamily: "Roboto"),
      ),
      labelMedium: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
            fontSize: 13, fontWeight: FontWeight.w700, fontFamily: "Roboto"),
      ),
      labelSmall: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.w700, fontFamily: "Roboto"),
      ),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Colors.transparent,
        elevation: 1,
        shadowColor: Colors.transparent,
        textStyle: darkButtonTextStyle,
      ).copyWith(
        backgroundColor: WidgetStateProperty.all(Colors.transparent),
        foregroundColor: WidgetStateProperty.all(darkButtonTextStyle.color),
      ),
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.darkSecondary),
        elevation: WidgetStateProperty.all(2),
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: AppColors.darkSecondary,
      iconColor: AppColors.darkTextPrimary,
      elevation: 2,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        side: const BorderSide(color: Color(0xFFFFFFFF), width: 2),
        textStyle: darkOutlinedButtonStyle,
      ).copyWith(
        foregroundColor: WidgetStateProperty.all(darkOutlinedButtonStyle.color),
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppColors.iconDarkColor,
      size: 24.0,
    ),
    primaryIconTheme: const IconThemeData(
      color: AppColors.iconDarkColor,
      size: 24.0,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: AppColors.iconDarkColor,
        minimumSize: const Size(48, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      // border: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(12),
      //   borderSide: BorderSide.none,
      // ),
      // enabledBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(12),
      //   borderSide:
      //       const BorderSide(color: AppColors.darkTextPrimary, width: 1),
      // ),
      // focusedBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(12),
      //   borderSide:
      //       const BorderSide(color: AppColors.darkTextPrimary, width: 2),
      // ),
      // errorBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(12),
      //   borderSide: const BorderSide(color: Colors.red, width: 2),
      // ),
      // focusedErrorBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(12),
      //   borderSide: const BorderSide(color: Colors.red, width: 2),
      // ),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.darkSecondary,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      titleTextStyle: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: "RozhaOne",
        ),
      ),
      contentTextStyle: _getThemedTextStyle(
        isDark: true,
        baseStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          fontFamily: "Roboto",
        ),
      ),
    ),
    cardTheme: CardThemeData(
      color: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: AppColors.darkTextPrimary,
          width: 2,
        ),
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.progressIndicatorDarkColor,
      circularTrackColor: Color(0xFF2AB461),
      linearTrackColor: Color(0xFF2AB461),
      refreshBackgroundColor: Color(0xFF029C58),
    ),
  );

  // Extension method to easily get secondary style
  static TextStyle getSecondaryTextStyle(
      BuildContext context, TextStyle style) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return style.copyWith(
      color:
          isDark ? AppColors.darkTextSecondary : AppColors.lightTextSecondary,
    );
  }
}

extension GradientBox on Widget {
  Widget asGradientBox(BuildContext context,
      {EdgeInsets? margin, bool hasError = false}) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: margin,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        gradient:
            isDark ? AppThemes.darkInputGradient : AppThemes.lightInputGradient,
        borderRadius: BorderRadius.circular(12),
        border: hasError
            ? Border.all(color: Colors.red, width: 2)
            : Border.all(
                color: isDark
                    ? AppColors.loaderPrimaryDark
                    : AppColors.loaderPrimaryLight,
                width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        type: MaterialType.transparency,
        child: this,
      ),
    );
  }
}
