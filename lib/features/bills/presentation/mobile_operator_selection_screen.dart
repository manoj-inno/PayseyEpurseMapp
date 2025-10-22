import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/routing/routing.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/gradient_button.dart';
import '../../../core/widgets/required_label_text.dart';
import '../../payments/bloc/get_recipients/get_recipients_bloc.dart';
import '../../../core/injection/injection_container.dart' as di;
import '../../registration/cubit/country_code/country_code_cubit.dart';
import '../../registration/cubit/country_code/country_code_state.dart';

class MobileOperatorSelectionScreen extends StatelessWidget {
  MobileOperatorSelectionScreen({super.key});
  final TextEditingController mobileController = TextEditingController();

  void _showContactsBottomSheet(BuildContext context) {
    final isDarkMode = context.read<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    showModalBottomSheet(
      backgroundColor:
          isDarkMode ? AppColors.darkSecondary : AppColors.lightPrimary,
      context: context,
      isScrollControlled: true,
      builder: (context) => BlocProvider(
        create: (context) =>
            di.sl<GetRecipientsBloc>()..add(LoadContactsOnly()),
        child: DraggableScrollableSheet(
          initialChildSize: 0.9,
          minChildSize: 0.5,
          maxChildSize: 0.95,
          builder: (context, scrollController) {
            final theme = Theme.of(context);
            final isDarkMode = context.read<ThemeBloc>().state.maybeWhen(
                  loaded: (isDark) => isDark,
                  orElse: () => false,
                );
            return Container(
              decoration: BoxDecoration(
                color: theme.scaffoldBackgroundColor,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: BlocBuilder<GetRecipientsBloc, GetRecipientsState>(
                      builder: (context, state) {
                        return TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search Contacts...",
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                          ),
                          onChanged: (value) {
                            context
                                .read<GetRecipientsBloc>()
                                .add(SearchContacts(value));
                          },
                        ).asGradientBox(context);
                      },
                    ),
                  ),
                  Expanded(
                    child: BlocBuilder<GetRecipientsBloc, GetRecipientsState>(
                      builder: (context, state) {
                        if (state is ContactsLoading) {
                          return ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Shimmer.fromColors(
                                baseColor: isDarkMode
                                    ? AppColors.shimmerBaseDark
                                    : AppColors.shimmerBaseLight2,
                                highlightColor: isDarkMode
                                    ? AppColors.shimmerHighlightDark
                                    : AppColors.shimmerHighlightLight,
                                child: ListTile(
                                  leading: const CircleAvatar(
                                    radius: 20,
                                  ),
                                  title: Container(
                                    height: 16,
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    decoration: BoxDecoration(
                                      color: isDarkMode
                                          ? AppColors.shimmerBaseDark
                                          : AppColors.shimmerBaseLight2,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  subtitle: Container(
                                    height: 12,
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    margin: const EdgeInsets.only(
                                        top: 8, right: 50),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        } else if (state is ContactsError) {
                          return Center(child: Text(state.message));
                        } else if (state is ContactsLoaded) {
                          return Row(
                            children: [
                              Expanded(
                                child: Scrollbar(
                                  thickness: 10,
                                  controller: scrollController,
                                  thumbVisibility: true,
                                  trackVisibility: true,
                                  child: ScrollConfiguration(
                                    behavior: ScrollConfiguration.of(context)
                                        .copyWith(scrollbars: false),
                                    child: ListView.builder(
                                      controller: scrollController,
                                      physics: const BouncingScrollPhysics(),
                                      itemCount: state.filteredContacts.length,
                                      itemBuilder: (context, index) {
                                        final contact =
                                            state.filteredContacts[index];
                                        return ListTile(
                                          leading: CircleAvatar(
                                            child: Text(contact.name[0]),
                                          ),
                                          title: Text(contact.name,
                                              style:
                                                  theme.textTheme.labelLarge),
                                          subtitle: Text(contact.number,
                                              style:
                                                  theme.textTheme.bodyMedium),
                                          onTap: () {
                                            final number =
                                                contact.number.trim();
                                            final cleanNumber = number
                                                    .contains('+')
                                                ? number
                                                    .substring(
                                                        number.indexOf('+') + 3)
                                                    .replaceAll(
                                                        RegExp(r'[^\d]'), '')
                                                    .trim()
                                                : number
                                                    .replaceAll(
                                                        RegExp(r'[^\d]'), '')
                                                    .trim();
                                            mobileController.text = cleanNumber;
                                            context.goBack();
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                            ],
                          );
                        }
                        return const SizedBox();
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

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
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RequiredLabelText(
                  text: "Mobile Number",
                  isRequired: true,
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: mobileController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () => _showContactsBottomSheet(context),
                      icon: const Icon(Icons.contacts_outlined),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: BlocBuilder<CountryCodeCubit, CountryCodeState>(
                        builder: (context, state) {
                          final countryCode = state.maybeWhen(
                            loaded: (countryCodes) => countryCodes[0] ?? '+91',
                            orElse: () => '+91',
                          );
                          return PopupMenuButton<String>(
                            initialValue: countryCode,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(countryCode,
                                    style: theme.textTheme.bodyLarge),
                                const Icon(Icons.arrow_drop_down),
                              ],
                            ),
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuEntry<String>>[
                              const PopupMenuItem<String>(
                                value: '  +1',
                                child: Text('United States (+1)'),
                              ),
                              const PopupMenuItem<String>(
                                value: '  +44',
                                child: Text('United Kingdom (+44)'),
                              ),
                              const PopupMenuItem<String>(
                                value: '  +91',
                                child: Text('India (+91)'),
                              ),
                            ],
                            onSelected: (String value) {
                              context
                                  .read<CountryCodeCubit>()
                                  .updateCountryCode(0, value);
                            },
                          );
                        },
                      ),
                    ),
                    border: InputBorder.none,
                  ),
                  style: theme.textTheme.bodyLarge,
                ).asGradientBox(context),
                SizedBox(
                  height: 10,
                ),
                RequiredLabelText(
                  text: "Select Operator",
                  isRequired: true,
                ),
                SizedBox(
                  height: 5,
                ),
                DropdownButtonFormField<String>(
                  borderRadius: BorderRadius.circular(5),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    errorStyle: const TextStyle(height: 0, fontSize: 0),
                    isDense: true,
                  ),
                  items: [
                    DropdownMenuItem(
                      value: 'AT&T',
                      child: Text('AT&T', style: theme.textTheme.bodyLarge),
                    ),
                    DropdownMenuItem(
                      value: 'Verizon',
                      child: Text('Verizon', style: theme.textTheme.bodyLarge),
                    ),
                  ],
                  onChanged: (value) {},
                ).asGradientBox(context),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: GradientButton(
                      isDarkMode: isDarkMode,
                      child: Text("Next"),
                      onPressed: () {
                        context.navigateTo(RouteConstants.mobileRechargePlan);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Past Recharges",
                  style: theme.textTheme.displaySmall,
                ),
                SizedBox(
                  height: 5,
                ),
                ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        context.navigateTo(RouteConstants.mobileRechargePlan);
                      },
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(child: Icon(Icons.person)),
                      title: Text(
                        "Contact Name",
                        style: theme.textTheme.labelLarge,
                      ),
                      subtitle: Text(
                        "Mobile Number",
                        style: theme.textTheme.bodySmall,
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "\$ 10",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
