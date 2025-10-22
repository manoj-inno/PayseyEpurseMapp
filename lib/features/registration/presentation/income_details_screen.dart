import 'dart:developer';

import '../../../core/routing/routing.dart';
import '../../../core/util/customer_type_identifier.dart';
import '../../../core/widgets/gradient_button.dart';
import '../../../core/widgets/server_down_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/injection/injection_container.dart' as di;
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/error_snackbar.dart';
import '../../../core/widgets/required_label_text.dart';
import '../bloc/get_personal_details/get_personal_details_bloc.dart';
import '../bloc/get_personal_details/get_personal_details_event.dart';
import '../bloc/register2_kyc/register_kyc_bloc.dart';
import '../domain/get_personal_details/entities/salary_range_entity.dart';
import '../data/register2_kyc/models/register_kyc_model.dart';

class IncomeDetailsScreen extends StatefulWidget {
  const IncomeDetailsScreen(
      {super.key,
      required this.customerTypeId,
      required this.refNum,
      required this.firstName,
      required this.middleName,
      required this.lastName,
      required this.nationality,
      required this.documentId,
      required this.optionalDocId,
      required this.dob,
      required this.dateOfExpiry,
      required this.dateOfIssue,
      required this.religion,
      required this.category,
      required this.gender,
      required this.maritalStatus,
      required this.disability,
      required this.qualification});
  final int customerTypeId;
  final String refNum;
  final String firstName;
  final String? middleName;
  final String lastName;
  final int nationality;
  final String documentId;
  final String? optionalDocId;
  final String dob;
  final String dateOfExpiry;
  final String dateOfIssue;
  final int religion;
  final int category;
  final int gender;
  final String maritalStatus;
  final int disability;
  final int qualification;

  @override
  State<IncomeDetailsScreen> createState() => _IncomeDetailsScreenState();
}

class _IncomeDetailsScreenState extends State<IncomeDetailsScreen> {
  SalaryRangeEntity? selectedSalaryRange;
  final _panController = TextEditingController();
  final _netWorthController = TextEditingController();
  bool _formSubmitted = false;

  @override
  void dispose() {
    _panController.dispose();
    _netWorthController.dispose();
    super.dispose();
  }

  String? _validatePAN(String? value) {
    if (value == null || value.isEmpty) {
      return 'PAN number is required';
    }
    return null;
  }

  String? _validateNetWorth(String? value) {
    if (value == null || value.isEmpty) {
      return 'Net worth is required';
    }
    if (double.tryParse(value) == null) {
      return 'Please enter a valid amount';
    }
    return null;
  }

  String? _validateSalaryRange() {
    if (selectedSalaryRange == null) {
      return 'Please select annual income range';
    }
    return null;
  }

