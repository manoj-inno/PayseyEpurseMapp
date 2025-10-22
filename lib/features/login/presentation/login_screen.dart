import 'package:flutter/services.dart';

import '../../../core/util/encryption_util.dart';
import '../../../core/widgets/otp_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../core/language/app_localizations.dart';
import '../../../core/language/bloc/language_bloc.dart';
import '../../../core/theme/app_themes.dart';
import '../../../core/theme/bloc/theme_bloc.dart';
import '../../../core/widgets/error_snackbar.dart';
import '../../../core/widgets/gradient_button.dart';
import '../../../core/widgets/loading_painter.dart';
import '../../../core/widgets/server_down_dialog.dart';
import '../../registration/cubit/country_code/country_code_cubit.dart';
import '../../registration/cubit/country_code/country_code_state.dart';
import '../../../features/registration/cubit/mobile_input_cubit.dart';
import '../../../core/notification/bloc/notification_bloc.dart';
import '../../registration/bloc/register1_reference/register_reference_bloc.dart';
import '../bloc/login/login_bloc.dart';
import '../data/login/login_model.dart';
import 'package:epurse/core/routing/routing.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MobileInputCubit(),
      child: const LoginView(),
    );
  }
}

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        debugPrint("______________LOGIN STATE____________");
        debugPrint("state: ${state.runtimeType}");
        if (state is LoginSuccess) {
          context.goBack();
          debugPrint("______________LOGIN SUCCESS____________");
          context.navigateToAndRemoveUntil(RouteConstants.dashboard);
          context
              .read<NotificationBloc>()
              .add(const NotificationEvent.sendTestNotification());
        } else if (state is LoginFailure) {
          context.goBack();
          showErrorSnackBar(context, state.message);
        } else if (state is LoginsServerDown) {
          context.goBack();
          showDialog(
              context: context,
              builder: (context) => ServerDownDialog(message: state.message));
        } else if (state is LoginLoading) {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => AlertDialog(
                  title: Center(child: Text("Logging in...")),
                  content: IntrinsicHeight(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RotatingBouncingLoader(
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? AppColors.loaderPrimaryLight
                                  : AppColors.loaderPrimaryDark,
                        ),
                      ],
                    ),
                  )));
        }
      },
      child: BlocListener<RegisterReferenceBloc, RegisterReferenceState>(
        listener: (context, state) async {
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
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? AppColors.loaderPrimaryLight
                                  : AppColors.loaderPrimaryDark,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            accountVerified: (entity, message, content) {
              context.goBack();
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  alignment: Alignment.center,
                  actionsAlignment: MainAxisAlignment.center,
                  title: Text(
                    message,
                    style: theme.textTheme.displaySmall?.copyWith(fontSize: 26),
                  ),
                  content: Text(content, style: theme.textTheme.bodyMedium),
                  actions: [
                    GradientButton(
                      onPressed: () {
                        context.goBack();
                        final mobileInputState =
                            context.read<MobileInputCubit>().state;
                        context.navigateTo(
                          RouteConstants.enterMobile,
                          arguments: EnterMobileArguments(
                            mobile: mobileInputState.mobileController.text,
                          ),
                        );
                      },
                      isDarkMode: isDarkMode,
                      child: Text("Continue Registration"),
                    ),
                  ],
                ),
              );
            },
            kycVerified: (entity, message, content) {
              context.goBack();
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  alignment: Alignment.center,
                  actionsAlignment: MainAxisAlignment.center,
                  title: Text(
                    message,
                    style: theme.textTheme.displaySmall?.copyWith(fontSize: 26),
                  ),
                  content: Text(content, style: theme.textTheme.bodyMedium),
                  actions: [
                    GradientButton(
                      onPressed: () {
                        context.goBack();
                        final mobileInputState =
                            context.read<MobileInputCubit>().state;
                        context.navigateTo(
                          RouteConstants.enterMobile,
                          arguments: EnterMobileArguments(
                            mobile: mobileInputState.mobileController.text,
                          ),
                        );
                      },
                      isDarkMode: isDarkMode,
                      child: Text("Continue Registration"),
                    ),
                  ],
                ),
              );
            },
            occupationVerified: (entity, message, content) {
              context.goBack();
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  alignment: Alignment.center,
                  actionsAlignment: MainAxisAlignment.center,
                  title: Text(
                    message,
                    style: theme.textTheme.displaySmall?.copyWith(fontSize: 26),
                  ),
                  content: Text(content, style: theme.textTheme.bodyMedium),
                  actions: [
                    GradientButton(
                      onPressed: () {
                        context.goBack();
                        final mobileInputState =
                            context.read<MobileInputCubit>().state;
                        context.navigateTo(
                          RouteConstants.enterMobile,
                          arguments: EnterMobileArguments(
                            mobile: mobileInputState.mobileController.text,
                          ),
                        );
                      },
                      isDarkMode: isDarkMode,
                      child: Text("Continue Registration"),
                    ),
                  ],
                ),
              );
            },
            addressVerified: (entity, message, content) {
              context.goBack();
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  alignment: Alignment.center,
                  actionsAlignment: MainAxisAlignment.center,
                  title: Text(
                    message,
                    style: theme.textTheme.displaySmall?.copyWith(fontSize: 26),
                  ),
                  content: Text(content, style: theme.textTheme.bodyMedium),
                  actions: [
                    GradientButton(
                      onPressed: () {
                        context.goBack();
                        final mobileInputState =
                            context.read<MobileInputCubit>().state;
                        context.navigateTo(
                          RouteConstants.enterMobile,
                          arguments: EnterMobileArguments(
                            mobile: mobileInputState.mobileController.text,
                          ),
                        );
                      },
                      isDarkMode: isDarkMode,
                      child: Text("Continue Registration"),
                    ),
                  ],
                ),
              );
            },
            pepVerified: (entity, message, content) {
              context.goBack();
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  alignment: Alignment.center,
                  actionsAlignment: MainAxisAlignment.center,
                  title: Text(
                    message,
                    style: theme.textTheme.displaySmall?.copyWith(fontSize: 26),
                  ),
                  content: Text(content, style: theme.textTheme.bodyMedium),
                  actions: [
                    GradientButton(
                      onPressed: () {
                        context.goBack();
                        final mobileInputState =
                            context.read<MobileInputCubit>().state;
                        context.navigateTo(
                          RouteConstants.enterMobile,
                          arguments: EnterMobileArguments(
                            mobile: mobileInputState.mobileController.text,
                          ),
                        );
                      },
                      isDarkMode: isDarkMode,
                      child: Text("Continue Registration"),
                    ),
                  ],
                ),
              );
            },
            businessDetailsRegisteration: (entity, message, content) {
              context.goBack();
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  alignment: Alignment.center,
                  actionsAlignment: MainAxisAlignment.center,
                  title: Text(
                    message,
                    style: theme.textTheme.displaySmall?.copyWith(fontSize: 26),
                  ),
                  content: Text(content, style: theme.textTheme.bodyMedium),
                  actions: [
                    GradientButton(
                      onPressed: () {
                        context.goBack();
                        final mobileInputState =
                            context.read<MobileInputCubit>().state;
                        context.navigateTo(
                          RouteConstants.enterMobile,
                          arguments: EnterMobileArguments(
                            mobile: mobileInputState.mobileController.text,
                          ),
                        );
                      },
                      isDarkMode: isDarkMode,
                      child: Text("Continue Registration"),
                    ),
                  ],
                ),
              );
            },
            businessAddressRegisteration: (entity, message, content) {
              context.goBack();
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  alignment: Alignment.center,
                  actionsAlignment: MainAxisAlignment.center,
                  title: Text(
                    message,
                    style: theme.textTheme.displaySmall?.copyWith(fontSize: 26),
                  ),
                  content: Text(content, style: theme.textTheme.bodyMedium),
                  actions: [
                    GradientButton(
                      onPressed: () {
                        context.goBack();
                        final mobileInputState =
                            context.read<MobileInputCubit>().state;
                        context.navigateTo(
                          RouteConstants.enterMobile,
                          arguments: EnterMobileArguments(
                            mobile: mobileInputState.mobileController.text,
                          ),
                        );
                      },
                      isDarkMode: isDarkMode,
                      child: Text("Continue Registration"),
                    ),
                  ],
                ),
              );
            },
            modeOfOperationRegisteration: (entity, message, content) {
              context.goBack();
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  alignment: Alignment.center,
                  actionsAlignment: MainAxisAlignment.center,
                  title: Text(
                    message,
                    style: theme.textTheme.displaySmall?.copyWith(fontSize: 26),
                  ),
                  content: Text(content, style: theme.textTheme.bodyMedium),
                  actions: [
                    GradientButton(
                      onPressed: () {
                        context.goBack();
                        final mobileInputState =
                            context.read<MobileInputCubit>().state;
                        context.navigateTo(
                          RouteConstants.enterMobile,
                          arguments: EnterMobileArguments(
                            mobile: mobileInputState.mobileController.text,
                          ),
                        );
                      },
                      isDarkMode: isDarkMode,
                      child: Text("Continue Registration"),
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
            accountNotVerified: (entity) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Account not verified"),
                  content: Text(
                    "Please register your account or continue with the registration process.",
                  ),
                  actions: [
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          context.goBack();
                        },
                        child: Text("Cancel"),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: GradientButton(
                        onPressed: () {
                          context.goBack();
                          context.navigateTo(RouteConstants.enterMobile);
                        },
                        isDarkMode: isDarkMode,
                        child: Text("Continue Registration"),
                      ),
                    ),
                  ],
                ),
              );
            },
            completedRegisteration: (entity, message, content) {
              // Get the data before showing the bottom sheet
              final mobileInputState = context.read<MobileInputCubit>().state;
              final countryCode =
                  context.read<CountryCodeCubit>().getCountryCode(0);
              final mobile =
                  '$countryCode${mobileInputState.mobileController.text}';
              debugPrint(mobile);

              context.goBack();
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (BuildContext context) {
                  return OtpBottomSheet(
                    numberOfFields: 6,
                    showResendButton: false,
                    obscureText: true,
                    onVerifyTap: (pin) {
                      final encryptedPasscode = EncryptionUtil.encryptFunction(pin);
                      context.read<LoginBloc>().add(Login(
                            request: LoginRequestModel(
                              mobileNumber: mobile,
                              encryptedPasscode: encryptedPasscode,
                            ),
                          ));
                    },
                    title: "Enter Passcode",
                    subTitle: "Enter the 6 digit passcode for authentication",
                    buttonText: "Login",
                    mobile: mobile,
                  );
                },
              );
            },
            deviceAlreadyExistsNewUser: (message) {
              final mobileInputState = context.read<MobileInputCubit>().state;
              final countryCode =
                  context.read<CountryCodeCubit>().getCountryCode(0);
              final mobile =
                  '$countryCode${mobileInputState.mobileController.text}';
              debugPrint(mobile);
              context.goBack();
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (BuildContext context) {
                  return OtpBottomSheet(
                    numberOfFields: 6,
                    showResendButton: false,
                    obscureText: true,
                    onVerifyTap: (pin) {
                      final encryptedPasscode = EncryptionUtil.encryptFunction(pin);
                      context.read<LoginBloc>().add(Login(
                            request: LoginRequestModel(
                              mobileNumber: mobile,
                              encryptedPasscode: encryptedPasscode,
                            ),
                          ));
                    },
                    title: "Enter Passcode",
                    subTitle: "Enter the 6 digit passcode for authentication",
                    buttonText: "Login",
                    mobile: mobile,
                  );
                },
              );
            },
            deviceAlreadyExistsOldUser: (message) {
              // Get the data before showing the bottom sheet
              final mobileInputState = context.read<MobileInputCubit>().state;
              final countryCode =
                  context.read<CountryCodeCubit>().getCountryCode(0);
              final mobile =
                  '$countryCode${mobileInputState.mobileController.text}';
              debugPrint(mobile);

              context.goBack();
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (BuildContext context) {
                  return OtpBottomSheet(
                    numberOfFields: 6,
                    showResendButton: false,
                    obscureText: true,
                    onVerifyTap: (pin) {
                      final encryptedPasscode = EncryptionUtil.encryptFunction(pin);
                      context.read<LoginBloc>().add(Login(
                            request: LoginRequestModel(
                              mobileNumber: mobile,
                              encryptedPasscode: encryptedPasscode,
                            ),
                          ));
                    },
                    title: "Enter Passcode",
                    subTitle: "Enter the 6 digit passcode for authentication",
                    buttonText: "Login",
                    mobile: mobile,
                  );
                },
              );
            },
            deviceMismatch: (message, refNumber) {
              // Get the data before showing the bottom sheet
              final mobileInputState = context.read<MobileInputCubit>().state;
              final countryCode =
                  context.read<CountryCodeCubit>().getCountryCode(0);
              final mobile =
                  '$countryCode${mobileInputState.mobileController.text}';
              debugPrint(mobile);

              context.goBack();
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (BuildContext context) {
                  return OtpBottomSheet(
                    numberOfFields: 6,
                    showResendButton: false,
                    obscureText: true,
                    onVerifyTap: (pin) {
                      final encryptedPasscode = EncryptionUtil.encryptFunction(pin);
                      context.read<LoginBloc>().add(Login(
                            request: LoginRequestModel(
                              mobileNumber: mobile,
                              encryptedPasscode: encryptedPasscode,
                            ),
                          ));
                    },
                    title: "Enter Passcode",
                    subTitle: "Enter the 6 digit passcode for authentication",
                    buttonText: "Login",
                    mobile: mobile,
                  );
                },
              );
            },
            orElse: () {},
          );
        },
        child: Container(
            decoration: AppThemes.scaffoldBackgroundDecoration(
                isDark: isDarkMode, isPrimary: true),
            child: Scaffold(
                appBar: AppBar(),
                body: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                            child: Lottie.asset('lib/core/animation/login.json',
                                width: size.width / 1.5)),
                        Center(
                            child: Text(
                          localizations.get('welcome_back'),
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
                        BlocBuilder<MobileInputCubit, MobileInputState>(
                            builder: (context, mobileInputState) {
                          return SizedBox(
                            width: size.width / 1.5,
                            child: TextFormField(
                              key: mobileInputState.mobileFieldKey,
                              controller: mobileInputState.mobileController,
                              focusNode: mobileInputState.mobileFocusNode,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onFieldSubmitted: (value) {
                                final countryCode = context
                                    .read<CountryCodeCubit>()
                                    .getCountryCode(0);
                                final mobile =
                                    '$countryCode${mobileInputState.mobileController.text}';
                                debugPrint(mobile);
                                context.read<RegisterReferenceBloc>().add(
                                    CheckMobileEvent(
                                        mobile: mobile, isLogin: true));
                              },
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
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
                                        initialValue: countryCode,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(countryCode,
                                                style:
                                                    theme.textTheme.bodyLarge),
                                            const Icon(Icons.arrow_drop_down),
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
                            child:
                                BlocBuilder<MobileInputCubit, MobileInputState>(
                                    builder: (context, mobileState) {
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
                                                  isLogin: true));
                                        },
                                  isDarkMode: isDarkMode,
                                  child: Text(localizations.get('login')));
                            }),
                          ),
                        ),
                        SizedBox(
                          height: size.height / 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              localizations.get('doesnt_have_account'),
                              style: theme.textTheme.bodyMedium,
                            ),
                            SizedBox(
                              width: size.width / 100,
                            ),
                            InkWell(
                                onTap: () {
                                  context.navigateToReplace(
                                      RouteConstants.enterMobile);
                                },
                                child: Text(
                                  localizations.get('register'),
                                  style: theme.textTheme.labelMedium?.copyWith(
                                      decoration: TextDecoration.underline),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ))),
      ),
    );
  }
}
