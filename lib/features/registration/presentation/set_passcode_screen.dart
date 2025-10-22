import 'package:epurse/core/util/encryption_util.dart';
import 'package:epurse/core/widgets/server_down_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/routing/routing.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/error_snackbar.dart';
import '../../../core/widgets/gradient_button.dart';
import '../bloc/register6_save_passcode/register_save_passcode_bloc.dart';

class SetPasscodeScreen extends StatefulWidget {
  final String refNumber;
  const SetPasscodeScreen({super.key, required this.refNumber});

  @override
  State<SetPasscodeScreen> createState() => _SetPasscodeScreenState();
}

class _SetPasscodeScreenState extends State<SetPasscodeScreen> {
  final List<TextEditingController> _passcodeControllers =
      List.generate(6, (index) => TextEditingController());
  final List<TextEditingController> _confirmPasscodeControllers =
      List.generate(6, (index) => TextEditingController());
  final List<FocusNode> _passcodeFocusNodes =
      List.generate(6, (index) => FocusNode());
  final List<FocusNode> _confirmPasscodeFocusNodes =
      List.generate(6, (index) => FocusNode());

  @override
  void dispose() {
    for (var controller in _passcodeControllers) {
      controller.dispose();
    }
    for (var controller in _confirmPasscodeControllers) {
      controller.dispose();
    }
    for (var node in _passcodeFocusNodes) {
      node.dispose();
    }
    for (var node in _confirmPasscodeFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  Widget _buildPasscodeFields(List<TextEditingController> controllers,
      List<FocusNode> focusNodes, String label) {
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 7),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            6,
            (index) => SizedBox(
              width: 45,
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  gradient: isDarkMode ? AppThemes.darkInputGradient : AppThemes.lightInputGradient,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isDarkMode
                        ? AppColors.loaderPrimaryDark
                        : AppColors.loaderPrimaryLight,
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: controllers[index],
                  focusNode: focusNodes[index],
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  obscureText: true,
                  obscuringCharacter: '•',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                  decoration: InputDecoration(
                    counterText: "",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  ),
                  onChanged: (value) {
                    if (value.isNotEmpty && index < 5) {
                      focusNodes[index + 1].requestFocus();
                    } else if (value.isEmpty && index > 0) {
                      focusNodes[index - 1].requestFocus();
                    }
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
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

    return BlocListener<RegisterSavePasscodeBloc, RegisterSavePasscodeState>(
      listener: (context, state) {
        state.maybeWhen(
          completeRegistrationSuccess: (registrationEntity) {
            context.navigateTo(RouteConstants.completedRegistration,
                arguments: CompletedRegistrationArguments(
                    refNumber: widget.refNumber));
          },
          completeRegistrationFailure: (message) {
            showErrorSnackBar(context, message);
          },
          completeRegistrationServerDown: (message) {
            showDialog(
                context: context,
                builder: (context) => ServerDownDialog(message: message));
          },
          serverFailure: (message) {
            showErrorSnackBar(context, message);
          },
          serverDown: (message) {
            showDialog(
                context: context,
                builder: (context) => ServerDownDialog(message: message));
          },
          failure: (message) {
            showErrorSnackBar(context, message);
          },
          orElse: () {
            // Don't show error for loading states or other non-error states
          },
        );
      },
      child: Container(
        decoration: AppThemes.scaffoldBackgroundDecoration(
            isDark: isDarkMode, isPrimary: true),
        child: Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(localizations.get('set_passcode'),
                    style: theme.textTheme.displayMedium),
                Text(localizations.get(
                    'this_passcode_will_be_used_to_access_your_account_please_enter_a_secure_and_memorable_passcode')),
                const SizedBox(height: 20),
                _buildPasscodeFields(_passcodeControllers, _passcodeFocusNodes,
                    localizations.get('enter_passcode')),
                const SizedBox(height: 10),
                _buildPasscodeFields(
                    _confirmPasscodeControllers,
                    _confirmPasscodeFocusNodes,
                    localizations.get('confirm_passcode')),
                const SizedBox(height: 20),
                Text(localizations.get('passcode_must_be_6_digits'),
                    style: theme.textTheme.bodyMedium),
                Text(localizations.get('passcode_must_be_numeric'),
                    style: theme.textTheme.bodyMedium),
                Text(
                    localizations
                        .get('passcode_must_not_be_a_commonly_used_password'),
                    style: theme.textTheme.bodyMedium),
                Spacer(),
                Center(
                  child: SizedBox(
                    width: 250,
                    child: GradientButton(
                      isDarkMode: isDarkMode,
                      onPressed: () {
                        if (_passcodeControllers.every(
                                (controller) => controller.text.isNotEmpty) &&
                            _confirmPasscodeControllers.every(
                                (controller) => controller.text.isNotEmpty)) {
                          // Get the passcode texts
                          String passcode =
                              _passcodeControllers.map((c) => c.text).join();
                          String confirmPasscode = _confirmPasscodeControllers
                              .map((c) => c.text)
                              .join();

                          // Compare the passcodes
                          if (passcode == confirmPasscode) {
                            debugPrint("PASSWORD PLAIN: $passcode");
                            final passwordEnc = EncryptionUtil.encryptFunction(passcode);
                            debugPrint("PASSWORD ENCRYPTED: $passwordEnc");
                            context.read<RegisterSavePasscodeBloc>().add(
                                RegisterSavePasscodeEvent.savePasscode(
                                    passwordEnc: passwordEnc,
                                    userRef: widget.refNumber));
                          } else {
                            showErrorSnackBar(context,
                                localizations.get('passcodes_do_not_match'));
                          }
                        } else {
                          showErrorSnackBar(
                              context,
                              localizations.get(
                                  'please_enter_and_confirm_the_6_digit_passcode'));
                        }
                      },
                      child: BlocBuilder<RegisterSavePasscodeBloc,
                          RegisterSavePasscodeState>(
                        builder: (context, state) {
                          return state.maybeWhen(loading: () {
                            return const SizedBox(
                                width: 35,
                                height: 35,
                                child: CircularProgressIndicator());
                          }, completeRegistrationLoading: () {
                            return const SizedBox(
                                width: 35,
                                height: 35,
                                child: CircularProgressIndicator());
                          }, orElse: () {
                            return Text(localizations.get('set_passcode'));
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
