import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/routing/routing.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/error_snackbar.dart';
import '../../../core/widgets/gradient_button.dart';
import '../bloc/get_account_types/customer_type_bloc.dart';
import '../bloc/get_account_types/customer_type_event.dart';
import '../cubit/checkbox/checkbox_cubit.dart';
import '../cubit/checkbox/checkbox_state.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen(
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
            appBar: AppBar(),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      localizations.get('terms_and_conditions'),
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
                      localizations.get(
                          'these_terms_and_conditions_govern_your_use_of_the_mobile_application_operated_by_innovitegra_solutions_private_limited_we_our_or_us_by_accessing_or_using_our_apps_you_agree_to_these_terms'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      localizations.get('use_of_the_service'),
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get('you_must'),
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get(
                          'by_using_our_apps_you_confirm_that_you_have_read_understood_and_agree_to_be_bound_by_these_terms_and_conditions_if_you_do_not_agree_to_these_terms_please_do_not_use_our_apps'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      localizations.get('user_responsibilities'),
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get('you_agree_not_to'),
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get(
                          'share_your_login_credentials_or_account_information_with_others'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get(
                          'use_the_app_for_fraudulent_harmful_or_unauthorized_purposes'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get('upload_offensive_or_illegal'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      localizations.get('collection_and_use_of_information'),
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get(
                          'by_using_the_app_you_consent_to_the_collection_storage_and_use_of_information_as_described_in_our_privacy_policy_this_includes_the_use_of_camera_to_capture_id_documents_and_selfies_location_to_verify_your_address_or_for_other_security_contacts_to_provide_certain_app_features_e_g_sending_requests'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      localizations.get('intellectual_property'),
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get(
                          'all_intellectual_property_rights_including_trademarks_logos_and_software_are_owned_by_innovitegra_solutions_private_limited_unauthorized_use_is_strictly_prohibited'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      localizations.get('limitation_of_liability'),
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get('we_are_not_liable_for'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      localizations.get(
                          'any_loss_resulting_from_unauthorized_access_to_your_account_any_interruption_or_unavailability_of_the_app_any_errors_or_inaccuracies_in_information_provided_by_users'),
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
                              localizations.get(
                                  'i_have_read_and_agree_to_the_terms_and_conditions'),
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: GradientButton(
                            onPressed: () {
                              if (!state.isChecked) {
                                showErrorSnackBar(
                                    context,
                                    localizations.get(
                                        'please_accept_the_terms_and_conditions_to_continue'));
                                return;
                              } else {
                                context.read<CustomerTypeBloc>().add(
                                    CustomerTypeEvent.fetchCustomerTypes());
                                context.navigateTo(RouteConstants.customerType,
                                    arguments:
                                        CustomerTypeArguments(mobile: mobile));
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
