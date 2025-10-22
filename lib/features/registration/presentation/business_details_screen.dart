import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/injection/injection_container.dart' as di;
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/routing/routing.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/error_snackbar.dart';
import '../../../core/widgets/gradient_button.dart';
import '../../../core/widgets/required_label_text.dart';
import '../../../core/widgets/server_down_dialog.dart';
import '../bloc/address_management/address_management_bloc.dart';
import '../bloc/get_business_details/get_business_details_bloc.dart';
import '../bloc/get_business_details/get_business_details_event.dart';
import '../bloc/get_business_details/get_business_details_state.dart';
import '../bloc/register7_business_details/register_business_details_bloc.dart';
import '../data/register7_business_details/register_business_details_model.dart';

class BusinessDetailsScreen extends StatefulWidget {
  const BusinessDetailsScreen(
      {super.key, required this.refNum, required this.customerTypeId});

  final String refNum;
  final int customerTypeId;

  @override
  State<BusinessDetailsScreen> createState() => _BusinessDetailsScreenState();
}

class _BusinessDetailsScreenState extends State<BusinessDetailsScreen> {
  late final TextEditingController dateOfIncorporationController;
  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController tinNumberController = TextEditingController();
  int? selectedTurnover;
  int? selectedBusinessType;
  bool _formSubmitted = false;

  @override
  void initState() {
    super.initState();
    dateOfIncorporationController = TextEditingController();

    // Add listener for date formatting
    dateOfIncorporationController
        .addListener(() => _formatDateInput(dateOfIncorporationController));
  }

  @override
  void dispose() {
    dateOfIncorporationController.dispose();
    super.dispose();
  }

  // Format date input by automatically adding hyphens
  void _formatDateInput(TextEditingController controller) {
    final text = controller.text;
    final selection = controller.selection;

    // Skip if change is not from user input
    if (selection.baseOffset != text.length) return;

    String newText = text;

    // Add hyphen after day (position 2)
    if (text.length == 2 && !text.contains('-')) {
      newText = '$text-';
    }
    // Add hyphen after month (position 5)
    else if (text.length == 5 &&
        text.indexOf('-') == 2 &&
        !text.substring(3).contains('-')) {
      newText = '$text-';
    }

    if (newText != text) {
      controller.text = newText;
      controller.selection = TextSelection.collapsed(offset: newText.length);
    }
  }

