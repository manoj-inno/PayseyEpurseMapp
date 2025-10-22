import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';

class BankingServicesScreen extends StatefulWidget {
  const BankingServicesScreen({super.key});

  @override
  State<BankingServicesScreen> createState() => _BankingServicesScreenState();
}

class _BankingServicesScreenState extends State<BankingServicesScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (_currentPage != next) {
        setState(() {
          _currentPage = next;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Map<String, dynamic>> bankingServicesOptions = const [
    {
      'imagePath': 'lib/core/icons/account-transfer.png',
      'title': 'Account Transfer',
    },
    {
      'imagePath': 'lib/core/icons/account-wallet.png',
      'title': 'Account to Wallet Transfer',
    },
    {
      'imagePath': 'lib/core/icons/wallet-account.png',
      'title': 'Wallet to Account Transfer',
    },
    {
      'imagePath': 'lib/core/icons/card-transfer.png',
      'title': 'Card Transfer',
    },
    {
      'imagePath': 'lib/core/icons/withdraw.png',
      'title': 'Withdraw',
    },
    {
      'imagePath': 'lib/core/icons/chequebook.png',
      'title': 'Cheque Book',
    },
    {
      'imagePath': 'lib/core/icons/insurance.png',
      'title': 'Insurance',
    },
    {
      'imagePath': 'lib/core/icons/loan.png',
      'title': 'Loan',
    },
  ];

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
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            // Card list section
            SizedBox(
              height: 120,
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      itemCount: 2,
                      controller: _pageController,
                      itemBuilder: (context, index) {
                        return Card(
                          color: isDarkMode
                              ? AppColors.darkBackground1
                              : AppColors.lightBackground1,
                          child: SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 25),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.account_balance,
                                    size: 30,
                                  ),
                                  const SizedBox(width: 13),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("State Bank",
                                          style: theme.textTheme.labelLarge),
                                      Text("Savings Account",
                                          style: theme.textTheme.bodyMedium),
                                      Text("**** **** **** 1973",
                                          style: theme.textTheme.bodyMedium),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      2,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index == _currentPage
                              ? isDarkMode
                                  ? AppColors.iconDarkColor
                                  : AppColors.iconLightColor
                              : isDarkMode
                                  ? AppColors.iconDarkColor
                                      .withValues(alpha: 0.3)
                                  : AppColors.iconLightColor
                                      .withValues(alpha: 0.3),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child:
                  Text("Banking Services", style: theme.textTheme.displaySmall),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 0.65,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) => BankingServiceItem(
                    imagePath: bankingServicesOptions[index]['imagePath']!,
                    title: bankingServicesOptions[index]['title']!,
                    onTap: () {
                      // Handle tap for each item differently
                      switch (index) {
                        case 0:
                          break;
                        case 1:
                          break;
                        case 2:
                          break;
                        case 3:
                          break;
                        case 4:
                          break;
                      }
                    },
                  ),
                  itemCount: bankingServicesOptions.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BankingServiceItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const BankingServiceItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              scale: 3,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
