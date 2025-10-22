import 'package:epurse/core/language/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/language/bloc/language_event.dart';
import '../../../core/routing/routing.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/theme/bloc/theme_event.dart';
import '../../../core/widgets/gradient_button.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final localizations =
        AppLocalizations(context.watch<LanguageBloc>().state.maybeWhen(
              loaded: (locale) => locale,
              orElse: () => const Locale('en'),
            ));
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );

    return Container(
      decoration: AppThemes.scaffoldBackgroundDecoration(
          isDark: isDarkMode, isPrimary: true),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: () {
                context.read<ThemeBloc>().add(const ThemeEvent.toggleTheme());
              },
            ),
            PopupMenuButton<String>(
              icon: const Icon(Icons.language),
              onSelected: (String languageCode) {
                context.read<LanguageBloc>().add(
                    LanguageEvent.changeLanguage(languageCode: languageCode));
              },
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(value: 'en', child: Text('English')),
                  const PopupMenuItem(value: 'fa', child: Text('فارسی')),
                  const PopupMenuItem(value: 'ar', child: Text('العربية')),
                  const PopupMenuItem(value: 'fr', child: Text('Français')),
                ];
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: SizedBox(
                        width: size.width / 1.5,
                        child: Lottie.asset(
                          'lib/core/animation/purse-anim.json',
                          frameRate: const FrameRate(60),
                          backgroundLoading: true,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Hero(
                    tag: 'epurse',
                    child: Text(
                      "ePurse",
                      style: theme.textTheme.displayLarge,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    localizations.get('e_wallet_at_your_fingertips'),
                    style: theme.textTheme.labelLarge,
                  ),
                  SizedBox(
                    height: size.height / 8,
                  ),
                  SizedBox(
                    width: 300,
                    height: 45,
                    child: GradientButton(
                      isDarkMode: isDarkMode,
                      onPressed: () {
                        context.navigateTo(RouteConstants.enterMobile);
                      },
                      child: Text(localizations.get('register')),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 50,
                  ),
                  SizedBox(
                      width: 300,
                      height: 45,
                      child: OutlinedButton(
                          onPressed: () {
                            context.navigateTo(RouteConstants.login);
                          },
                          child: Text(localizations.get('login')))),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
