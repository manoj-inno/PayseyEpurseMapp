/// Contains constants for all route names used in the app.
class RouteConstants {
  // Auth routes
  static const String splash = '/';
  static const String initial = '/initial';
  static const String login = '/login';
  static const String faceLogin = '/face-login';

  // Registration routes
  static const String enterMobile = '/enter-mobile';
  static const String privacyPolicy = '/privacy-policy';
  static const String termsAndConditions = '/terms-and-conditions';
  static const String customerType = '/customer-type';
  static const String uploadId = '/upload-id';
  static const String livelinessDetection = '/liveliness-detection';
  static const String kycVerified = '/kyc-verified';
  static const String idCardDetails = '/id-card-details';
  static const String personalDetails = '/personal-details';
  static const String incomeDetails = '/income-details';
  static const String occupation = '/occupation';
  static const String businessDetails = '/business-details';
  static const String businessAddress = '/business-address';
  static const String addAddress = '/add-address';
  static const String fillAddress = '/fill-address';
  static const String pep = '/pep';
  static const String setPasscode = '/set-passcode';
  static const String modeOfOperation = '/mode-of-operation';
  static const String completedRegistration = '/completed-registration';

  // Main app routes
  static const String dashboard = '/dashboard';
  static const String allServices = '/all-services';

  // Bills routes
  static const String payBills = '/pay-bills';
  static const String selectBillPaymentOperator =
      '/select-bill-payment-operator';

  // Account routes
  static const String accountSummary = '/account-summary';
  static const String topUp = '/top-up';
  static const String bankingServices = '/banking-services';

  // Cards routes
  static const String manageCards = '/manage-cards';
  static const String addCard = '/add-card';
  static const String cardSettings = '/card-settings';
  static const String cardLimits = '/card-limits';

  // Payment routes
  static const String selectRecipient = '/select-recipient';
  static const String payments = '/payments';
  static const String amountEntry = '/amount-entry';
  static const String transactionDetails = '/transaction-details';
  static const String scanQrCode = '/scan-qr-code';
  static const String setTransactionPin = '/set-transaction-pin';

  // Mobile recharge routes
  static const String mobileOperatorSelection = '/mobile-operator-selection';
  static const String mobileRechargePlan = '/mobile-recharge-plan';
  // Settings routes
  static const String settings = '/settings';

  // Profile routes
  static const String profile = '/profile';

  // ATM locator
  static const String atmLocator = '/atm-locator';

  // Error routes
  static const String error = '/error';
}