  String? _validateDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Date is required';
    }
    final dateRegex = RegExp(r'^\d{2}-\d{2}-\d{4}$');
    if (!dateRegex.hasMatch(value)) {
      return 'Please enter date in DD-MM-YYYY format';
    }
    return null;
  }

  bool _isValidDate(String date) {
    final parts = date.split('-');
    if (parts.length != 3) return false;

    try {
      final day = int.parse(parts[0]);
      final month = int.parse(parts[1]);
      final year = int.parse(parts[2]);

      if (month < 1 || month > 12) return false;
      if (day < 1 || day > 31) return false;

      // Check for months with 30 days
      if ([4, 6, 9, 11].contains(month) && day > 30) return false;

      // Check for February
      if (month == 2) {
        final isLeapYear =
            (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
        if (day > (isLeapYear ? 29 : 28)) return false;
      }

      return true;
    } catch (e) {
      return false;
    }
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
      create: (context) {
        final bloc = di.sl<GetBusinessDetailsBloc>();
        // Add events sequentially with a small delay
        Future.microtask(() {
          bloc.add(GetBusinessDetailsEvent.fetchBusinessTypes());
          bloc.add(GetBusinessDetailsEvent.fetchTurnovers());
        });
        return bloc;
      },
      child: Container(
        decoration: AppThemes.scaffoldBackgroundDecoration(
            isDark: isDarkMode, isPrimary: true),
        child: Scaffold(
          appBar: AppBar(),
          body: BlocListener<RegisterBusinessDetailsBloc,
              RegisterBusinessDetailsState>(
            listener: (context, state) {
              if (state is RegisterBusinessDetailsLoaded) {
                try {
                  final bloc = context.read<AddressManagementBloc>();
                  if (!bloc.isClosed) {
                    bloc.add(ClearAllAddresses(refNumber: widget.refNum));
                  }
                } catch (e) {
                  debugPrint('Error adding ClearAllAddresses event: $e');
                }
                context.navigateTo(RouteConstants.businessAddress,
                    arguments: BusinessAddressArguments(
                        refNumber: widget.refNum,
                        customerTypeId: widget.customerTypeId));
              } else if (state is RegisterBusinessDetailsError) {
                showErrorSnackBar(context, state.message);
              } else if (state is RegisterBusinessDetailsServerDown) {
                showDialog(
                    context: context,
                    builder: (context) =>
                        ServerDownDialog(message: state.message));
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Business Details",
                    style: theme.textTheme.displayMedium,
                  ),
                  Text(
                    "Please fill in the following details",
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RequiredLabelText(text: "Company Name", isRequired: true),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: companyNameController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ).asGradientBox(context),
                  const SizedBox(
                    height: 10,
                  ),
                  RequiredLabelText(text: "Business Sector", isRequired: true),
                  const SizedBox(
                    height: 5,
                  ),
                  BlocBuilder<GetBusinessDetailsBloc, GetBusinessDetailsState>(
                    builder: (context, state) {
                      if (state is GetBusinessTypesSuccess ||
                          state is GetBusinessAndTurnoversSuccess) {
                        final businessTypes = state is GetBusinessTypesSuccess
                            ? state.businessTypes
                            : (state as GetBusinessAndTurnoversSuccess)
                                .businessTypes;

                        return DropdownButtonFormField<String>(
                          isDense: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                          ),
                          borderRadius: BorderRadius.circular(5),
                          menuMaxHeight:
                              MediaQuery.of(context).size.height * 0.5,
                          isExpanded: true,
                          items: businessTypes
                              .map((business) => DropdownMenuItem<String>(
                                    value: business.id.toString(),
                                    child: Container(
                                      constraints: BoxConstraints(
                                        maxWidth:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                      ),
                                      child: Text(
                                        business.businessName,
                                        style: theme.textTheme.labelMedium,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                      ),
                                    ),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedBusinessType = int.parse(value!);
                            });
                          },
                        ).asGradientBox(context);
                      } else if (state is GetBusinessTypesLoading) {
                        return TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ).asGradientBox(context);
                      } else if (state is GetTurnoversLoading) {
                        return TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ).asGradientBox(context);
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RequiredLabelText(
                                text: "Date of Incorporation",
                                isRequired: true),
                            const SizedBox(height: 5),
                            SizedBox(
                              height: 56,
                              child: TextFormField(
                                maxLength: 10,
                                controller: dateOfIncorporationController,
                                validator: _validateDate,
                                keyboardType: TextInputType.datetime,
                                style: theme.textTheme.bodyLarge,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  counterText: '',
                                  errorStyle: const TextStyle(
                                      height: 0,
                                      fontSize: 0,
                                      color: Colors.transparent),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(16, 16, 16, 16),
                                  isDense: true,
                                  border: InputBorder.none,
                                  hintText: "DD-MM-YYYY",
                                  hintStyle: theme.textTheme.bodyMedium,
                                ),
                                onChanged: (_) => setState(() {}),
                              ).asGradientBox(
                                context,
                                hasError: _formSubmitted &&
                                    _validateDate(dateOfIncorporationController
                                            .text) !=
                                        null,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RequiredLabelText(
                                text: "Turnover", isRequired: true),
                            const SizedBox(height: 5),
                            BlocBuilder<GetBusinessDetailsBloc,
                                GetBusinessDetailsState>(
                              builder: (context, state) {
                                if (state is GetTurnoversSuccess ||
                                    state is GetBusinessAndTurnoversSuccess) {
                                  final turnovers = state is GetTurnoversSuccess
                                      ? state.turnovers
                                      : (state
                                              as GetBusinessAndTurnoversSuccess)
                                          .turnovers;

                                  return DropdownButtonFormField<String>(
                                    borderRadius: BorderRadius.circular(5),
                                    isDense: true,
                                    items: turnovers
                                        .map((turnover) =>
                                            DropdownMenuItem<String>(
                                              value: turnover.id.toString(),
                                              child: Text(
                                                '${turnover.minValue.toString()} - ${turnover.maxValue.toString()}',
                                                style:
                                                    theme.textTheme.labelMedium,
                                              ),
                                            ))
                                        .toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        selectedTurnover = int.parse(value!);
                                      });
                                    },
                                    isExpanded: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                    ),
                                  ).asGradientBox(context);
                                }
                                return TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                ).asGradientBox(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RequiredLabelText(text: "TIN Number", isRequired: true),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: tinNumberController,
                    textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ).asGradientBox(context),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: GradientButton(
                isDarkMode: isDarkMode,
                onPressed: () {
                  _handleSubmit();
                },
                child: BlocBuilder<RegisterBusinessDetailsBloc,
                    RegisterBusinessDetailsState>(
                  builder: (context, state) {
                    if (state is RegisterBusinessDetailsLoading) {
                      return SizedBox(
                          width: 30,
                          height: 30,
                          child: const CircularProgressIndicator());
                    }
                    return Text(localizations.get('next'));
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleSubmit() {
    setState(() {
      _formSubmitted = true;
    });

    // Validate that required selections are made
    if (selectedBusinessType == null) {
      showErrorSnackBar(context, "Please select a business type");
      return;
    }
    if (selectedTurnover == null) {
      showErrorSnackBar(context, "Please select a turnover range");
      return;
    }

    if (dateOfIncorporationController.text.isNotEmpty) {
      if (!_isValidDate(dateOfIncorporationController.text)) {
        showErrorSnackBar(context,
            "Please enter a valid date of incorporation in DD-MM-YYYY format");
        return;
      }

      // Check if date is not in the future
      final parts = dateOfIncorporationController.text.split('-');
      final incorporationDate = DateTime(
        int.parse(parts[2]), // year
        int.parse(parts[1]), // month
        int.parse(parts[0]), // day
      );

      if (incorporationDate.isAfter(DateTime.now())) {
        showErrorSnackBar(
            context, "Date of incorporation cannot be in the future");
        return;
      }
    }
    context
        .read<RegisterBusinessDetailsBloc>()
        .add(RegisterBusinessEvent(RegisterBusinessRequestModel(
          companyName: companyNameController.text,
          businessSector: selectedBusinessType!,
          dateOfIncorporation: dateOfIncorporationController.text,
          turnOver: selectedTurnover!,
          tinNumber: tinNumberController.text,
          userRef: widget.refNum,
        )));
  }
}
