import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/routing/routing.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';

class PayBillsScreen extends StatelessWidget {
  const PayBillsScreen({super.key});

  final List<Map<String, dynamic>> billPaymentOptions = const [
    {
      'imagePath': 'lib/core/icons/electricity.png',
      'title': 'Electricity',
      'billType': 1,
    },
    {
      'imagePath': 'lib/core/icons/water.png',
      'title': 'Water',
      'billType': 2,
    },
    {
      'imagePath': 'lib/core/icons/gas.png',
      'title': 'Gas',
      'billType': 3,
    },
    {
      'imagePath': 'lib/core/icons/tv.png',
      'title': 'TV Cable',
      'billType': 4,
    },
    {
      'imagePath': 'lib/core/icons/credit-card-bills.png',
      'title': 'Credit Card',
      'billType': 5,
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Bill Payment", style: theme.textTheme.displaySmall),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) => BillPaymentItem(
                    imagePath: billPaymentOptions[index]['imagePath']!,
                    title: billPaymentOptions[index]['title']!,
                    onTap: () {
                      context.navigateTo(
                          RouteConstants.selectBillPaymentOperator,
                          arguments: SelectBillPaymentOperatorArguments(
                              billTypeId: billPaymentOptions[index]
                                  ['billType']!,
                              billType: billPaymentOptions[index]['title']!));
                    },
                  ),
                  itemCount: billPaymentOptions.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BillPaymentItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const BillPaymentItem({
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
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
