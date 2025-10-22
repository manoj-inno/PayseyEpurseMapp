import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/routing/routing.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/gradient_button.dart';

class CompletedRegistrationScreen extends StatelessWidget {
  const CompletedRegistrationScreen({super.key, required this.refNumber});
  final String refNumber;

  @override
  Widget build(BuildContext context) {
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
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Lottie.asset('lib/core/animation/success-reg.json'),
                ),
                Text(localizations.get('completed_registration'),
                    style: theme.textTheme.displayMedium),
                Text(
                    localizations.get(
                        'your_registration_has_been_completed_successfully'),
                    style: theme.textTheme.bodyMedium),
                Text(localizations.get('thank_you_for_choosing_epurse'),
                    style: theme.textTheme.bodyMedium),
                SizedBox(
                  height: 200,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: GradientButton(
              isDarkMode: isDarkMode,
              onPressed: () {
                context.navigateToAndRemoveUntil(RouteConstants.login);
              },
              child: Text(localizations.get('explore')),
            ),
          ),
        ),
      ),
    );
  }
}
