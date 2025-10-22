import '../../../core/routing/routing.dart';
import '../../../core/widgets/server_down_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/injection/injection_container.dart' as di;
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../bloc/get_account_types/customer_type_bloc.dart';
import '../bloc/get_account_types/customer_type_event.dart';
import '../bloc/get_account_types/customer_type_state.dart';
import '../bloc/register1_reference/register_reference_bloc.dart';

class CustomerTypeScreen extends StatelessWidget {
  const CustomerTypeScreen({super.key, required this.mobile});
  final String mobile;

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
      create: (context) => di.sl<CustomerTypeBloc>()
        ..add(CustomerTypeEvent.fetchCustomerTypes()),
      child: BlocListener<CustomerTypeBloc, CustomerTypeState>(
        listener: (context, state) {
          if (state is CustomerTypeServerDownError) {
            showDialog(
                context: context,
                builder: (context) => ServerDownDialog(message: state.message));
          }
        },
        child: BlocListener<RegisterReferenceBloc, RegisterReferenceState>(
          listener: (context, state) {
            if (state is ReferenceGenerated) {
              context.goBack();
              context.navigateTo(RouteConstants.uploadId,
                  arguments: UploadIdArguments(
                      refNum: state.entity.regRef,
                      customerTypeId: state.entity.customerTypeId,
                      showDialogOnInit: true));
            } else if (state is ServerDownError) {
              showDialog(
                  context: context,
                  builder: (context) =>
                      ServerDownDialog(message: state.message));
            }
          },
          child: Container(
            decoration: AppThemes.scaffoldBackgroundDecoration(
                isDark: isDarkMode, isPrimary: true),
            child: Scaffold(
              appBar: AppBar(),
              body: RefreshIndicator(
                onRefresh: () async {
                  context.read<CustomerTypeBloc>().add(FetchCustomerTypes());
                },
                child: BlocBuilder<CustomerTypeBloc, CustomerTypeState>(
                  builder: (context, state) {
                    debugPrint("__________CUSTOMER TYPE STATE____________");
                    debugPrint(state.toString());

                    List<Widget> children = [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              localizations.get('customer_type'),
                              style: theme.textTheme.displayMedium,
                            ),
                            Text(
                              localizations.get(
                                  'select_the_customer_type_according_to_the_account_you_want_to_open'),
                              style: theme.textTheme.bodyMedium,
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ];

                    if (state is CustomerTypeLoading) {
                      children.addAll(List.generate(
                        2,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Shimmer.fromColors(
                            baseColor: isDarkMode
                                ? AppColors.shimmerBaseDark
                                : AppColors.shimmerBaseLight,
                            highlightColor: isDarkMode
                                ? AppColors.shimmerHighlightDark
                                : AppColors.shimmerHighlightLight,
                            child: Card(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              child: const SizedBox(height: 100),
                            ),
                          ),
                        ),
                      ));
                    } else if (state is CustomerTypeLoaded) {
                      children.addAll(
                        state.customerTypes.map((type) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(12),
                              onTap: () {
                                context.read<RegisterReferenceBloc>().add(
                                      GenerateReferenceEvent(
                                          mobile: mobile, userTypeId: type.id),
                                    );
                              },
                              child: Card(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 100,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 15),
                                    child: Row(
                                      children: [
                                        Icon(
                                          type.typeName == "INDIVIDUAL"
                                              ? Icons.person_outline_rounded
                                              : Icons.business_outlined,
                                          size: 35,
                                        ),
                                        const SizedBox(width: 20),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(type.typeName,
                                                style: theme
                                                    .textTheme.displaySmall),
                                            Text(type.description,
                                                style:
                                                    theme.textTheme.bodyMedium),
                                          ],
                                        ),
                                        const Spacer(),
                                        const Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            size: 15),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      );
                    } else if (state is CustomerTypeUnavailable ||
                        state is CustomerTypeError) {
                      final message = (state is CustomerTypeUnavailable)
                          ? state.message
                          : (state as CustomerTypeError).message;
                      children.add(
                        Padding(
                          padding: const EdgeInsets.only(top: 100),
                          child: Center(
                            child: Column(
                              children: [
                                const Icon(Icons.warning_amber_rounded),
                                const SizedBox(height: 10),
                                Text(message),
                              ],
                            ),
                          ),
                        ),
                      );
                    }

                    return ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      children: children,
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
