import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/storage/preferences_manager.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/error_snackbar.dart';
import '../cubit/device_id_cubit.dart';
import '../cubit/device_id_state.dart';
import 'package:epurse/core/routing/routing.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<DeviceIdCubit>().getDeviceIdAndStore();
  }

  void _navigateToNextScreen() {
    Future.delayed(const Duration(milliseconds: 1500), () async {
      PreferencesManager preferencesManager =
          await PreferencesManager.getInstance();
      bool isRegistered = preferencesManager.isRegistered;
      if (mounted) {
        if (isRegistered) {
          context.navigateToReplace(RouteConstants.login);
        } else {
          context.navigateToReplace(RouteConstants.initial);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final languageState = context.watch<LanguageBloc>().state;
    final themeState = context.watch<ThemeBloc>().state;
    final theme = Theme.of(context);

    return BlocListener<DeviceIdCubit, DeviceIdState>(
      listener: (context, state) {
        state.maybeWhen(
          initial: () {},
          loading: () {},
          success: () => _navigateToNextScreen(),
          orElse: () {
            showErrorSnackBar(context, 'Error getting device id');
            _navigateToNextScreen();
          },
        );
      },
      child: Container(
        decoration: AppThemes.scaffoldBackgroundDecoration(
            isDark: themeState.maybeWhen(
              loaded: (isDark) => isDark,
              orElse: () => false,
            ),
            isPrimary: true),
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                  child: Transform.scale(
                    scale: 8.0,
                    child: Lottie.asset(
                      'lib/core/animation/small-wallet-anim.json',
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Hero(
                  tag: 'ePurse',
                  child: Text(
                    'ePurse',
                    style: theme.textTheme.displayLarge,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  languageState.maybeWhen(
                    loaded: (locale) => AppLocalizations(locale)
                        .get('e_wallet_at_your_fingertips'),
                    orElse: () => '',
                  ),
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
