import 'package:epurse/core/theme/bloc/theme_event.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/injection/injection_container.dart' as di;
import 'core/observer/app_bloc_observer.dart';
import 'core/usecase/textformfield/cubit.dart';
import 'features/connectivity/bloc/connectivity_event.dart';
import 'features/dashboard/cubit/balance_visibility_cubit.dart';
import 'features/dashboard/bloc/atm_locator/atm_locator_bloc.dart';
import 'features/dashboard/cubit/add_card_cubit.dart';
import 'features/dashboard/cubit/chart_cubit.dart';
import 'features/dashboard/cubit/pie_chart_cubit.dart';
import 'features/login/bloc/login/login_bloc.dart';
import 'features/login/cubit/face_login_cubit.dart';
import 'core/notification/bloc/notification_bloc.dart';
import 'features/payments/bloc/get_recipients/get_recipients_bloc.dart';
import 'features/payments/cubit/transaction_type_cubit.dart';
import 'features/registration/bloc/register6_save_passcode/register_save_passcode_bloc.dart';
import 'features/registration/bloc/get_account_types/customer_type_bloc.dart';
import 'features/registration/bloc/get_additional_personal_details/get_additional_personal_details_bloc.dart';
import 'features/registration/bloc/get_address_details/get_address_details_bloc.dart';
import 'features/registration/bloc/get_business_details/get_business_details_bloc.dart';
import 'features/registration/bloc/get_occupation_details/get_occupation_details_bloc.dart';
import 'features/registration/bloc/get_pep_details/get_pep_details_bloc.dart';
import 'features/registration/bloc/get_personal_details/get_personal_details_bloc.dart';
import 'features/registration/bloc/id_card_extraction/back_image_extraction/back_image_extraction_bloc.dart';
import 'features/registration/bloc/id_card_extraction/front_image_extraction/front_image_extraction_bloc.dart';
import 'features/registration/bloc/liveliness_detection/liveliness_detection_bloc.dart';
import 'features/registration/bloc/register1_reference/register_reference_bloc.dart';
import 'features/registration/bloc/register2_kyc/register_kyc_bloc.dart';
import 'features/registration/bloc/register3_occupation/register_occupation_bloc.dart';
import 'features/registration/bloc/register4_address/register_address_bloc.dart';
import 'features/registration/bloc/register5_pep/register_pep_bloc.dart';
import 'features/registration/bloc/register7_business_details/register_business_details_bloc.dart';
import 'features/registration/bloc/register8_mode_of_op/register_mode_of_op_bloc.dart';
import 'features/registration/bloc/upload_image/upload_image_bloc.dart';
import 'features/registration/cubit/country_code/country_code_cubit.dart';
import 'features/registration/cubit/mobile_input_cubit.dart';
import 'features/registration/bloc/address_management/address_management_bloc.dart';
import 'core/firebase/firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'core/language/app_localizations.dart';
import 'core/language/bloc/language_bloc.dart';
import 'core/language/bloc/language_event.dart';
import 'core/language/bloc/language_state.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/theme/app_themes.dart';
import 'core/theme/bloc/theme_bloc.dart';
import 'core/theme/bloc/theme_state.dart' as theme_state;
import 'features/connectivity/bloc/connectivity_bloc.dart';
import 'features/connectivity/widget/connectivity_wrapper.dart';
import 'core/api/api_config.dart';
import 'features/splash/cubit/device_id_cubit.dart';
import 'core/api/environment.dart';
import 'core/routing/routing.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  debugPrint("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  EnvironmentConfig.setEnvironment(Environment.production);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await di.initializeDependencies();
  Bloc.observer = AppBlocObserver();
  await ApiConfig.loadEnv();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DeviceIdCubit>(
          create: (context) => di.sl<DeviceIdCubit>(),
        ),
        BlocProvider<NotificationBloc>(
          create: (context) => di.sl<NotificationBloc>()
            ..add(const NotificationEvent.initializeNotifications()),
        ),
        BlocProvider<LanguageBloc>(
          create: (context) => di.sl<LanguageBloc>()
            ..add(const LanguageEvent.initializeLanguage()),
        ),
        BlocProvider<ThemeBloc>(
          create: (context) =>
              di.sl<ThemeBloc>()..add(const ThemeEvent.initializeTheme()),
        ),
        BlocProvider<TextFormFieldControllerManagerCubit>(
          create: (context) => di.sl<TextFormFieldControllerManagerCubit>(),
        ),
        BlocProvider<RegisterReferenceBloc>(
          create: (context) => di.sl<RegisterReferenceBloc>(),
        ),
        BlocProvider<CountryCodeCubit>(
          create: (context) => di.sl<CountryCodeCubit>(),
        ),
        BlocProvider<MobileInputCubit>(
          create: (context) => di.sl<MobileInputCubit>(),
        ),
        BlocProvider<CustomerTypeBloc>(
          create: (context) => di.sl<CustomerTypeBloc>(),
        ),
        BlocProvider<FrontImageExtractionBloc>(
          create: (context) => di.sl<FrontImageExtractionBloc>(),
        ),
        BlocProvider<BackImageExtractionBloc>(
          create: (context) => di.sl<BackImageExtractionBloc>(),
        ),
        BlocProvider<LivelinessDetectionBloc>(
          create: (context) => di.sl<LivelinessDetectionBloc>(),
        ),
        BlocProvider<GetPersonalDetailsBloc>(
          create: (context) => di.sl<GetPersonalDetailsBloc>(),
        ),
        BlocProvider<GetOccupationDetailsBloc>(
          create: (context) => di.sl<GetOccupationDetailsBloc>(),
        ),
        BlocProvider<GetAddressDetailsBloc>(
          create: (context) => di.sl<GetAddressDetailsBloc>(),
        ),
        BlocProvider<GetPepDetailsBloc>(
          create: (context) => di.sl<GetPepDetailsBloc>(),
        ),
        BlocProvider<TransactionTypeCubit>(
          create: (context) => di.sl<TransactionTypeCubit>(),
        ),
        BlocProvider<ConnectivityBloc>(
          create: (context) => di.sl<ConnectivityBloc>()
            ..add(const ConnectivityEvent.initialize()),
        ),
        BlocProvider<RegisterKycBloc>(
          create: (context) => di.sl<RegisterKycBloc>(),
        ),
        BlocProvider<UploadImageBloc>(
          create: (context) => di.sl<UploadImageBloc>(),
        ),
        BlocProvider<FaceLoginCubit>(
          create: (context) => di.sl<FaceLoginCubit>(),
        ),
        BlocProvider<RegisterOccupationBloc>(
          create: (context) => di.sl<RegisterOccupationBloc>(),
        ),
        BlocProvider<RegisterPepBloc>(
          create: (context) => di.sl<RegisterPepBloc>(),
        ),
        BlocProvider<AddressManagementBloc>(
          create: (context) => di.sl<AddressManagementBloc>(),
        ),
        BlocProvider<RegisterAddressBloc>(
          create: (context) => di.sl<RegisterAddressBloc>(),
        ),
        BlocProvider<BalanceVisibilityCubit>(
          create: (context) => di.sl<BalanceVisibilityCubit>(),
        ),
        BlocProvider<AddCardCubit>(
          create: (context) => di.sl<AddCardCubit>(),
        ),
        BlocProvider<AtmLocatorBloc>(
          create: (context) => di.sl<AtmLocatorBloc>(),
        ),
        BlocProvider<GetBusinessDetailsBloc>(
          create: (context) => di.sl<GetBusinessDetailsBloc>(),
        ),
        BlocProvider<GetAdditionalPersonalDetailsBloc>(
          create: (context) => di.sl<GetAdditionalPersonalDetailsBloc>(),
        ),
        BlocProvider<RegisterSavePasscodeBloc>(
          create: (context) => di.sl<RegisterSavePasscodeBloc>(),
        ),
        BlocProvider<RegisterBusinessDetailsBloc>(
          create: (context) => di.sl<RegisterBusinessDetailsBloc>(),
        ),
        BlocProvider<RegisterModeOfOpBloc>(
          create: (context) => di.sl<RegisterModeOfOpBloc>(),
        ),
        BlocProvider<LoginBloc>(
          create: (context) => di.sl<LoginBloc>(),
        ),
        BlocProvider<GetRecipientsBloc>(
          create: (context) => di.sl<GetRecipientsBloc>(),
        ),
        BlocProvider<PieChartCubit>(
          create: (context) => di.sl<PieChartCubit>(),
        ),
        BlocProvider<ChartCubit>(
          create: (context) => di.sl<ChartCubit>(),
        ),
      ],
      child: BlocBuilder<LanguageBloc, LanguageState>(
        builder: (context, languageState) {
          return BlocBuilder<ThemeBloc, theme_state.ThemeState>(
            builder: (context, themeState) {
              return MaterialApp(
                title: 'ePurse',
                theme: AppThemes.lightTheme,
                darkTheme: AppThemes.darkTheme,
                themeMode: themeState.maybeWhen(
                      loaded: (isDark) =>
                          isDark ? ThemeMode.dark : ThemeMode.light,
                      orElse: () => ThemeMode.light,
                    ) ??
                    ThemeMode.light,
                locale: languageState.maybeWhen(
                      loaded: (locale) => locale,
                      orElse: () => const Locale('en'),
                    ) ??
                    const Locale('en'),
                supportedLocales: AppLocalizations.supportedLocales,
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                navigatorKey: NavigationService().navigatorKey,
                onGenerateRoute: (settings) =>
                    RouteGenerator.generateRoute(settings, context),
                initialRoute: RouteConstants.splash,
                builder: (context, child) {
                  return ConnectivityWrapper(
                    child: child ?? const SizedBox(),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}


/** Bugs to fix
 * 1. In corporate user type if the progress score is 50 then it has to go to Mode of Operation screen but currently it's going to PEP type,
 * 2. In corporate 
 * 
 * 
 * Backend Bugs to fix
 * 1. I can able to login to other user which is registered for different device
 * 2. Passcode is wrong, i have entered 222222 while registration but while login if i'm entering 222222
 *    then it's not working, but if i'm entering 111111 then it's working.
 */
