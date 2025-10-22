import 'package:flutter/material.dart';
import '../storage/preferences_manager.dart';
import 'route_constants.dart';

/// Route guard class to handle authentication logic
class RouteGuards {
  /// Check if the user is authenticated
  static Future<bool> isAuthenticated(BuildContext context) async {
    final preferences = await PreferencesManager.getInstance();
    return preferences.isRegistered;
  }

  /// Middleware to protect authenticated routes
  static Future<String> authGuard(
    BuildContext context,
    String targetRouteName,
  ) async {
    final isAuth = await isAuthenticated(context);

    // If the user is not authenticated and trying to access a protected route,
    // redirect them to login
    if (!isAuth) {
      if (_isProtectedRoute(targetRouteName)) {
        return RouteConstants.login;
      }
    }

    // If the user is authenticated and trying to access auth routes,
    // redirect them to dashboard
    if (isAuth) {
      if (_isAuthRoute(targetRouteName)) {
        return RouteConstants.dashboard;
      }
    }

    // Otherwise, allow them to access the target route
    return targetRouteName;
  }

  /// Check if the route is protected (requires authentication)
  static bool _isProtectedRoute(String routeName) {
    final protectedRoutes = [
      RouteConstants.dashboard,
      RouteConstants.profile,
      RouteConstants.settings,
      RouteConstants.payments,
      RouteConstants.amountEntry,
      RouteConstants.transactionDetails,
      RouteConstants.cardSettings,
      RouteConstants.cardLimits,
      RouteConstants.manageCards,
      RouteConstants.addCard,
      RouteConstants.bankingServices,
      RouteConstants.topUp,
      RouteConstants.payBills,
      RouteConstants.selectBillPaymentOperator,
      RouteConstants.mobileRechargePlan,
      RouteConstants.mobileOperatorSelection,
      RouteConstants.atmLocator,
      RouteConstants.allServices,
      RouteConstants.scanQrCode,
      RouteConstants.settings,
    ];

    return protectedRoutes.contains(routeName);
  }

  /// Check if the route is an auth route (login/registration)
  static bool _isAuthRoute(String routeName) {
    final authRoutes = [
      RouteConstants.login,
      RouteConstants.initial,
      RouteConstants.enterMobile,
      RouteConstants.privacyPolicy,
      RouteConstants.termsAndConditions,
      RouteConstants.uploadId,
      RouteConstants.livelinessDetection,
      RouteConstants.kycVerified,
      RouteConstants.idCardDetails,
      RouteConstants.personalDetails,
      RouteConstants.incomeDetails,
      RouteConstants.occupation,
      RouteConstants.businessDetails,
      RouteConstants.addAddress,
      RouteConstants.businessAddress,
      RouteConstants.pep,
      RouteConstants.setPasscode,
      RouteConstants.modeOfOperation,
      RouteConstants.completedRegistration,
    ];

    return authRoutes.contains(routeName);
  }
}
