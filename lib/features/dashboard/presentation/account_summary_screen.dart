import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../widget/bar_chart_widget.dart';
import '../cubit/chart_cubit.dart';
import '../cubit/chart_state.dart';

class AccountSummaryScreen extends StatelessWidget {
  const AccountSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ChartCubit(),
      child: const AccountSummaryView(),
    );
  }
}

class AccountSummaryView extends StatelessWidget {
  const AccountSummaryView({super.key});

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
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BlocBuilder<ChartCubit, ChartState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Period',
                      style: theme.textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        for (String range in ['This Week', 'Last Week'])
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: range == 'This Week' ? 8.0 : 0),
                              child: FilterChip(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                showCheckmark: false,
                                selectedColor: isDarkMode
                                    ? AppColors.iconDarkColor
                                    : AppColors.iconLightColor,
                                disabledColor: isDarkMode
                                    ? AppColors.darkPrimary
                                    : AppColors.lightPrimary,
                                labelPadding: EdgeInsets.zero,
                                label: Center(
                                  child: Text(
                                    range,
                                    style:
                                        theme.textTheme.labelMedium?.copyWith(
                                      color: state.selectedDateRange == range
                                          ? (isDarkMode
                                              ? AppColors.darkSecondary
                                              : AppColors.lightSecondary)
                                          : (isDarkMode
                                              ? AppColors.iconDarkColor
                                              : AppColors.iconLightColor),
                                      fontWeight:
                                          state.selectedDateRange == range
                                              ? FontWeight.w600
                                              : FontWeight.normal,
                                    ),
                                  ),
                                ),
                                selected: state.selectedDateRange == range,
                                onSelected: (selected) {
                                  if (selected) {
                                    context
                                        .read<ChartCubit>()
                                        .changeDateRange(range);
                                  }
                                },
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Show',
                      style: theme.textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: FilterChip(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            showCheckmark: false,
                            selectedColor: isDarkMode
                                ? AppColors.iconDarkColor
                                : AppColors.iconLightColor,
                            disabledColor: isDarkMode
                                ? AppColors.darkPrimary
                                : AppColors.lightPrimary,
                            labelPadding: EdgeInsets.zero,
                            label: Center(
                              child: Text(
                                'Only Spent',
                                style: theme.textTheme.labelMedium?.copyWith(
                                  color: state.showOnlySpent
                                      ? (isDarkMode
                                          ? AppColors.darkSecondary
                                          : AppColors.lightSecondary)
                                      : (isDarkMode
                                          ? AppColors.iconDarkColor
                                          : AppColors.iconLightColor),
                                  fontWeight: state.showOnlySpent
                                      ? FontWeight.w600
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                            selected: state.showOnlySpent,
                            onSelected: (selected) {
                              context
                                  .read<ChartCubit>()
                                  .toggleSpentOnly(selected);
                            },
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: FilterChip(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            showCheckmark: false,
                            selectedColor: isDarkMode
                                ? AppColors.iconDarkColor
                                : AppColors.iconLightColor,
                            disabledColor: isDarkMode
                                ? AppColors.darkPrimary
                                : AppColors.lightPrimary,
                            labelPadding: EdgeInsets.zero,
                            label: Center(
                              child: Text(
                                'Only Income',
                                style: theme.textTheme.labelMedium?.copyWith(
                                  color: state.showOnlyIncome
                                      ? (isDarkMode
                                          ? AppColors.darkSecondary
                                          : AppColors.lightSecondary)
                                      : (isDarkMode
                                          ? AppColors.iconDarkColor
                                          : AppColors.iconLightColor),
                                  fontWeight: state.showOnlyIncome
                                      ? FontWeight.w600
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                            selected: state.showOnlyIncome,
                            onSelected: (selected) {
                              context
                                  .read<ChartCubit>()
                                  .toggleIncomeOnly(selected);
                            },
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: FilterChip(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            showCheckmark: false,
                            selectedColor: isDarkMode
                                ? AppColors.iconDarkColor
                                : AppColors.iconLightColor,
                            disabledColor: isDarkMode
                                ? AppColors.darkPrimary
                                : AppColors.lightPrimary,
                            labelPadding: EdgeInsets.zero,
                            label: Center(
                              child: Text(
                                'Both',
                                style: theme.textTheme.labelMedium?.copyWith(
                                  color: (!state.showOnlySpent &&
                                          !state.showOnlyIncome)
                                      ? (isDarkMode
                                          ? AppColors.darkSecondary
                                          : AppColors.lightSecondary)
                                      : (isDarkMode
                                          ? AppColors.iconDarkColor
                                          : AppColors.iconLightColor),
                                  fontWeight: (!state.showOnlySpent &&
                                          !state.showOnlyIncome)
                                      ? FontWeight.w600
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                            selected:
                                !state.showOnlySpent && !state.showOnlyIncome,
                            onSelected: (selected) {
                              if (selected)
                                context.read<ChartCubit>().showBoth();
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Summary',
                              style: theme.textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Spent',
                                        style: theme.textTheme.labelMedium
                                            ?.copyWith(
                                          color: (isDarkMode
                                                  ? Colors.white
                                                  : Colors.black)
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        '\$${state.totalSpent.toStringAsFixed(2)}',
                                        style: theme.textTheme.titleSmall
                                            ?.copyWith(
                                          color: isDarkMode
                                              ? AppColors.iconDarkColor
                                              : AppColors.iconLightColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Income',
                                        style: theme.textTheme.labelMedium
                                            ?.copyWith(
                                          color: (isDarkMode
                                                  ? Colors.white
                                                  : Colors.black)
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        '\$${state.totalIncome.toStringAsFixed(2)}',
                                        style: theme.textTheme.titleSmall
                                            ?.copyWith(
                                          color: isDarkMode
                                              ? AppColors.iconDarkColor
                                              : AppColors.iconLightColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: DoubleBarChart(
                          values1: state.chartData[state.selectedDateRange]
                                  ?['spent'] ??
                              [],
                          values2: state.chartData[state.selectedDateRange]
                                  ?['income'] ??
                              [],
                          labels: state.dateLabels,
                          context: context,
                          showOnlyValues1: state.showOnlySpent,
                          showOnlyValues2: state.showOnlyIncome,
                          values1Label: 'Spent',
                          values2Label: 'Income',
                          maxValue: context.read<ChartCubit>().globalMaxValue,
                          isDarkMode: isDarkMode,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
