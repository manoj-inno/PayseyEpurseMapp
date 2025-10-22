import 'dart:developer';

import 'package:flutter/services.dart';

import '../../../core/routing/routing.dart';
import '../../../core/util/customer_type_identifier.dart';
import '../../../core/widgets/loading_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/error_snackbar.dart';
import '../../../core/widgets/gradient_button.dart';
import '../../../core/widgets/otp_bottom_sheet.dart';
import '../../../core/widgets/server_down_dialog.dart';
import '../cubit/country_code/country_code_cubit.dart';
import '../cubit/country_code/country_code_state.dart';
import '../../../features/registration/cubit/mobile_input_cubit.dart';
import '../bloc/register1_reference/register_reference_bloc.dart';

class EnterMobileScreen extends StatelessWidget {
  const EnterMobileScreen({super.key, this.mobile});
  final String? mobile;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MobileInputCubit(initialMobile: mobile),
      child: const EnterMobileView(),
    );
  }
}

class EnterMobileView extends StatelessWidget {
  const EnterMobileView({super.key});

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

    // Initialize localized country code after the first frame is rendered
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final localizations =
          AppLocalizations(context.read<LanguageBloc>().state.maybeWhen(
                loaded: (locale) => locale,
                orElse: () => const Locale('en'),
              ));
      context
          .read<CountryCodeCubit>()
          .initializeLocalizedCountryCodes(context, localizations, 1);
    });

    return Container(
      decoration: AppThemes.scaffoldBackgroundDecoration(
          isDark: isDarkMode, isPrimary: true),
      child: Scaffold(
          appBar: AppBar(),
          resizeToAvoidBottomInset: true,
          body: BlocListener<RegisterReferenceBloc, RegisterReferenceState>(
            listener: (context, state) {
              debugPrint("______________REGISTER REFERENCE STATE____________");
              debugPrint("state: ${state.runtimeType}");
              state.maybeWhen(
                loading: (message) {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Center(child: Text(message)),
                      content: IntrinsicHeight(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            RotatingBouncingLoader(
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? AppColors.loaderPrimaryLight
                                  : AppColors.loaderPrimaryDark,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                mobileNotVerified: (entity) {
                  context.goBack();
                },
                accountVerified: (entity, message, content) {
                  // Get the data before showing the dialog
                  final mobileInputState =
                      context.read<MobileInputCubit>().state;
                  final countryCode =
                      context.read<CountryCodeCubit>().getCountryCode(0);
                  final mobile =
                      '$countryCode${mobileInputState.mobileController.text}';

                  context.goBack();
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      alignment: Alignment.center,
                      actionsAlignment: MainAxisAlignment.center,
                      title: Text(
                        message,
                        style: theme.textTheme.displaySmall
                            ?.copyWith(fontSize: 26),
                      ),
                      content: Text(content, style: theme.textTheme.bodyMedium),
                      actions: [
                        SizedBox(
                          width: double.infinity,
                          child: GradientButton(
                            onPressed: () {
                              context.goBack();
                              context.read<RegisterReferenceBloc>().add(
                                    RegisterReferenceEvent.generateOtp(
                                      mobile: mobile,
                                      entity: entity,
                                    ),
                                  );
                            },
                            isDarkMode: isDarkMode,
                            child: Text("Continue Registration"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                kycVerified: (entity, message, content) {
                  // Get the data before showing the dialog
                  final mobileInputState =
                      context.read<MobileInputCubit>().state;
                  final countryCode =
                      context.read<CountryCodeCubit>().getCountryCode(0);
                  final mobile =
                      '$countryCode${mobileInputState.mobileController.text}';

                  context.goBack();
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      alignment: Alignment.center,
                      actionsAlignment: MainAxisAlignment.center,
                      title: Text(
                        message,
                        style: theme.textTheme.displaySmall
                            ?.copyWith(fontSize: 26),
                      ),
                      content: Text(content, style: theme.textTheme.bodyMedium),
                      actions: [
                        SizedBox(
                          width: double.infinity,
                          child: GradientButton(
                            onPressed: () {
                              context.goBack();
                              context.read<RegisterReferenceBloc>().add(
                                    RegisterReferenceEvent.generateOtp(
                                      mobile: mobile,
                                      entity: entity,
                                    ),
                                  );
                            },
                            isDarkMode: isDarkMode,
                            child: Text("Continue Registration"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                occupationVerified: (entity, message, content) {
                  // Get the data before showing the dialog
                  final mobileInputState =
                      context.read<MobileInputCubit>().state;
                  final countryCode =
                      context.read<CountryCodeCubit>().getCountryCode(0);
                  final mobile =
                      '$countryCode${mobileInputState.mobileController.text}';

                  context.goBack();
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      alignment: Alignment.center,
                      actionsAlignment: MainAxisAlignment.center,
                      title: Text(
                        message,
                        style: theme.textTheme.displaySmall
                            ?.copyWith(fontSize: 26),
                      ),
                      content: Text(content, style: theme.textTheme.bodyMedium),
                      actions: [
                        SizedBox(
                          width: double.infinity,
                          child: GradientButton(
                            onPressed: () {
                              context.goBack();
                              context.read<RegisterReferenceBloc>().add(
                                    RegisterReferenceEvent.generateOtp(
                                      mobile: mobile,
                                      entity: entity,
                                    ),
                                  );
                            },
                            isDarkMode: isDarkMode,
                            child: Text("Continue Registration"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                addressVerified: (entity, message, content) {
                  // Get the data before showing the dialog
                  final mobileInputState =
                      context.read<MobileInputCubit>().state;
                  final countryCode =
                      context.read<CountryCodeCubit>().getCountryCode(0);
                  final mobile =
                      '$countryCode${mobileInputState.mobileController.text}';

                  context.goBack();
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      alignment: Alignment.center,
                      actionsAlignment: MainAxisAlignment.center,
                      title: Text(
                        message,
                        style: theme.textTheme.displaySmall
                            ?.copyWith(fontSize: 26),
                      ),
                      content: Text(content, style: theme.textTheme.bodyMedium),
                      actions: [
                        SizedBox(
                          width: double.infinity,
                          child: GradientButton(
                            onPressed: () {
                              context.goBack();
                              context.read<RegisterReferenceBloc>().add(
                                    RegisterReferenceEvent.generateOtp(
                                      mobile: mobile,
                                      entity: entity,
                                    ),
                                  );
                            },
                            isDarkMode: isDarkMode,
                            child: Text("Continue Registration"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                pepVerified: (entity, message, content) {
                  // Get the data before showing the dialog
                  final mobileInputState =
                      context.read<MobileInputCubit>().state;
                  final countryCode =
                      context.read<CountryCodeCubit>().getCountryCode(0);
                  final mobile =
                      '$countryCode${mobileInputState.mobileController.text}';

                  context.goBack();
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      alignment: Alignment.center,
                      actionsAlignment: MainAxisAlignment.center,
                      title: Text(
                        message,
                        style: theme.textTheme.displaySmall
                            ?.copyWith(fontSize: 26),
                      ),
                      content: Text(content, style: theme.textTheme.bodyMedium),
                      actions: [
                        SizedBox(
                          width: double.infinity,
                          child: GradientButton(
                            onPressed: () {
                              context.goBack();
                              context.read<RegisterReferenceBloc>().add(
                                    RegisterReferenceEvent.generateOtp(
                                      mobile: mobile,
                                      entity: entity,
                                    ),
                                  );
                            },
                            isDarkMode: isDarkMode,
                            child: Text("Continue Registration"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                businessDetailsRegisteration: (entity, message, content) {
                  // Get the data before showing the dialog
                  final mobileInputState =
                      context.read<MobileInputCubit>().state;
                  final countryCode =
                      context.read<CountryCodeCubit>().getCountryCode(0);
                  final mobile =
                      '$countryCode${mobileInputState.mobileController.text}';

                  context.goBack();
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      alignment: Alignment.center,
                      actionsAlignment: MainAxisAlignment.center,
                      title: Text(
                        message,
                        style: theme.textTheme.displaySmall
                            ?.copyWith(fontSize: 26),
                      ),
                      content: Text(content, style: theme.textTheme.bodyMedium),
                      actions: [
                        SizedBox(
                          width: double.infinity,
                          child: GradientButton(
                            onPressed: () {
                              context.goBack();
                              context.read<RegisterReferenceBloc>().add(
                                    RegisterReferenceEvent.generateOtp(
                                      mobile: mobile,
                                      entity: entity,
                                    ),
                                  );
                            },
                            isDarkMode: isDarkMode,
                            child: Text("Continue Registration"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                businessAddressRegisteration: (entity, message, content) {
                  // Get the data before showing the dialog
                  final mobileInputState =
                      context.read<MobileInputCubit>().state;
                  final countryCode =
                      context.read<CountryCodeCubit>().getCountryCode(0);
                  final mobile =
                      '$countryCode${mobileInputState.mobileController.text}';

                  context.goBack();
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      alignment: Alignment.center,
                      actionsAlignment: MainAxisAlignment.center,
                      title: Text(
                        message,
                        style: theme.textTheme.displaySmall
                            ?.copyWith(fontSize: 26),
                      ),
                      content: Text(content, style: theme.textTheme.bodyMedium),
                      actions: [
                        SizedBox(
                          width: double.infinity,
                          child: GradientButton(
                            onPressed: () {
                              context.goBack();
                              context.read<RegisterReferenceBloc>().add(
                                    RegisterReferenceEvent.generateOtp(
                                      mobile: mobile,
                                      entity: entity,
                                    ),
                                  );
                            },
                            isDarkMode: isDarkMode,
                            child: Text("Continue Registration"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                modeOfOperationRegisteration: (entity, message, content) {
                  // Get the data before showing the dialog
                  final mobileInputState =
                      context.read<MobileInputCubit>().state;
                  final countryCode =
                      context.read<CountryCodeCubit>().getCountryCode(0);
                  final mobile =
                      '$countryCode${mobileInputState.mobileController.text}';

                  context.goBack();
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      alignment: Alignment.center,
                      actionsAlignment: MainAxisAlignment.center,
                      title: Text(
                        message,
                        style: theme.textTheme.displaySmall
                            ?.copyWith(fontSize: 26),
                      ),
                      content: Text(content, style: theme.textTheme.bodyMedium),
                      actions: [
                        SizedBox(
                          width: double.infinity,
                          child: GradientButton(
                            onPressed: () {
                              context.goBack();
                              context.read<RegisterReferenceBloc>().add(
                                    RegisterReferenceEvent.generateOtp(
                                      mobile: mobile,
                                      entity: entity,
                                    ),
                                  );
                            },
                            isDarkMode: isDarkMode,
                            child: Text("Continue Registration"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                otpSentSuccessfully:
                    (checkEntity, needDeviceUpdate, refNumber) {
                  // Get the data before showing the bottom sheet
                  final mobileInputState =
                      context.read<MobileInputCubit>().state;
                  final countryCode =
                      context.read<CountryCodeCubit>().getCountryCode(0);
                  final mobile =
                      '$countryCode${mobileInputState.mobileController.text}';

                  debugPrint("______________OTP SENT SUCCESSFULLY____________");
                  debugPrint("Mobile: $mobile");
                  debugPrint("Need Device Update: $needDeviceUpdate");
                  debugPrint("Ref Number: $refNumber");

                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    builder: (BuildContext context) {
                      return OtpBottomSheet(
                        title: "Enter OTP",
                        subTitle:
                            "Enter the OTP sent to your mobile number $mobile",
                        buttonText: "Verify OTP",
                        mobile: mobile,
                        numberOfFields: 4,
                        onVerifyTap: (String otp) {
                          debugPrint("______________ENTERED OTP____________");
                          debugPrint('Entered OTP: $otp');

                          // Handle OTP verification for device update if needed
                          if (needDeviceUpdate && refNumber != null) {
                            context.read<RegisterReferenceBloc>().add(
                                  RegisterReferenceEvent.verifyDeviceUpdateOtp(
                                    mobile: mobile,
                                    otp: otp,
                                    refNumber: refNumber,
                                  ),
                                );
                          } else {
                            context.read<RegisterReferenceBloc>().add(
                                  RegisterReferenceEvent.verifyMobileOtp(
                                    mobile: mobile,
                                    otp: otp,
                                    entity: checkEntity,
                                  ),
                                );
                          }
                        },
                      );
                    },
                  );
                },
                otpVerifiedSuccessfully: (entity, checkEntity) {
                  context.goBack();

                  if (checkEntity != null) {
                    final entity = checkEntity;
                    debugPrint("______________ENTITY____________");
                    debugPrint("##${entity.regStatus.toString()}##");

                    switch (entity.regStatus) {
                      case 0:
                        final mobileInputState =
                            context.read<MobileInputCubit>().state;
                        final countryCode =
                            context.read<CountryCodeCubit>().getCountryCode(0);
                        final mobile =
                            '$countryCode${mobileInputState.mobileController.text}';
                        context.navigateTo(RouteConstants.privacyPolicy,
                            arguments: PrivacyPolicyArguments(
                                mobile: mobile, refNum: entity.regRef));
                        break;
                      case 10:
                        debugPrint("______________NAVIGATING TO UPLOAD ID____________");
                        debugPrint("Entity regRef: ${entity.regRef}");
                        debugPrint("Entity userType: ${entity.userType}");
                        debugPrint("RegRef length: ${entity.regRef.length}");
                        debugPrint("RegRef isEmpty: ${entity.regRef.isEmpty}");
                        
                        context.navigateTo(RouteConstants.uploadId,
                            arguments: UploadIdArguments(
                                customerTypeId: entity.userType,
                                refNum: entity.regRef,
                                showDialogOnInit: true));
                        break;
                      case 20:
                        if (entity.userType ==
                            CustomerTypeIdentifier.individual.value) {
                          context.navigateTo(RouteConstants.occupation,
                              arguments: OccupationArguments(
                                  customerTypeId: entity.userType,
                                  refNum: entity.regRef));
                        } else {
                          context.navigateTo(RouteConstants.businessDetails,
                              arguments: BusinessDetailsArguments(
                                  refNum: entity.regRef,
                                  customerTypeId: entity.userType));
                        }
                        break;
                      case 30:
                        context.navigateTo(RouteConstants.addAddress,
                            arguments: AddressArguments(
                                refNumber: entity.regRef,
                                customerTypeId: entity.userType));
                        break;
                      case 40:
                        // context.navigateTo(RouteConstants.pep,
                        //     arguments: PepArguments(refNumber: entity.regRef));
                        // break;
                        if (entity.userType ==
                            CustomerTypeIdentifier.individual.value) {
                          context.navigateTo(RouteConstants.pep,
                              arguments: PepArguments(refNumber: entity.regRef));
                        } else {
                          context.navigateTo(RouteConstants.businessAddress,
                              arguments: BusinessAddressArguments(
                                  refNumber: entity.regRef,
                                  customerTypeId: entity.userType));
                        }
                        break;
                      case 50:
                        if (entity.userType ==
                            CustomerTypeIdentifier.individual.value) {
                          // Individual user: go to PEP screen
                          context.navigateTo(RouteConstants.pep,
                              arguments: PepArguments(refNumber: entity.regRef));
                        } else if (entity.userType ==
                            CustomerTypeIdentifier.corporate.value) {
                          // Corporate user: go to Mode of Operation screen
                          context.navigateTo(RouteConstants.modeOfOperation,
                              arguments: ModeOfOperationArguments(
                                  refNumber: entity.regRef));
                        } else {
                          // Fallback: go to set passcode
                          context.navigateTo(RouteConstants.setPasscode,
                              arguments:
                                  PasscodeArguments(refNumber: entity.regRef));
                        }
                        break;
                      // case 60:
                      //   context.navigateTo(RouteConstants.businessAddress,
                      //       arguments: BusinessAddressArguments(
                      //           refNumber: entity.regRef,
                      //           customerTypeId: entity.userType));
                      //   break;
                      case 70:
                        if (entity.userType ==
                            CustomerTypeIdentifier.corporate.value) {
                          context.navigateTo(RouteConstants.pep,
                              arguments: PepArguments(refNumber: entity.regRef));
                        } else {
                          context.navigateTo(RouteConstants.modeOfOperation,
                              arguments: ModeOfOperationArguments(
                                  refNumber: entity.regRef));
                        }
                        break;
                        // context.navigateTo(RouteConstants.pep,
                        //     arguments: PepArguments(
                        //         refNumber: entity.regRef));
                        // break;
                      case 80:
                        context.navigateTo(RouteConstants.setPasscode,
                            arguments:
                                PasscodeArguments(refNumber: entity.regRef));
                        break;
                      case 90:
                        context.navigateTo(RouteConstants.setPasscode,
                            arguments:
                                PasscodeArguments(refNumber: entity.regRef));
                        break;
                      default:
                        context.goBack();
                        break;
                    }
                  }
                  log(entity.toString());
                  //  else {
                  //   final mobileInputState = context.read<MobileInputCubit>().state;
                  //   final countryCode = context.read<CountryCodeCubit>().getCountryCode(0);
                  //   final mobile = '$countryCode${mobileInputState.mobileController.text}';
                  //   context.navigateTo(RouteConstants.privacyPolicy, arguments: PrivacyPolicyArguments(mobile: mobile, refNum: entity.regRef));
                  // }
                },
                completedRegisteration: (entity, message, content) {
                  context.goBack();
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      alignment: Alignment.center,
                      actionsAlignment: MainAxisAlignment.center,
                      title: Text(
                        'Registration Completed',
                        style: theme.textTheme.displaySmall
                            ?.copyWith(fontSize: 26),
                      ),
                      content: Text(
                        'Congratulations! Your registration is complete.',
                        style: theme.textTheme.bodyMedium,
                      ),
                      actions: [
                        SizedBox(
                          width: double.infinity,
                          child: GradientButton(
                            onPressed: () {
                              context.navigateTo(RouteConstants.login);
                            },
                            isDarkMode: isDarkMode,
                            child: Text("Login"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                mobileVerificationError: (message) {
                  context.goBack();
                  showErrorSnackBar(context, message);
                },
                serverDownError: (message) {
                  context.goBack();
                  showDialog(
                    context: context,
                    builder: (context) => ServerDownDialog(message: message),
                  );
                },
                deviceMismatch: (message, refNumber) {
                  // Get the data before showing the dialog
                  final mobileInputState =
                      context.read<MobileInputCubit>().state;
                  final countryCode =
                      context.read<CountryCodeCubit>().getCountryCode(0);
                  final mobile =
                      '$countryCode${mobileInputState.mobileController.text}';

                  context.goBack();
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Device Mismatch"),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset('lib/core/icons/device-error.png',
                              width: 100, height: 100),
                          const SizedBox(height: 10),
                          Text(message),
                        ],
                      ),
                      actions: [
                        SizedBox(
                          width: double.infinity,
                          child: GradientButton(
                            onPressed: () {
                              debugPrint(
                                  "______________DEVICE MISMATCH - REQUEST OTP____________");
                              debugPrint("refNumber: $refNumber");
                              context.goBack();

                              // Request OTP instead of updating device immediately
                              context.read<RegisterReferenceBloc>().add(
                                    RegisterReferenceEvent.generateOtp(
                                      mobile: mobile,
                                      needDeviceUpdate: true,
                                      refNumber: refNumber,
                                    ),
                                  );
                            },
                            isDarkMode: isDarkMode,
                            child: Text("Switch Primary Device"),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {
                              context.goBack();
                            },
                            child: Text("Close"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                deviceAlreadyExistsNewUser: (message) {
                  context.goBack();
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Device Already Being Registered"),
                      content: Text(message),
                      actions: [
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {
                              context.goBack();
                            },
                            child: Text("Ok"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                deviceAlreadyExistsOldUser: (message) {
                  context.goBack();
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Device Already Being Registered"),
                      content: Text(message),
                      actions: [
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {
                              context.goBack();
                            },
                            child: Text("Ok"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                updatePrimaryDeviceSuccess: (entity) {
                  context.goBack();
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Primary Device Updated"),
                      content: Text(entity.message),
                      actions: [
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {
                              context.goBack();
                            },
                            child: Text("Ok"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                updatePrimaryDeviceError: (message, refNumber) {
                  context.goBack();
                  showErrorSnackBar(context, message);
                },
                updatePrimaryDeviceLoading: (message, refNumber) {
                  context.goBack();
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Center(child: Text(message)),
                      content: IntrinsicHeight(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            RotatingBouncingLoader(
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? AppColors.loaderPrimaryLight
                                  : AppColors.loaderPrimaryDark,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                updatePrimaryServerDownError: (message) {
                  context.goBack();
                  showDialog(
                    context: context,
                    builder: (context) => ServerDownDialog(message: message),
                  );
                },
                orElse: () {},
              );
            },
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                        child: Lottie.asset('lib/core/animation/register.json',
                            width: size.width / 1.5)),
                    Center(
                        child: Text(
                      localizations.get('welcome'),
                      style: theme.textTheme.displayMedium,
                    )),
                    SizedBox(
                      height: size.height / 200,
                    ),
                    Text(
                      localizations.get('enter_mobile'),
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(
                      height: size.height / 20,
                    ),
                    Column(
                      children: [
                        BlocBuilder<MobileInputCubit, MobileInputState>(
                            builder: (context, mobileInputState) {
                          return SizedBox(
                            key: mobileInputState.mobileFieldKey,
                            width: size.width / 1.5,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: mobileInputState.mobileController,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              focusNode: mobileInputState.mobileFocusNode,
                              onFieldSubmitted: (value) {
                                final countryCode = context
                                    .read<CountryCodeCubit>()
                                    .getCountryCode(0);
                                final mobile =
                                    '$countryCode${mobileInputState.mobileController.text}';
                                debugPrint(mobile);
                                context.read<RegisterReferenceBloc>().add(
                                    CheckMobileEvent(
                                        mobile: mobile, isLogin: false));
                              },
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: BlocBuilder<CountryCodeCubit,
                                      CountryCodeState>(
                                    builder: (context, state) {
                                      final countryCode = state.maybeWhen(
                                        loaded: (countryCodes) =>
                                            countryCodes[0] ?? '+91',
                                        orElse: () => '+91',
                                      );
                                      return PopupMenuButton<String>(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        initialValue: countryCode,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(countryCode,
                                                style:
                                                    theme.textTheme.bodyLarge),
                                            const Icon(Icons.arrow_drop_down),
                                            SizedBox(
                                              width: size.width / 50,
                                            ),
                                          ],
                                        ),
                                        itemBuilder: (BuildContext context) =>
                                            <PopupMenuEntry<String>>[
                                          PopupMenuItem<String>(
                                            value: localizations.get('+1'),
                                            child: Text(localizations
                                                .get('united_states')),
                                          ),
                                          PopupMenuItem<String>(
                                            value: localizations.get('+44'),
                                            child: Text(localizations
                                                .get('united_kingdom')),
                                          ),
                                          PopupMenuItem<String>(
                                            value: localizations.get('+91'),
                                            child: Text(
                                                localizations.get('india')),
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
                          );
                        }),
                        SizedBox(
                          height: size.height / 40,
                        ),
                        Center(
                          child: SizedBox(
                            width: size.width / 1.5,
                            child: BlocBuilder<RegisterReferenceBloc,
                                RegisterReferenceState>(
                              builder: (context, registerState) {
                                return BlocBuilder<MobileInputCubit,
                                        MobileInputState>(
                                    builder: (context, mobileState) {
                                  if (registerState
                                      is MobileVerificationLoading) {
                                    return GradientButton(
                                        onPressed: () {},
                                        isDarkMode: isDarkMode,
                                        child: const SizedBox(
                                            width: 30,
                                            height: 30,
                                            child:
                                                CircularProgressIndicator()));
                                  }
                                  return GradientButton(
                                      onPressed: !mobileState.isInputValid
                                          ? null // Disable button if validation fails
                                          : () {
                                              final countryCode = context
                                                  .read<CountryCodeCubit>()
                                                  .getCountryCode(0);

                                              final mobile =
                                                  '$countryCode${mobileState.mobileController.text}';
                                              debugPrint(mobile);
                                              context
                                                  .read<RegisterReferenceBloc>()
                                                  .add(CheckMobileEvent(
                                                      mobile: mobile,
                                                      isLogin: false));
                                            },
                                      isDarkMode: isDarkMode,
                                      child:
                                          Text(localizations.get('send_otp')));
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height / 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          localizations.get('already_have_account'),
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(
                          width: size.width / 100,
                        ),
                        InkWell(
                            onTap: () {
                              context.navigateTo(RouteConstants.login);
                            },
                            child: Text(
                              localizations.get('login'),
                              style: theme.textTheme.labelMedium?.copyWith(
                                  decoration: TextDecoration.underline),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
