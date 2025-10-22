import '../../../core/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/usecase/textformfield/constants.dart';
import '../../../core/widgets/error_snackbar.dart';
import '../../../core/widgets/gradient_button.dart';
import '../../../core/widgets/required_label_text.dart';
import '../../../core/usecase/textformfield/cubit.dart';
import '../bloc/get_personal_details/get_personal_details_bloc.dart';
import '../bloc/get_personal_details/get_personal_details_event.dart';
import '../cubit/id_cad_form_cubit.dart';

class IdCardDetailsScreen extends StatelessWidget {
  const IdCardDetailsScreen({
    super.key,
    this.firstName,
    this.middleName,
    this.lastName,
    this.dateOfBirth,
    this.idNumber,
    this.fin,
    this.dateOfIssue,
    this.dateOfExpiry,
    this.nationality,
    this.sex,
    required this.refNum,
    required this.customerTypeId,
  });

  final String? firstName;
  final String? middleName;
  final String? lastName;
  final String? dateOfBirth;
  final String? idNumber;
  final String? fin;
  final String? dateOfIssue;
  final String? dateOfExpiry;
  final String? nationality;
  final String? sex;
  final String refNum;
  final int customerTypeId;

  // Parse date from dd-mm-yyyy format
  DateTime? _parseDate(String? dateString) {
    if (dateString == null || dateString.isEmpty) return null;
    try {
      final parts = dateString.split('-');
      if (parts.length == 3) {
        final day = int.parse(parts[0]);
        final month = int.parse(parts[1]);
        final year = int.parse(parts[2]);

        // Validate the date components
        if (day < 1 || day > 31 || month < 1 || month > 12 || year < 1900) {
          return null;
        }

        return DateTime(year, month, day);
      }
    } catch (e) {
      debugPrint('Error parsing date: $e');
    }
    return null;
  }

  // Format date to dd-mm-yyyy
  String _formatDate(DateTime date) {
    return DateFormat('dd-MM-yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    // Initialize the controller cubit is already done at app level
    context.read<TextFormFieldControllerManagerCubit>();

    // Provide the date selection cubit
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => IdCardDateSelectionCubit({
            'dateOfBirth': _parseDate(dateOfBirth),
            'dateOfIssue': _parseDate(dateOfIssue),
            'dateOfExpiry': _parseDate(dateOfExpiry),
          }),
        ),
        BlocProvider(
          create: (_) => IdCardFormValidationCubit(),
        ),
      ],
      child: _IdCardDetailsScreenContent(
        firstName: firstName,
        middleName: middleName,
        lastName: lastName,
        dateOfBirth: dateOfBirth,
        idNumber: idNumber,
        fin: fin,
        dateOfIssue: dateOfIssue,
        dateOfExpiry: dateOfExpiry,
        nationality: nationality,
        sex: sex,
        refNum: refNum,
        customerTypeId: customerTypeId,
        formatDate: _formatDate,
      ),
    );
  }
}

class _IdCardDetailsScreenContent extends StatelessWidget {
  _IdCardDetailsScreenContent({
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.dateOfBirth,
    required this.idNumber,
    required this.fin,
    required this.dateOfIssue,
    required this.dateOfExpiry,
    required this.nationality,
    required this.sex,
    required this.refNum,
    required this.customerTypeId,
    required this.formatDate,
  });

  final String? firstName;
  final String? middleName;
  final String? lastName;
  final String? dateOfBirth;
  final String? idNumber;
  final String? fin;
  final String? dateOfIssue;
  final String? dateOfExpiry;
  final String? nationality;
  final String? sex;
  final String refNum;
  final int customerTypeId;
  final String Function(DateTime) formatDate;

  final _formKey = GlobalKey<FormState>();