  void _handleSubmit() {
    setState(() => _formSubmitted = true);

    if (_validatePAN(_panController.text) != null ||
        _validateNetWorth(_netWorthController.text) != null ||
        _validateSalaryRange() != null) {
      return;
    }
    context.read<RegisterKycBloc>().add(RegisterKycEvent.initiateRegisterKyc(
          request: RegisterKycRequestModel(
            regRef: widget.refNum,
            firstName: widget.firstName,
            middleName: widget.middleName ?? '',
            lastName: widget.lastName,
            nationality: widget.nationality,
            documentId: widget.documentId,
            optionalDocId: widget.optionalDocId ?? '',
            dob: widget.dob,
            dateOfExpiry: widget.dateOfExpiry,
            dateOfIssue: widget.dateOfIssue,
            panIdNumber: _panController.text,
            netWorth: double.parse(_netWorthController.text).toInt(),
            annualIncome: selectedSalaryRange?.id ?? 0,
            religion: widget.religion,
            category: widget.category,
            gender: widget.gender,
            maritalStatus: widget.maritalStatus,
            disability: widget.disability,
            qualification: widget.qualification,
          ),
        ));
  }

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
      create: (context) => di.sl<GetPersonalDetailsBloc>()
        ..add(GetPersonalDetailsEvent.fetchSalaryRangeList()),
      child: Container(
        decoration: AppThemes.scaffoldBackgroundDecoration(
            isDark: isDarkMode, isPrimary: true),
        child: Scaffold(
          appBar: AppBar(),
          body: BlocListener<RegisterKycBloc, RegisterKycState>(
            listener: (context, state) {
              state.maybeWhen(
                success: (registerKyc) {
                  log("______________REGISTER KYC RESPONSE____________");
                  log("registerKyc: $registerKyc");
                  if (registerKyc.userType ==
                      CustomerTypeIdentifier.individual.value) {
                    context.navigateTo(
                      RouteConstants.occupation,
                      arguments: OccupationArguments(
                        refNum: registerKyc.regRef,
                        customerTypeId: registerKyc.userType,
                      ),
                    );
                  } else {
                    context.navigateTo(
                      RouteConstants.businessDetails,
                      arguments: BusinessDetailsArguments(
                        refNum: registerKyc.regRef,
                        customerTypeId: registerKyc.userType,
                      ),
                    );
                  }
                },
                serverDown: (message) {
                  showDialog(
                    context: context,
                    builder: (context) => ServerDownDialog(message: message),
                  );
                },
                error: (message) {
                  showErrorSnackBar(context, message);
                },
                orElse: () {},
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      localizations.get('income_details'),
                      style: theme.textTheme.displayMedium,
                    ),
                    Text(
                      localizations.get('please_enter_your_income_details'),
                      style: theme.textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 30),
                    RequiredLabelText(
                        text: localizations.get('pan_number'),
                        isRequired: true),
                    const SizedBox(height: 3),
                    TextFormField(
                      controller: _panController,
                      textCapitalization: TextCapitalization.characters,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        errorStyle: const TextStyle(height: 0, fontSize: 0),
                        isDense: true,
                      ),
                    ).asGradientBox(
                      context,
                      hasError: _formSubmitted &&
                          _validatePAN(_panController.text) != null,
                    ),
                    const SizedBox(height: 15),
                    RequiredLabelText(
                        text: localizations.get('net_worth'), isRequired: true),
                    const SizedBox(height: 3),
                    TextFormField(
                      controller: _netWorthController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.currency_rupee),
                        border: InputBorder.none,
                        errorStyle: const TextStyle(height: 0, fontSize: 0),
                        isDense: true,
                      ),
                    ).asGradientBox(
                      context,
                      hasError: _formSubmitted &&
                          _validateNetWorth(_netWorthController.text) != null,
                    ),
                    const SizedBox(height: 15),
                    RequiredLabelText(
                        text: localizations.get('annual_income'),
                        isRequired: true),
                    const SizedBox(height: 3),
                    BlocBuilder<GetPersonalDetailsBloc,
                        GetPersonalDetailsState>(
                      builder: (context, state) {
                        if (state is PersonalDetailsLoaded) {
                          return DropdownButtonFormField<SalaryRangeEntity>(
                            borderRadius: BorderRadius.circular(5),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              errorStyle:
                                  const TextStyle(height: 0, fontSize: 0),
                              isDense: true,
                            ),
                            style: theme.textTheme.labelMedium,
                            value: selectedSalaryRange,
                            items: state.salaryRangeList
                                    ?.map((e) => DropdownMenuItem<
                                            SalaryRangeEntity>(
                                        value: e,
                                        child: Text(
                                            "${e.minSalary} - ${e.maxSalary}")))
                                    .toList() ??
                                [],
                            onChanged: (sourceFund) {
                              if (sourceFund != null) {
                                setState(() {
                                  selectedSalaryRange = sourceFund;
                                });
                              }
                            },
                          ).asGradientBox(
                            context,
                            hasError: _formSubmitted &&
                                _validateSalaryRange() != null,
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: GradientButton(
                  onPressed: _handleSubmit,
                  isDarkMode: isDarkMode,
                  child: BlocBuilder<RegisterKycBloc, RegisterKycState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () => const SizedBox(
                          height: 30,
                          width: 30,
                          child: CircularProgressIndicator(),
                        ),
                        orElse: () => Text(localizations.get('next')),
                      );
                    },
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
