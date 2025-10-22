import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';

class MobileRechargePlanScreen extends StatelessWidget {
  const MobileRechargePlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final localizations =
        AppLocalizations(context.watch<LanguageBloc>().state.maybeWhen(
              loaded: (locale) => locale,
              orElse: () => const Locale('en'),
            ));
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
          actions: [
            IconButton(
              icon: Icon(
                Icons.compare_arrows_outlined,
                color: isDarkMode
                    ? AppColors.iconDarkColor
                    : AppColors.iconLightColor,
              ),
              onPressed: () {
                // TODO: Implement plan comparison
              },
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: DefaultTabController(
          length: 5,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search plans...',
                    prefixIcon: Icon(
                      Icons.search,
                      color: isDarkMode
                          ? AppColors.iconDarkColor
                          : AppColors.iconLightColor,
                    ),
                    border: InputBorder.none,
                  ),
                ).asGradientBox(context),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: (isDarkMode
                              ? AppColors.iconDarkColor
                              : AppColors.iconLightColor)
                          .withOpacity(0.2),
                    ),
                  ),
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  isScrollable: true,
                  indicatorColor: isDarkMode
                      ? AppColors.iconDarkColor
                      : AppColors.iconLightColor,
                  labelColor: isDarkMode
                      ? AppColors.iconDarkColor
                      : AppColors.iconLightColor,
                  unselectedLabelColor: isDarkMode
                      ? AppColors.iconDarkColor.withValues(alpha: 0.4)
                      : AppColors.iconLightColor.withValues(alpha: 0.4),
                  labelStyle: theme.textTheme.labelLarge,
                  tabs: const [
                    Tab(text: "Data"),
                    Tab(text: "Unlimited"),
                    Tab(text: "Talktime"),
                    Tab(text: "Entertainment"),
                    Tab(text: "Sports"),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    _buildPlansList(_dataPlans, isDarkMode),
                    _buildPlansList(_unlimitedPlans, isDarkMode),
                    _buildPlansList(_talktimePlans, isDarkMode),
                    _buildPlansList(_entertainmentPlans, isDarkMode),
                    _buildPlansList(_sportsPlans, isDarkMode),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPlansList(List<RechargePlan> plans, bool isDarkMode) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: plans.length,
      itemBuilder: (context, index) {
        final plan = plans[index];
        return Card(
          color:
              isDarkMode ? AppColors.darkSecondary : AppColors.lightSecondary,
          elevation: 2,
          margin: const EdgeInsets.only(bottom: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '₹${plan.price}',
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: isDarkMode
                                    ? AppColors.iconDarkColor
                                    : AppColors.iconLightColor,
                              ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: (isDarkMode
                                ? AppColors.iconDarkColor
                                : AppColors.iconLightColor)
                            .withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '${plan.validity} days',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: isDarkMode
                                  ? AppColors.iconDarkColor
                                  : AppColors.iconLightColor,
                            ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  plan.description,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Implement plan selection
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isDarkMode
                          ? AppColors.iconDarkColor
                          : AppColors.iconLightColor,
                      foregroundColor: isDarkMode ? Colors.black : Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Select Plan',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class RechargePlan {
  final double price;
  final String description;
  final int validity;

  const RechargePlan({
    required this.price,
    required this.description,
    required this.validity,
  });
}

final _dataPlans = [
  RechargePlan(
    price: 299,
    description: '2GB/day + 100 SMS/day',
    validity: 28,
  ),
  RechargePlan(
    price: 499,
    description: '3GB/day + unlimited SMS',
    validity: 56,
  ),
  RechargePlan(
    price: 799,
    description: '4GB/day + unlimited SMS',
    validity: 84,
  ),
];

final _unlimitedPlans = [
  RechargePlan(
    price: 999,
    description: 'Truly unlimited data + calls + SMS',
    validity: 84,
  ),
  RechargePlan(
    price: 699,
    description: 'Unlimited data (FUP 1.5GB/day) + calls + SMS',
    validity: 56,
  ),
];

final _talktimePlans = [
  RechargePlan(
    price: 100,
    description: 'Talktime ₹81.75 + ₹18.25 taxes',
    validity: 28,
  ),
  RechargePlan(
    price: 500,
    description: 'Talktime ₹423.73 + ₹76.27 taxes',
    validity: 56,
  ),
];

final _entertainmentPlans = [
  RechargePlan(
    price: 599,
    description: '2GB/day + Disney+ Hotstar subscription',
    validity: 56,
  ),
  RechargePlan(
    price: 899,
    description: '2.5GB/day + Netflix (Mobile) subscription',
    validity: 84,
  ),
];

final _sportsPlans = [
  RechargePlan(
    price: 499,
    description: '2GB/day + 1 year Sony LIV subscription',
    validity: 56,
  ),
  RechargePlan(
    price: 699,
    description: '3GB/day + 1 year Hotstar Sports',
    validity: 84,
  ),
];