  void _showDatePicker({
    required BuildContext context,
    required String title,
    required String dateKey,
    DateTime? initialDate,
    DateTime? firstDate,
    DateTime? lastDate,
  }) {
    final dateCubit = context.read<IdCardDateSelectionCubit>();
    final now = DateTime.now();

    initialDate ??= dateCubit.getDate(dateKey) ?? now;
    firstDate ??= DateTime(1900);
    lastDate ??= DateTime(now.year + 50);

    // Ensure initialDate is not before firstDate
    if (initialDate.isBefore(firstDate)) {
      initialDate = firstDate;
    }

    // Ensure initialDate is not after lastDate
    if (initialDate.isAfter(lastDate)) {
      initialDate = lastDate;
    }

    DateTime tempSelectedDate = initialDate;

    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('Cancel'),
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  TextButton(
                    onPressed: () {
                      // Update the date in the cubit
                      dateCubit.setDate(dateKey, tempSelectedDate);

                      // Update text controller
                      final controllerCubit =
                          context.read<TextFormFieldControllerManagerCubit>();
                      final controller =
                          _getControllerForDateKey(controllerCubit, dateKey);
                      if (controller != null) {
                        controller.text = formatDate(tempSelectedDate);
                      }

                      Navigator.pop(context);
                    },
                    child: Text('Done'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: initialDate,
                minimumDate: firstDate,
                maximumDate: lastDate,
                onDateTimeChanged: (DateTime newDate) {
                  tempSelectedDate = newDate;
                },
              ),
            ),
            SizedBox(height: 16),
          ],
        );
      },
    );
  }

  TextEditingController? _getControllerForDateKey(
      TextFormFieldControllerManagerCubit controllerCubit, String dateKey) {
    switch (dateKey) {
      case 'dateOfBirth':
        return controllerCubit
            .getController(TextFormFieldConstants.kDateOfBirth);
      case 'dateOfIssue':
        return controllerCubit
            .getController(TextFormFieldConstants.kDateOfIssue);
      case 'dateOfExpiry':
        return controllerCubit
            .getController(TextFormFieldConstants.kDateOfExpiry);
      default:
        return null;
    }
  }

  Widget _buildDateField({
    required BuildContext context,
    required String label,
    required bool isRequired,
    required String dateKey,
    DateTime? firstDate,
    DateTime? lastDate,
    String? errorText,
  }) {
    final theme = Theme.of(context);
    final controllerCubit = context.read<TextFormFieldControllerManagerCubit>();
    final controller = _getControllerForDateKey(controllerCubit, dateKey)!;
    final isSubmitted = context.watch<IdCardFormValidationCubit>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RequiredLabelText(text: label, isRequired: isRequired),
        const SizedBox(height: 3),
        InkWell(
          onTap: () {
            _showDatePicker(
              context: context,
              title: label,
              dateKey: dateKey,
              firstDate: firstDate,
              lastDate: lastDate,
            );
          },
          child: Container(
            height: 56,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  controller.text.isEmpty ? 'DD-MM-YYYY' : controller.text,
                  style: controller.text.isEmpty
                      ? theme.textTheme.bodyLarge
                          ?.copyWith(color: theme.hintColor)
                      : theme.textTheme.bodyLarge,
                ),
                Icon(Icons.calendar_today, size: 20),
              ],
            ),
          ).asGradientBox(context,
              hasError: isSubmitted && isRequired && controller.text.isEmpty),
        ),
      ],
    );
  }

  String? _validateRequired(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
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
    final isSubmitted = context.watch<IdCardFormValidationCubit>().state;

    // Initialize controllers on first build
    final controllerCubit =
        context.watch<TextFormFieldControllerManagerCubit>();

    // Initialize controllers if they don't exist
    _initializeControllers(context);

    // Get the controllers
    final firstNameController =
        controllerCubit.getController(TextFormFieldConstants.kFirstName)!;
    final middleNameController =
        controllerCubit.getController(TextFormFieldConstants.kMiddleName)!;
    final lastNameController =
        controllerCubit.getController(TextFormFieldConstants.kLastName)!;
    final dateOfBirthController =
        controllerCubit.getController(TextFormFieldConstants.kDateOfBirth)!;
    final idNumberController =
        controllerCubit.getController(TextFormFieldConstants.kIdNumber)!;
    final finController =
        controllerCubit.getController(TextFormFieldConstants.kFin)!;
    final dateOfIssueController =
        controllerCubit.getController(TextFormFieldConstants.kDateOfIssue)!;
    final dateOfExpiryController =
        controllerCubit.getController(TextFormFieldConstants.kDateOfExpiry)!;

    // Log the date values for debugging
    debugPrint('Date of Birth: ${dateOfBirthController.text}');
    debugPrint('Date of Issue: ${dateOfIssueController.text}');
    debugPrint('Date of Expiry: ${dateOfExpiryController.text}');

    Widget buildFormField({
      required TextEditingController controller,
      String? Function(String?)? validator,
      TextInputType? keyboardType,
      String? hintText,
      TextInputAction? textInputAction,
      Function(String)? onSubmitted,
    }) {
      return SizedBox(
        height: 56,
        child: TextFormField(
          controller: controller,
          validator: validator,
          keyboardType: keyboardType,
          style: theme.textTheme.bodyLarge,
          textInputAction: textInputAction ?? TextInputAction.next,
          onFieldSubmitted: onSubmitted,
          decoration: InputDecoration(
            errorStyle: const TextStyle(
                height: 0, fontSize: 0, color: Colors.transparent),
            contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            isDense: true,
            border: InputBorder.none,
            hintText: hintText,
          ),
        ).asGradientBox(
          context,
          hasError: isSubmitted &&
              validator != null &&
              validator(controller.text) != null,
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        // Dismiss keyboard when tapping outside of text fields
        FocusScope.of(context).unfocus();
      },
      child: Container(
        decoration: AppThemes.scaffoldBackgroundDecoration(
            isDark: isDarkMode, isPrimary: true),
        child: Scaffold(
          resizeToAvoidBottomInset: true, // Resize to avoid keyboard overlap
          appBar: AppBar(),
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      localizations.get('identity_details'),
                      style: theme.textTheme.displayMedium,
                    ),
                    Text(
                      localizations.get('identity_details_description'),
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 30),
                    RequiredLabelText(
                        text: localizations.get('first_name'),
                        isRequired: true),
                    const SizedBox(height: 3),
                    buildFormField(
                      controller: firstNameController,
                      validator: _validateRequired,
                      onSubmitted: (_) => FocusScope.of(context).nextFocus(),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              RequiredLabelText(
                                  text: localizations.get('middle_name'),
                                  isRequired: false),
                              const SizedBox(height: 3),
                              buildFormField(
                                controller: middleNameController,
                                onSubmitted: (_) =>
                                    FocusScope.of(context).nextFocus(),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          flex: 3,
                          child: Column(
                            children: [
                              RequiredLabelText(
                                  text: localizations.get('last_name'),
                                  isRequired: true),
                              const SizedBox(height: 3),
                              buildFormField(
                                controller: lastNameController,
                                validator: _validateRequired,
                                onSubmitted: (_) =>
                                    FocusScope.of(context).nextFocus(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    _buildDateField(
                      context: context,
                      label: localizations.get('date_of_birth'),
                      isRequired: true,
                      dateKey: 'dateOfBirth',
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                      errorText:
                          isSubmitted && dateOfBirthController.text.isEmpty
                              ? 'Date of birth is required'
                              : null,
                    ),
                    const SizedBox(height: 15),
                    RequiredLabelText(
                        text: localizations.get('id_number'), isRequired: true),
                    const SizedBox(height: 3),
                    buildFormField(
                      controller: idNumberController,
                      validator: _validateRequired,
                      keyboardType: TextInputType.number,
                      onSubmitted: (_) => FocusScope.of(context).nextFocus(),
                    ),
                    const SizedBox(height: 15),
                    RequiredLabelText(
                        text: localizations.get('id_number'),
                        isRequired: false),
                    const SizedBox(height: 3),
                    buildFormField(
                      controller: finController,
                      keyboardType: TextInputType.number,
                      onSubmitted: (_) => FocusScope.of(context).nextFocus(),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          child: _buildDateField(
                            context: context,
                            label: localizations.get('date_of_issue'),
                            isRequired: true,
                            dateKey: 'dateOfIssue',
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                            errorText: isSubmitted &&
                                    dateOfIssueController.text.isEmpty
                                ? 'Date of issue is required'
                                : null,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _buildDateField(
                            context: context,
                            label: localizations.get('date_of_expiry'),
                            isRequired: true,
                            dateKey: 'dateOfExpiry',
                            firstDate: DateTime.now(),
                            lastDate: DateTime(DateTime.now().year + 50),
                            errorText: isSubmitted &&
                                    dateOfExpiryController.text.isEmpty
                                ? 'Date of expiry is required'
                                : null,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 35,
              right: 35,
              top: 5,
            ),
            child: BottomAppBar(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: GradientButton(
                  onPressed: () => _handleSubmit(context),
                  isDarkMode: isDarkMode,
                  child: Text(localizations.get('next')),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _initializeControllers(BuildContext context) {
    final controllerCubit = context.read<TextFormFieldControllerManagerCubit>();

    // Check if controllers exist, if not, initialize them
    if (controllerCubit.getController(TextFormFieldConstants.kFirstName) ==
        null) {
      controllerCubit.addController(TextFormFieldConstants.kFirstName,
          TextEditingController(text: firstName));
    }

    if (controllerCubit.getController(TextFormFieldConstants.kMiddleName) ==
        null) {
      controllerCubit.addController(TextFormFieldConstants.kMiddleName,
          TextEditingController(text: middleName));
    }

    if (controllerCubit.getController(TextFormFieldConstants.kLastName) ==
        null) {
      controllerCubit.addController(TextFormFieldConstants.kLastName,
          TextEditingController(text: lastName));
    }

    if (controllerCubit.getController(TextFormFieldConstants.kDateOfBirth) ==
        null) {
      controllerCubit.addController(TextFormFieldConstants.kDateOfBirth,
          TextEditingController(text: dateOfBirth));
    }

    if (controllerCubit.getController(TextFormFieldConstants.kIdNumber) ==
        null) {
      controllerCubit.addController(TextFormFieldConstants.kIdNumber,
          TextEditingController(text: idNumber));
    }

    if (controllerCubit.getController(TextFormFieldConstants.kFin) == null) {
      controllerCubit.addController(
          TextFormFieldConstants.kFin, TextEditingController(text: fin));
    }

    if (controllerCubit.getController(TextFormFieldConstants.kDateOfIssue) ==
        null) {
      controllerCubit.addController(TextFormFieldConstants.kDateOfIssue,
          TextEditingController(text: dateOfIssue));
    }

    if (controllerCubit.getController(TextFormFieldConstants.kDateOfExpiry) ==
        null) {
      controllerCubit.addController(TextFormFieldConstants.kDateOfExpiry,
          TextEditingController(text: dateOfExpiry));
    }

    if (controllerCubit.getController(TextFormFieldConstants.kNationality) ==
        null) {
      controllerCubit.addController(TextFormFieldConstants.kNationality,
          TextEditingController(text: nationality));
    }
  }

  bool _areRequiredFieldsFilled(BuildContext context) {
    final controllerCubit = context.read<TextFormFieldControllerManagerCubit>();
    final firstNameController =
        controllerCubit.getController(TextFormFieldConstants.kFirstName)!;
    final lastNameController =
        controllerCubit.getController(TextFormFieldConstants.kLastName)!;
    final idNumberController =
        controllerCubit.getController(TextFormFieldConstants.kIdNumber)!;
    final dateOfBirthController =
        controllerCubit.getController(TextFormFieldConstants.kDateOfBirth)!;
    final dateOfIssueController =
        controllerCubit.getController(TextFormFieldConstants.kDateOfIssue)!;
    final dateOfExpiryController =
        controllerCubit.getController(TextFormFieldConstants.kDateOfExpiry)!;

    return firstNameController.text.isNotEmpty &&
        lastNameController.text.isNotEmpty &&
        idNumberController.text.isNotEmpty &&
        dateOfBirthController.text.isNotEmpty &&
        dateOfIssueController.text.isNotEmpty &&
        dateOfExpiryController.text.isNotEmpty;
  }

  void _handleSubmit(BuildContext context) {
    final localizations =
        AppLocalizations(context.read<LanguageBloc>().state.maybeWhen(
              loaded: (locale) => locale,
              orElse: () => const Locale('en'),
            ));

    // Set form submitted state
    context.read<IdCardFormValidationCubit>().setFormSubmitted(true);

    if (!_areRequiredFieldsFilled(context)) {
      showErrorSnackBar(
          context, localizations.get('please_fill_in_all_required_fields'));
      return;
    }

    if (!_formKey.currentState!.validate()) return;

    final now = DateTime.now();
    final dateCubit = context.read<IdCardDateSelectionCubit>();
    final controllerCubit = context.read<TextFormFieldControllerManagerCubit>();

    final _selectedDateOfBirth = dateCubit.getDate('dateOfBirth');
    final _selectedDateOfIssue = dateCubit.getDate('dateOfIssue');
    final _selectedDateOfExpiry = dateCubit.getDate('dateOfExpiry');

    final dateOfBirthController =
        controllerCubit.getController(TextFormFieldConstants.kDateOfBirth)!;
    final dateOfIssueController =
        controllerCubit.getController(TextFormFieldConstants.kDateOfIssue)!;
    final dateOfExpiryController =
        controllerCubit.getController(TextFormFieldConstants.kDateOfExpiry)!;

    // Validate date of birth
    if (dateOfBirthController.text.isNotEmpty) {
      if (_selectedDateOfBirth == null) {
        showErrorSnackBar(
            context, localizations.get('please_select_a_valid_date_of_birth'));
        return;
      }

      // Check if date of birth is in the past
      if (_selectedDateOfBirth.isAfter(now)) {
        showErrorSnackBar(
            context, localizations.get('date_of_birth_must_be_in_the_past'));
        return;
      }
    }

    // Validate date of issue
    if (dateOfIssueController.text.isNotEmpty) {
      if (_selectedDateOfIssue == null) {
        showErrorSnackBar(
            context, localizations.get('please_select_a_valid_date_of_issue'));
        return;
      }

      // Check if date of issue is not in the future
      if (_selectedDateOfIssue.isAfter(now)) {
        showErrorSnackBar(context,
            localizations.get('date_of_issue_cannot_be_in_the_future'));
        return;
      }

      // Verify date of issue is not before date of birth
      if (_selectedDateOfBirth != null &&
          _selectedDateOfIssue.isBefore(_selectedDateOfBirth)) {
        showErrorSnackBar(context,
            localizations.get('date_of_issue_cannot_be_before_date_of_birth'));
        return;
      }
    } else {
      showErrorSnackBar(
          context, localizations.get('please_enter_date_of_issue'));
      return;
    }

    // Validate date of expiry
    if (dateOfExpiryController.text.isNotEmpty) {
      if (_selectedDateOfExpiry == null) {
        showErrorSnackBar(
            context, localizations.get('please_select_a_valid_date_of_expiry'));
        return;
      }

      // Check if expiry date is in the future
      if (_selectedDateOfExpiry.isBefore(now)) {
        showErrorSnackBar(
            context, localizations.get('date_of_expiry_must_be_in_the_future'));
        return;
      }

      // Verify expiry date is after date of issue
      if (_selectedDateOfExpiry.isBefore(_selectedDateOfIssue)) {
        showErrorSnackBar(context,
            localizations.get('date_of_expiry_must_be_after_date_of_issue'));
        return;
      }
    }

    // Pre-fetch gender, religion, category, disability, and qualification data
    try {
      final bloc = context.read<GetPersonalDetailsBloc>();
      if (!bloc.isClosed) {
        bloc.add(GetPersonalDetailsEvent.fetchGenderList());
        bloc.add(GetPersonalDetailsEvent.fetchReligionList());
        bloc.add(GetPersonalDetailsEvent.fetchCategoryList());
        bloc.add(GetPersonalDetailsEvent.fetchDisabilityList());
        bloc.add(GetPersonalDetailsEvent.fetchQualificationList());
      }
    } catch (e) {
      debugPrint('Error adding events to GetPersonalDetailsBloc: $e');
    }

    final firstNameController =
        controllerCubit.getController(TextFormFieldConstants.kFirstName)!;
    final middleNameController =
        controllerCubit.getController(TextFormFieldConstants.kMiddleName)!;
    final lastNameController =
        controllerCubit.getController(TextFormFieldConstants.kLastName)!;
    final idNumberController =
        controllerCubit.getController(TextFormFieldConstants.kIdNumber)!;
    final finController =
        controllerCubit.getController(TextFormFieldConstants.kFin)!;

    // Navigate to personal details screen
    context.navigateTo(RouteConstants.personalDetails,
        arguments: PersonalDetailsArguments(
            refNum: refNum,
            customerTypeId: customerTypeId,
            firstName: firstNameController.text,
            middleName: middleNameController.text,
            lastName: lastNameController.text,
            documentId: idNumberController.text,
            optionalDocId: finController.text,
            dob: dateOfBirthController.text,
            dateOfExpiry: dateOfExpiryController.text,
            dateOfIssue: dateOfIssueController.text));
  }
}
