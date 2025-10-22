import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer';

import '../../features/banking/presentation/banking_services_screen.dart';
import '../../features/bills/presentation/mobile_operator_selection_screen.dart';
import '../../features/bills/presentation/mobile_recharge_plan_screen.dart';
import '../../features/bills/presentation/pay_bills_screen.dart';
import '../../features/bills/presentation/select_bill_payment_operator_screen.dart';
import '../../features/dashboard/presentation/account_summary_screen.dart';
import '../../features/dashboard/presentation/add_card_screen.dart';
import '../../features/dashboard/presentation/all_services_screen.dart';
import '../../features/dashboard/presentation/card_limits_screen.dart';
import '../../features/dashboard/presentation/card_settings_screen.dart';
import '../../features/dashboard/presentation/dashboard_screen.dart';
import '../../features/dashboard/presentation/manage_cards_screen.dart';
import '../../features/dashboard/presentation/nearest_atm_locator_screen.dart';
import '../../features/dashboard/presentation/scan_qr_code_screen.dart';
import '../../features/dashboard/presentation/top_up_screen.dart';
import '../../features/login/presentation/face_login_screen.dart';
import '../../features/login/presentation/login_screen.dart';
import '../../features/payments/presentation/amount_entry_screen.dart';
import '../../features/payments/presentation/payments_screen.dart';
import '../../features/payments/presentation/select_recipient_screen.dart';
import '../../features/payments/presentation/transaction_details_screen.dart';
import '../../features/registration/presentation/add_address_screen.dart';
import '../../features/registration/presentation/business_address_screen.dart';
import '../../features/registration/presentation/business_details_screen.dart';
import '../../features/registration/presentation/completed_registration_screen.dart';
import '../../features/registration/presentation/customer_type_screen.dart';
import '../../features/registration/presentation/enter_mobile_screen.dart';
import '../../features/registration/presentation/fill_address_screen.dart';
import '../../features/registration/presentation/id_card_details_screen.dart';
import '../../features/registration/presentation/income_details_screen.dart';
import '../../features/registration/presentation/kyc_verified_screen.dart';
import '../../features/registration/presentation/liveliness_detection_screen.dart';
import '../../features/registration/presentation/mode_of_operation_screen.dart';
import '../../features/registration/presentation/occupation_screen.dart';
import '../../features/registration/presentation/pep_screen.dart';
import '../../features/registration/presentation/personal_details_screen.dart';
import '../../features/registration/presentation/privacy_policy_screen.dart';
import '../../features/registration/presentation/set_passcode_screen.dart';
import '../../features/registration/presentation/terms_and_conditions_screen.dart';
import '../../features/registration/presentation/upload_id_screen.dart';
import '../../features/splash/presentation/initial_screen.dart';
import '../../features/splash/presentation/splash_screen.dart';
import '../../features/settings/presentation/set_transaction_pin_screen.dart';
import '../theme/app_themes.dart';
import '../theme/bloc/theme_bloc.dart';
import 'route_arguments.dart';
import 'route_constants.dart';

