import 'dart:developer';

import '../../../core/language/bloc/language_event.dart';
import '../../../core/routing/routing.dart';
import '../../../core/widgets/error_snackbar.dart';
import '../../../core/widgets/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../cubit/checkbox/checkbox_cubit.dart';
import '../cubit/checkbox/checkbox_state.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen(
      {super.key, required this.mobile, required this.refNum});
  final String mobile;
  final String refNum;

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

    return BlocProvider(
      create: (_) => CheckboxCubit(),
      child:
          BlocBuilder<CheckboxCubit, CheckboxState>(builder: (context, state) {
        return Container(
          decoration: AppThemes.scaffoldBackgroundDecoration(
              isDark: isDarkMode, isPrimary: true),
          child: Scaffold(
            appBar: AppBar(
              actions: [
                PopupMenuButton<String>(
                  icon: const Icon(Icons.language),
                  onSelected: (String languageCode) {
                    context.read<LanguageBloc>().add(
                        LanguageEvent.changeLanguage(
                            languageCode: languageCode));
                  },
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                          value: 'en',
                          child: Text(localizations.get('english'))),
                      PopupMenuItem(
                          value: 'fa', child: Text(localizations.get('farsi'))),
                      PopupMenuItem(
                          value: 'ar',
                          child: Text(localizations.get('arabic'))),
                      PopupMenuItem(
                          value: 'fr',
                          child: Text(localizations.get('french'))),
                    ];
                  },
                ),
              ],
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      localizations.get('privacy_policy'),
                      style: theme.textTheme.displayMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get('effective_date'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    Divider(
                      color: theme.colorScheme.primary,
                      thickness: 0.5,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      localizations.get('privacy_policy_intro'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      localizations.get('information_we_collect'),
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get('personal_information'),
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      localizations.get('personal_information_details'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get('device_information'),
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      localizations.get('device_information_details'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      localizations.get('how_we_use_your_information'),
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get('how_we_use_your_information_details'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      localizations.get('sharing_your_information'),
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get('sharing_your_information_details'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      localizations.get('data_security'),
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get('data_security_details'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      localizations.get('your_rights'),
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get('your_rights_details'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      localizations.get('updates_to_policy'),
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get('updates_to_policy_details'),
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: SafeArea(
              child: BottomAppBar(
                height: 120,
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            activeColor: isDarkMode
                                ? AppColors.iconDarkColor
                                : AppColors.iconLightColor,
                            value: state.isChecked,
                            onChanged: (value) {
                              context
                                  .read<CheckboxCubit>()
                                  .toggleCheckbox(value ?? false);
                            },
                          ),
                          Expanded(
                            child: Text(
                              localizations.get('agree_privacy_policy'),
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: GradientButton(
                            onPressed: () {
                              log(refNum);
                              if (!state.isChecked) {
                                showErrorSnackBar(context,
                                    "Please accept the Privacy Policy to continue");
                                return;
                              } else {
                                context.navigateTo(
                                    RouteConstants.termsAndConditions,
                                    arguments: TermsAndConditionsArguments(
                                        mobile: mobile, refNum: refNum));
                              }
                            },
                            isDarkMode: isDarkMode,
                            child: Text(localizations.get('accept'))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
