import '../../../core/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/injection/injection_container.dart' as di;
import '../../../core/widgets/error_snackbar.dart';
import '../../../core/widgets/gradient_button.dart';
import '../../../core/widgets/required_label_text.dart';
import '../../../core/widgets/server_down_dialog.dart';
import '../bloc/address_management/address_management_bloc.dart';
import '../bloc/get_occupation_details/get_occupation_details_bloc.dart';
import '../bloc/get_occupation_details/get_occupation_details_event.dart';
import '../bloc/get_occupation_details/get_occupation_details_state.dart';
import '../bloc/get_personal_details/get_personal_details_bloc.dart';
import '../bloc/get_personal_details/get_personal_details_event.dart';
import '../bloc/register3_occupation/register_occupation_bloc.dart';
import '../domain/get_personal_details/entities/salary_range_entity.dart';
import '../data/register3_occupation/models/register_occupation_model.dart';

class OccupationScreen extends StatefulWidget {
  const OccupationScreen(
      {super.key, required this.customerTypeId, required this.refNum});
  final int customerTypeId;
  final String refNum;

  @override
  State<OccupationScreen> createState() => _OccupationScreenState();
}

class _OccupationScreenState extends State<OccupationScreen> {
  SalaryRangeEntity? selectedSalaryRange;
  bool _formSubmitted = false;
  final TextEditingController employerController = TextEditingController();
  final TextEditingController employmentStatusController =
      TextEditingController();
  final TextEditingController designationController = TextEditingController();
  final TextEditingController employeeIdController = TextEditingController();
  final TextEditingController placeOfPostingController =
      TextEditingController();
  final TextEditingController officeAddressController = TextEditingController();

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final bloc = di.sl<GetOccupationDetailsBloc>();
            bloc.add(GetOccupationDetailsEvent.getOccupationDetails());
            bloc.add(GetOccupationDetailsEvent.getSourceFundDetails());
            return bloc;
          },
        ),
        BlocProvider(
          create: (context) => di.sl<GetPersonalDetailsBloc>()
            ..add(GetPersonalDetailsEvent.fetchSalaryRangeList()),
        ),
      ],
      child: Container(
        decoration: AppThemes.scaffoldBackgroundDecoration(
            isDark: isDarkMode, isPrimary: true),
        child:
            BlocListener<GetOccupationDetailsBloc, GetOccupationDetailsState>(
          listener: (context, state) {
            if (state is GetOccupationDetailsData) {
              if (state.isServerDown) {
                showDialog(
                    context: context,
                    builder: (context) => ServerDownDialog(
                        message:
                            "Server is currently unavailable. Please try again later."));
              }
            }
          },
          child: BlocListener<RegisterOccupationBloc, RegisterOccupationState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {},
                success: (occupation) {
                  try {
                    final bloc = context.read<AddressManagementBloc>();
                    if (!bloc.isClosed) {
                      bloc.add(ClearAllAddresses(refNumber: widget.refNum));
                    }
                  } catch (e) {
                    debugPrint('Error adding ClearAllAddresses event: $e');
                  }
                  context.navigateTo(RouteConstants.addAddress,
                      arguments: AddressArguments(
                          refNumber: widget.refNum,
                          customerTypeId: widget.customerTypeId));
                },
                serverDown: (message) {
                  showDialog(
                      context: context,
                      builder: (context) => ServerDownDialog(message: message));
                },
                failure: (message) {
                  showErrorSnackBar(context, message);
                },
              );
            },
            child: BlocBuilder<GetOccupationDetailsBloc,
                GetOccupationDetailsState>(
              builder: (context, state) {
                final bool isLoading = state is GetOccupationDetailsLoading ||
                    (state is GetOccupationDetailsData &&
                        state.loadingType != null);

                // Get selected values from state
                final selectedOccupation = state is GetOccupationDetailsData
                    ? state.selectedOccupation
                    : null;

                final selectedSourceFund = state is GetOccupationDetailsData
                    ? state.selectedSourceFund
                    : null;

                return Scaffold(
                  appBar: AppBar(),
                  body: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                localizations.get('occupation'),
                                style: theme.textTheme.displayMedium,
                              ),
                              Text(
                                localizations.get(
                                    'please_fill_in_the_following_details_to_continue'),
                                style: theme.textTheme.bodyMedium,
                              ),
                              SizedBox(height: 25),
                              RequiredLabelText(
                                  text: localizations.get('occupation'),
                                  isRequired: true),
                              const SizedBox(height: 3),
                              BlocBuilder<GetOccupationDetailsBloc,
                                  GetOccupationDetailsState>(
                                builder: (context, state) {
                                  debugPrint(
                                      "__________OCCUPATION STATE____________");
                                  debugPrint(state.toString());
                                  if (state is GetOccupationDetailsData) {
                                    final isOccupationLoading =
                                        state.loadingType ==
                                            OccupationLoadingType.occupation;
                                    final hasError = state.error != null &&
                                        !state.isServerDown;

                                    // Always show dropdown for occupation, even when empty
                                    return DropdownButtonFormField<int>(
                                      borderRadius: BorderRadius.circular(5),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        errorStyle: const TextStyle(
                                            height: 0, fontSize: 0),
                                        isDense: true,
                                      ),
                                      style: theme.textTheme.labelMedium,
                                      initialValue:
                                          state.selectedOccupation?.id,
                                      items: isOccupationLoading || hasError
                                          ? []
                                          : (state.occupations?.isEmpty ?? true)
                                              ? []
                                              : state.occupations
                                                  ?.map((e) => DropdownMenuItem(
                                                      value: e.id,
                                                      child:
                                                          Text(e.description)))
                                                  .toList(),
                                      onChanged: isOccupationLoading || hasError
                                          ? null
                                          : (value) {
                                              if (value != null &&
                                                  state.occupations != null) {
                                                final selected = state
                                                    .occupations!
                                                    .firstWhere(
                                                  (element) =>
                                                      element.id == value,
                                                );
                                                context
                                                    .read<
                                                        GetOccupationDetailsBloc>()
                                                    .add(
                                                        GetOccupationDetailsEvent
                                                            .selectOccupation(
                                                                occupation:
                                                                    selected));
                                              }
                                            },
                                    ).asGradientBox(
                                      context,
                                      hasError: _formSubmitted &&
                                          selectedOccupation == null,
                                    );
                                  }
                                  return TextFormField(
                                    readOnly: isLoading,
                                    controller: TextEditingController(),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ).asGradientBox(context, hasError: false);
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              RequiredLabelText(
                                  text: localizations.get('source_of_fund'),
                                  isRequired: true),
                              const SizedBox(height: 3),
                              BlocBuilder<GetOccupationDetailsBloc,
                                  GetOccupationDetailsState>(
                                builder: (context, state) {
                                  debugPrint(
                                      "__________SOURCE FUNDS STATE____________");
                                  debugPrint(state.toString());
                                  if (state is GetOccupationDetailsData) {
                                    final isSourceFundsLoading =
                                        state.loadingType ==
                                            OccupationLoadingType.sourceFunds;
                                    final hasError = state.error != null &&
                                        !state.isServerDown;

                                    // Always show dropdown for source funds, even when empty
                                    return DropdownButtonFormField<int>(
                                      borderRadius: BorderRadius.circular(5),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        errorStyle: const TextStyle(
                                            height: 0, fontSize: 0),
                                        isDense: true,
                                      ),
                                      style: theme.textTheme.labelMedium,
                                      initialValue:
                                          state.selectedSourceFund?.id,
                                      items: isSourceFundsLoading || hasError
                                          ? []
                                          : (state.sourceFunds?.isEmpty ?? true)
                                              ? []
                                              : state.sourceFunds!
                                                  .map((e) => DropdownMenuItem(
                                                      value: e.id,
                                                      child:
                                                          Text(e.description)))
                                                  .toList(),
                                      onChanged: isSourceFundsLoading ||
                                              hasError
                                          ? null
                                          : (value) {
                                              if (value != null &&
                                                  state.sourceFunds != null) {
                                                final selected = state
                                                    .sourceFunds!
                                                    .firstWhere(
                                                  (element) =>
                                                      element.id == value,
                                                );
                                                context
                                                    .read<
                                                        GetOccupationDetailsBloc>()
                                                    .add(
                                                        GetOccupationDetailsEvent
                                                            .selectSourceFund(
                                                                sourceFund:
                                                                    selected));
                                              }
                                            },
                                    ).asGradientBox(
                                      context,
                                      hasError: _formSubmitted &&
                                          selectedSourceFund == null,
                                    );
                                  }
                                  return TextFormField(
                                    readOnly: isLoading,
                                    controller: TextEditingController(),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ).asGradientBox(context, hasError: false);
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 6,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RequiredLabelText(
                                            text: localizations.get('employer'),
                                            isRequired: false),
                                        const SizedBox(height: 3),
                                        TextFormField(
                                          controller: employerController,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            errorStyle: const TextStyle(
                                                height: 0, fontSize: 0),
                                            isDense: true,
                                          ),
                                          readOnly: isLoading,
                                        ).asGradientBox(context,
                                            hasError: false),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RequiredLabelText(
                                            text: localizations
                                                .get('employment_status'),
                                            isRequired: false),
                                        const SizedBox(height: 3),
                                        TextFormField(
                                          controller:
                                              employmentStatusController,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            errorStyle: const TextStyle(
                                                height: 0, fontSize: 0),
                                            isDense: true,
                                          ),
                                          readOnly: isLoading,
                                        ).asGradientBox(context,
                                            hasError: false),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RequiredLabelText(
                                            text: localizations
                                                .get('employee_id'),
                                            isRequired: false),
                                        const SizedBox(height: 3),
                                        TextFormField(
                                          controller: employeeIdController,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            errorStyle: const TextStyle(
                                                height: 0, fontSize: 0),
                                            isDense: true,
                                          ),
                                          readOnly: isLoading,
                                        ).asGradientBox(context,
                                            hasError: false),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    flex: 6,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RequiredLabelText(
                                            text: localizations
                                                .get('place_of_posting'),
                                            isRequired: false),
                                        const SizedBox(height: 3),
                                        TextFormField(
                                          controller: placeOfPostingController,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            errorStyle: const TextStyle(
                                                height: 0, fontSize: 0),
                                            isDense: true,
                                          ),
                                          readOnly: isLoading,
                                        ).asGradientBox(context,
                                            hasError: false),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              RequiredLabelText(
                                  text: localizations.get('salary_range'),
                                  isRequired: false),
                              const SizedBox(height: 3),
                              BlocBuilder<GetPersonalDetailsBloc,
                                  GetPersonalDetailsState>(
                                builder: (context, state) {
                                  if (state is PersonalDetailsLoaded) {
                                    return DropdownButtonFormField<int>(
                                      borderRadius: BorderRadius.circular(5),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        errorStyle: const TextStyle(
                                            height: 0, fontSize: 0),
                                        isDense: true,
                                      ),
                                      style: theme.textTheme.labelMedium,
                                      initialValue: selectedSalaryRange?.id,
                                      items: state.salaryRangeList
                                              ?.map((e) => DropdownMenuItem(
                                                  value: e.id,
                                                  child: Text(
                                                      "${e.minSalary} - ${e.maxSalary}")))
                                              .toList() ??
                                          [],
                                      onChanged: (value) {
                                        if (value != null) {
                                          final selected =
                                              state.salaryRangeList?.firstWhere(
                                            (element) => element.id == value,
                                          );
                                          setState(() =>
                                              selectedSalaryRange = selected);
                                        }
                                      },
                                    ).asGradientBox(
                                      context,
                                      hasError: false,
                                    );
                                  }
                                  return TextFormField(
                                    readOnly: isLoading,
                                    controller: TextEditingController(),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ).asGradientBox(context, hasError: false);
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              RequiredLabelText(
                                  text: "Office Address", isRequired: false),
                              const SizedBox(height: 3),
                              TextFormField(
                                controller: officeAddressController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                ),
                                readOnly: isLoading,
                              ).asGradientBox(context, hasError: false),
                              const SizedBox(height: 32),
                              SizedBox(
                                width: double.infinity,
                                child: GradientButton(
                                  isDarkMode: isDarkMode,
                                  onPressed: isLoading
                                      ? null
                                      : () {
                                          setState(() => _formSubmitted = true);

                                          debugPrint(
                                              "______________SAVE BUTTON PRESSED____________");

                                          // Check occupation state to get selected values
                                          final occupationState = context
                                              .read<GetOccupationDetailsBloc>()
                                              .state;

                                          debugPrint(
                                              "Occupation state type: ${occupationState.runtimeType}");

                                          if (occupationState
                                              is! GetOccupationDetailsData) {
                                            showErrorSnackBar(context,
                                                'Error: Occupation data not available');
                                            return;
                                          }

                                          final selectedOccupation =
                                              occupationState
                                                  .selectedOccupation;
                                          final selectedSourceFund =
                                              occupationState
                                                  .selectedSourceFund;
                                          if (selectedOccupation == null) {
                                            showErrorSnackBar(context,
                                                'Please select an occupation');
                                            return;
                                          }

                                          if (selectedSourceFund == null) {
                                            showErrorSnackBar(context,
                                                'Please select a source of fund');
                                            return;
                                          }

                                          if (widget.refNum.isEmpty) {
                                            showErrorSnackBar(context,
                                                'Invalid reference number');
                                            return;
                                          }

                                          try {
                                            final model =
                                                RegisterOccupationModel(
                                              refNumber: widget.refNum,
                                              sourceOfFund:
                                                  selectedSourceFund.id,
                                              occupation: selectedOccupation.id,
                                              // Keep these minimal for testing
                                              officePhoneNumber: '',
                                              netWorth: 1,
                                            );
                                            context
                                                .read<RegisterOccupationBloc>()
                                                .add(RegisterOccupationEvent
                                                    .register(
                                                  occupation: model,
                                                ));
                                          } catch (e) {
                                            debugPrint(
                                                "______________ERROR CREATING MODEL____________");
                                            debugPrint("Error: $e");
                                            showErrorSnackBar(context,
                                                'Error preparing form data: $e');
                                          }
                                        },
                                  child: Text(localizations.get('save')),
                                ),
                              ),
                              const SizedBox(height: 32),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