/// Generates routes for the app using the route name and arguments
class RouteGenerator {
  /// Route generation method that returns the appropriate route
  static Route<dynamic> generateRoute(
      RouteSettings settings, BuildContext context) {
    // Get arguments passed to the route
    final args = settings.arguments;

    switch (settings.name) {
      // Splash and auth routes
      case RouteConstants.splash:
        return _buildRoute(const SplashScreen(), settings);
      case RouteConstants.initial:
        return _buildRoute(const InitialScreen(), settings);
      case RouteConstants.login:
        return _buildRoute(const LoginScreen(), settings);
      case RouteConstants.faceLogin:
        return _buildRoute(const FaceLoginScreen(), settings);

      // Registration routes
      case RouteConstants.enterMobile:
        return _buildRoute(const EnterMobileScreen(), settings);
      case RouteConstants.privacyPolicy:
        if (args is PrivacyPolicyArguments) {
          return _buildRoute(
              PrivacyPolicyScreen(mobile: args.mobile, refNum: args.refNum),
              settings);
        }
        return _errorRoute(
            'Invalid arguments for Privacy Policy Screen', context);
      case RouteConstants.termsAndConditions:
        if (args is TermsAndConditionsArguments) {
          return _buildRoute(
              TermsAndConditionsScreen(
                  mobile: args.mobile, refNum: args.refNum),
              settings);
        }
        return _errorRoute(
            'Invalid arguments for Terms and Conditions Screen', context);
      case RouteConstants.customerType:
        if (args is CustomerTypeArguments) {
          return _buildRoute(CustomerTypeScreen(mobile: args.mobile), settings);
        }
        return _errorRoute(
            'Invalid arguments for Customer Type Screen', context);

      case RouteConstants.uploadId:
        if (args is UploadIdArguments) {
          return _buildRoute(
            UploadIdScreen(
              customerTypeId: args.customerTypeId,
              refNum: args.refNum,
              showDialogOnInit: args.showDialogOnInit,
            ),
            settings,
          );
        }
        return _errorRoute('Invalid arguments for Upload ID Screen', context);

      case RouteConstants.livelinessDetection:
        if (args is LivelinessDetectionArguments) {
          return _buildRoute(
              LivelinessDetectionScreen(
                  refNum: args.refNum,
                  customerTypeId: args.customerTypeId,
                  frontIdFile: args.frontIdFile,
                  backIdFile: args.backIdFile,
                  frontSelfieUrl: args.frontSelfieUrl,
                  fullName: args.fullName,
                  fcn: args.fcn,
                  dateOfBirth: args.dateOfBirth,
                  sex: args.sex,
                  nationality: args.nationality,
                  fin: args.fin,
                  dateOfIssue: args.dateOfIssue,
                  expiryDate: args.expiryDate,
                  phoneNumber: args.phoneNumber,
                  region: args.region,
                  zone: args.zone,
                  woreda: args.woreda),
              settings);
        }
        return _errorRoute(
            'Invalid arguments for Liveliness Detection Screen', context);

      case RouteConstants.kycVerified:
        if (args is KycVerifiedArguments) {
          return _buildRoute(
              KycVerifiedScreen(
                  refNum: args.refNum,
                  customerTypeId: args.customerTypeId,
                  frontIdFile: args.frontIdFile,
                  backIdFile: args.backIdFile,
                  frontSelfieUrl: args.frontSelfieUrl,
                  fullName: args.fullName,
                  fcn: args.fcn,
                  dateOfBirth: args.dateOfBirth,
                  sex: args.sex,
                  nationality: args.nationality,
                  fin: args.fin,
                  dateOfIssue: args.dateOfIssue,
                  expiryDate: args.expiryDate,
                  phoneNumber: args.phoneNumber,
                  region: args.region,
                  zone: args.zone,
                  woreda: args.woreda,
                  faceMatchStatus: args.faceMatchStatus,
                  faceMatchScore: args.faceMatchScore,
                  selfieImage: args.selfieImage),
              settings);
        }
        return _errorRoute(
            'Invalid arguments for Kyc Verified Screen', context);

      case RouteConstants.personalDetails:
        if (args is PersonalDetailsArguments) {
          log('=== ROUTE GENERATOR: Creating PersonalDetailsScreen ===');
          try {
            final screen = PersonalDetailsScreen(
                refNum: args.refNum,
                customerTypeId: args.customerTypeId,
                firstName: args.firstName,
                middleName: args.middleName,
                lastName: args.lastName,
                documentId: args.documentId,
                optionalDocId: args.optionalDocId,
                dob: args.dob,
                dateOfExpiry: args.dateOfExpiry,
                dateOfIssue: args.dateOfIssue);
            log('=== ROUTE GENERATOR: PersonalDetailsScreen created successfully ===');
            return _buildRoute(screen, settings);
          } catch (e) {
            log('=== ROUTE GENERATOR: Error creating PersonalDetailsScreen: $e ===');
            return _errorRoute(
                'Error creating Personal Details Screen: $e', context);
          }
        }
        return _errorRoute(
            'Invalid arguments for Personal Details Screen', context);

      case RouteConstants.idCardDetails:
        if (args is IdCardDetailsArguments) {
          return _buildRoute(
              IdCardDetailsScreen(
                  refNum: args.refNum,
                  customerTypeId: args.customerTypeId,
                  firstName: args.firstName,
                  middleName: args.middleName,
                  lastName: args.lastName,
                  dateOfBirth: args.dateOfBirth,
                  idNumber: args.idNumber,
                  fin: args.fin,
                  dateOfIssue: args.dateOfIssue,
                  dateOfExpiry: args.dateOfExpiry,
                  nationality: args.nationality,
                  sex: args.sex),
              settings);
        }
        return _errorRoute(
            'Invalid arguments for Id Card Details Screen', context);

      case RouteConstants.incomeDetails:
        if (args is IncomeDetailsArguments) {
          return _buildRoute(
              IncomeDetailsScreen(
                  refNum: args.refNum,
                  customerTypeId: args.customerTypeId,
                  firstName: args.firstName,
                  middleName: args.middleName,
                  lastName: args.lastName,
                  nationality: args.nationality,
                  documentId: args.documentId,
                  optionalDocId: args.optionalDocId,
                  dob: args.dob,
                  dateOfExpiry: args.dateOfExpiry,
                  dateOfIssue: args.dateOfIssue,
                  religion: args.religion,
                  category: args.category,
                  gender: args.gender,
                  maritalStatus: args.maritalStatus,
                  disability: args.disability,
                  qualification: args.qualification),
              settings);
        }
        return _errorRoute(
            'Invalid arguments for Income Details Screen', context);

      case RouteConstants.occupation:
        if (args is OccupationArguments) {
          return _buildRoute(
            OccupationScreen(
              customerTypeId: args.customerTypeId,
              refNum: args.refNum,
            ),
            settings,
          );
        }
        return _errorRoute('Invalid arguments for Occupation Screen', context);

      case RouteConstants.businessDetails:
        if (args is BusinessDetailsArguments) {
          return _buildRoute(
            BusinessDetailsScreen(
              refNum: args.refNum,
              customerTypeId: args.customerTypeId,
            ),
            settings,
          );
        }
        return _errorRoute(
            'Invalid arguments for Business Details Screen', context);

      case RouteConstants.addAddress:
        if (args is AddressArguments) {
          return _buildRoute(
            AddAddressScreen(
              refNumber: args.refNumber,
              customerTypeId: args.customerTypeId,
            ),
            settings,
          );
        }
        return _errorRoute('Invalid arguments for Add Address Screen', context);

      case RouteConstants.fillAddress:
        if (args is FillAddressArguments) {
          return _buildRoute(
            FillAddressScreen(
              refNumber: args.refNumber,
              addressType: args.addressType,
              addressTypeId: args.addressTypeId,
              customerTypeId: args.customerTypeId,
            ),
            settings,
          );
        }
        return _errorRoute(
            'Invalid arguments for Fill Address Screen', context);

      case RouteConstants.businessAddress:
        if (args is BusinessAddressArguments) {
          return _buildRoute(
            BusinessAddressScreen(
              refNumber: args.refNumber,
              customerTypeId: args.customerTypeId,
            ),
            settings,
          );
        }
        return _errorRoute(
            'Invalid arguments for Business Address Screen', context);

      case RouteConstants.pep:
        if (args is PepArguments) {
          return _buildRoute(
            PepScreen(refNumber: args.refNumber),
            settings,
          );
        }
        return _errorRoute('Invalid arguments for PEP Screen', context);

      case RouteConstants.setPasscode:
        if (args is PasscodeArguments) {
          return _buildRoute(
            SetPasscodeScreen(refNumber: args.refNumber),
            settings,
          );
        }
        return _errorRoute(
            'Invalid arguments for Set Passcode Screen', context);

      case RouteConstants.modeOfOperation:
        if (args is ModeOfOperationArguments) {
          return _buildRoute(
            ModeOfOperationScreen(refNumber: args.refNumber),
            settings,
          );
        }
        return _errorRoute(
            'Invalid arguments for Mode of Operation Screen', context);

      case RouteConstants.completedRegistration:
        if (args is CompletedRegistrationArguments) {
          return _buildRoute(
              CompletedRegistrationScreen(refNumber: args.refNumber), settings);
        }
        return _errorRoute(
            'Invalid arguments for Completed Registration Screen', context);

      // Main app routes
      case RouteConstants.dashboard:
        return _buildRoute(const DashboardScreen(), settings);
      case RouteConstants.allServices:
        return _buildRoute(const AllServicesScreen(), settings);

      case RouteConstants.accountSummary:
        return _buildRoute(const AccountSummaryScreen(), settings);

      case RouteConstants.topUp:
        return _buildRoute(const TopUpScreen(), settings);

      case RouteConstants.bankingServices:
        return _buildRoute(const BankingServicesScreen(), settings);

      // Cards routes
      case RouteConstants.manageCards:
        return _buildRoute(const ManageCardsScreen(), settings);
      case RouteConstants.addCard:
        return _buildRoute(const AddCardScreen(), settings);
      case RouteConstants.cardSettings:
        if (args is CardSettingsArguments) {
          return _buildRoute(
              CardSettingsScreen(cardIndex: args.cardIndex), settings);
        }
        return _errorRoute(
            'Invalid arguments for Card Settings Screen', context);
      case RouteConstants.cardLimits:
        if (args is CardLimitsArguments) {
          return _buildRoute(
              CardLimitsScreen(cardNumber: args.cardNumber), settings);
        }
        return _errorRoute('Invalid arguments for Card Limits Screen', context);

      // Mobile recharge routes
      case RouteConstants.mobileOperatorSelection:
        return _buildRoute(MobileOperatorSelectionScreen(), settings);
      case RouteConstants.mobileRechargePlan:
        return _buildRoute(MobileRechargePlanScreen(), settings);

      // Payments routes
      case RouteConstants.selectRecipient:
        return _buildRoute(SelectRecipientScreen(), settings);
      case RouteConstants.payments:
        if (args is PaymentsArguments) {
          return _buildRoute(
              PaymentsScreen(
                  recipientName: args.recipientName,
                  recipientNumber: args.recipientNumber,
                  userId: args.userId),
              settings);
        }
        return _errorRoute('Invalid arguments for Payments Screen', context);

      case RouteConstants.amountEntry:
        if (args is AmountEntryArguments) {
          return _buildRoute(
              AmountEntryScreen(
                  type: args.type,
                  amount: args.amount,
                  receiver: args.receiver,
                  receiverNumber: args.receiverNumber,
                  userId: args.userId),
              settings);
        }
        return _errorRoute(
            'Invalid arguments for Amount Entry Screen', context);

      case RouteConstants.transactionDetails:
        if (args is TransactionDetailsArguments) {
          return _buildRoute(
              TransactionDetailsScreen(
                transactionType: args.transactionType,
                transactionId: args.transactionId,
                amount: args.amount,
                senderName: args.senderName,
                receiverName: args.receiverName,
                receiverNumber: args.receiverNumber,
                timestamp: args.timestamp,
                isSuccess: args.isSuccess,
                errorMessage: args.errorMessage,
                isInsufficientBalance: args.isInsufficientBalance,
              ),
              settings);
        }
        return _errorRoute(
            'Invalid arguments for Transaction Details Screen', context);

      case RouteConstants.setTransactionPin:
        return _buildRoute(const SetTransactionPinScreen(), settings);

      case RouteConstants.scanQrCode:
        return _buildRoute(ScanQrCodeScreen(), settings);

      // Bills routes
      case RouteConstants.payBills:
        return _buildRoute(PayBillsScreen(), settings);
      case RouteConstants.selectBillPaymentOperator:
        if (args is SelectBillPaymentOperatorArguments) {
          return _buildRoute(
              SelectBillPaymentOperatorScreen(
                  billTypeId: args.billTypeId, billType: args.billType),
              settings);
        }
        return _errorRoute(
            'Invalid arguments for Select Bill Payment Operator Screen',
            context);

      case RouteConstants.atmLocator:
        return _buildRoute(NearestAtmLocatorScreen(), settings);

      // Default case - if the route is not found
      default:
        return _errorRoute('Route not found: ${settings.name}', context);
    }
  }

  /// Helper method to build a MaterialPageRoute with transition animations
  static Route<dynamic> _buildRoute(Widget page, RouteSettings settings) {
    log('=== _buildRoute: Building route for ${page.runtimeType} ===');
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) {
        log('=== _buildRoute: pageBuilder called for ${page.runtimeType} ===');
        log('=== _buildRoute: Returning page: ${page.runtimeType} ===');
        return page;
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        log('=== _buildRoute: transitionsBuilder called for ${page.runtimeType} ===');
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
    );
  }

  /// Helper method to create an error route
  static Route<dynamic> _errorRoute(String message, BuildContext context) {
    final isDarkMode = context.watch<ThemeBloc>().state.maybeWhen(
          loaded: (isDark) => isDark,
          orElse: () => false,
        );
    return MaterialPageRoute(
      builder: (_) => Container(
        decoration: AppThemes.scaffoldBackgroundDecoration(
          isDark: isDarkMode,
          isPrimary: true,
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                message,
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
