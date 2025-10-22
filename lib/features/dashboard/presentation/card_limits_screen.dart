import 'package:epurse/core/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/gradient_button.dart';
import '../../../core/widgets/otp_bottom_sheet.dart';

class CardLimitsScreen extends StatelessWidget {
  const CardLimitsScreen({super.key, required this.cardNumber});
  final String cardNumber;

  void _showLimitAdjustmentSheet(
      BuildContext context, String limitType, String currentLimit) {
    final isDarkMode = context.read<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );

    // Parse the current limit to get initial value (removing $ and commas)
    final initialValue = double.parse(
        currentLimit.replaceAll('\$', '').replaceAll(',', '').trim());

    // Define min and max values based on limit type
    double minValue = 0;
    double maxValue = 100000;
    double stepSize = 1000; // Step size for rounding

    // Adjust min/max based on limit type if needed
    if (limitType == "Daily Transaction") {
      maxValue = 50000;
    } else if (limitType == "International Transaction") {
      maxValue = 25000;
    } else if (limitType == "Swipe & Pay") {
      maxValue = 20000;
    } else if (limitType == "Tap & Pay") {
      maxValue = 50000;
    }

    showModalBottomSheet(
      context: context,
      backgroundColor:
          isDarkMode ? AppColors.darkSecondary : AppColors.lightSecondary,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => _LimitAdjustmentSheet(
        limitType: limitType,
        currentLimit: initialValue,
        minValue: minValue,
        maxValue: maxValue,
        stepSize: stepSize,
        isDarkMode: isDarkMode,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    final theme = Theme.of(context);
    return Container(
      decoration: AppThemes.scaffoldBackgroundDecoration(
          isDark: isDarkMode, isPrimary: true),
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Card Limits",
                style: theme.textTheme.displayMedium,
              ),
              Text(
                "Set your card limits to prevent unauthorized transactions.",
                style: theme.textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                onTap: () => _showLimitAdjustmentSheet(
                    context, "Daily Transaction", "\$ 10,000"),
                leading: Icon(
                  Icons.date_range,
                  size: 25,
                  color: isDarkMode
                      ? AppColors.iconDarkColor
                      : AppColors.iconLightColor,
                ),
                horizontalTitleGap: 12,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                tileColor: isDarkMode
                    ? AppColors.darkSecondary
                    : AppColors.lightSecondary,
                title: Text(
                  "Daily Transaction",
                  style: theme.textTheme.labelLarge,
                ),
                subtitle: Text(
                  "Set your daily limit to prevent unauthorized transactions.",
                  style: theme.textTheme.bodySmall,
                ),
                trailing: Text(
                  "\$ 10,000",
                  style: theme.textTheme.labelLarge,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () => _showLimitAdjustmentSheet(
                    context, "International Transaction", "\$ 2,000"),
                leading: Icon(
                  Icons.language,
                  size: 25,
                  color: isDarkMode
                      ? AppColors.iconDarkColor
                      : AppColors.iconLightColor,
                ),
                horizontalTitleGap: 12,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                tileColor: isDarkMode
                    ? AppColors.darkSecondary
                    : AppColors.lightSecondary,
                title: Text(
                  "International Transaction",
                  style: theme.textTheme.labelLarge,
                ),
                subtitle: Text(
                  "Set your international limit to prevent unauthorized transactions.",
                  style: theme.textTheme.bodySmall,
                ),
                trailing: Text(
                  "\$ 2,000",
                  style: theme.textTheme.labelLarge,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () => _showLimitAdjustmentSheet(
                    context, "Swipe & Pay", "\$ 5,000"),
                leading: Icon(
                  Icons.card_membership,
                  size: 25,
                  color: isDarkMode
                      ? AppColors.iconDarkColor
                      : AppColors.iconLightColor,
                ),
                horizontalTitleGap: 12,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                tileColor: isDarkMode
                    ? AppColors.darkSecondary
                    : AppColors.lightSecondary,
                title: Text(
                  "Swipe & Pay",
                  style: theme.textTheme.labelLarge,
                ),
                subtitle: Text(
                  "Set your swipe & pay limit to prevent unauthorized transactions.",
                  style: theme.textTheme.bodySmall,
                ),
                trailing: Text(
                  "\$ 5,000",
                  style: theme.textTheme.labelLarge,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                onTap: () => _showLimitAdjustmentSheet(
                    context, "Tap & Pay", "\$ 40,000"),
                leading: Icon(
                  Icons.tap_and_play,
                  size: 25,
                  color: isDarkMode
                      ? AppColors.iconDarkColor
                      : AppColors.iconLightColor,
                ),
                horizontalTitleGap: 12,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                tileColor: isDarkMode
                    ? AppColors.darkSecondary
                    : AppColors.lightSecondary,
                title: Text(
                  "Tap & Pay",
                  style: theme.textTheme.labelLarge,
                ),
                subtitle: Text(
                  "Set your tap & pay limit to prevent unauthorized transactions.",
                  style: theme.textTheme.bodySmall,
                ),
                trailing: Text(
                  "\$ 40,000",
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Add this stateful widget for the bottom sheet content
class _LimitAdjustmentSheet extends StatefulWidget {
  final String limitType;
  final double currentLimit;
  final double minValue;
  final double maxValue;
  final double stepSize;
  final bool isDarkMode;

  const _LimitAdjustmentSheet({
    required this.limitType,
    required this.currentLimit,
    required this.minValue,
    required this.maxValue,
    required this.stepSize,
    required this.isDarkMode,
  });

  @override
  State<_LimitAdjustmentSheet> createState() => _LimitAdjustmentSheetState();
}

class _LimitAdjustmentSheetState extends State<_LimitAdjustmentSheet> {
  late double _selectedValue;

  @override
  void initState() {
    super.initState();
    // Round the initial value to the nearest step
    _selectedValue =
        (widget.currentLimit / widget.stepSize).round() * widget.stepSize;
  }

  // Format the value as currency
  String _formatCurrency(double value) {
    return '\$ ${value.toInt().toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},')}';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Adjust ${widget.limitType} Limit",
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(height: 20),
          Text(
            "Current limit: ${_formatCurrency(widget.currentLimit)}",
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 10),
          Text(
            "New limit: ${_formatCurrency(_selectedValue)}",
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          Slider(
            value: _selectedValue,
            min: widget.minValue,
            max: widget.maxValue,
            divisions: (widget.maxValue - widget.minValue) ~/ widget.stepSize,
            label: _formatCurrency(_selectedValue),
            onChanged: (value) {
              // Round to nearest step
              final roundedValue =
                  (value / widget.stepSize).round() * widget.stepSize;
              setState(() {
                _selectedValue = roundedValue;
              });
            },
            activeColor: widget.isDarkMode
                ? AppColors.iconDarkColor
                : AppColors.iconLightColor,
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: double.infinity,
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () => context.goBack(),
                    child: Text("Cancel"),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GradientButton(
                    isDarkMode: widget.isDarkMode,
                    onPressed: () {
                      context.goBack();
                      showModalBottomSheet(
                          isScrollControlled: true,
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          context: context,
                          builder: (context) {
                            return OtpBottomSheet(
                                numberOfFields: 6,
                                showResendButton: false,
                                onVerifyTap: (pin) {},
                                title: "Enter PIN",
                                subTitle:
                                    "Enter the 6-digit PIN you set up the limit",
                                buttonText: "Confirm",
                                mobile: "",
                                obscureText: true);
                          });
                    },
                    child: Text("Save"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
