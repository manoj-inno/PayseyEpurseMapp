import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Column(
            children: [
              ExpansionTile(
                tilePadding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                backgroundColor: isDarkMode
                    ? AppColors.darkSecondary
                    : AppColors.lightSecondary,
                collapsedBackgroundColor: isDarkMode
                    ? AppColors.darkSecondary
                    : AppColors.lightSecondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                title:
                    Text('Top up by agent', style: theme.textTheme.titleMedium),
                subtitle: Text(
                  'Visit any of our authorized agents to top up your account',
                  style: theme.textTheme.bodyMedium,
                ),
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Column(
                        children: [
                          Center(
                            child: Card(
                              child: Icon(
                                Icons.qr_code_2,
                                size: 250,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.info,
                                size: 12,
                                color: isDarkMode
                                    ? AppColors.darkTextPrimary
                                    : AppColors.lightTextPrimary,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Scan this QR code to top up this account",
                                style: theme.textTheme.labelMedium?.copyWith(
                                    color: isDarkMode
                                        ? AppColors.darkTextPrimary
                                        : AppColors.lightTextPrimary),
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                        ],
                      )),
                ],
              ),
              const SizedBox(height: 16),
              ExpansionTile(
                tilePadding:
                    EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                backgroundColor: isDarkMode
                    ? AppColors.darkSecondary
                    : AppColors.lightSecondary,
                collapsedBackgroundColor: isDarkMode
                    ? AppColors.darkSecondary
                    : AppColors.lightSecondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                collapsedShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                title:
                    Text('Top up by card', style: theme.textTheme.titleMedium),
                subtitle: Text(
                  'Add funds to your account using your debit/credit card',
                  style: theme.textTheme.bodyMedium,
                ),
                children: [
                  // Add card top-up related widgets here
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: Column(
                        children: [
                          Text(
                            'Add funds to your account using your debit/credit card',
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
