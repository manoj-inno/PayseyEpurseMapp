# Routing System Usage Examples

This document provides examples of how to use the new routing system in your screens and widgets.

## Import the Routing Package

First, import the routing package in your file:

```dart
import 'package:epurse/core/routing/routing.dart';
```

## Navigation Examples

### Basic Navigation

```dart
// Navigate to a new screen
context.navigateTo(RouteConstants.dashboard);

// Navigate with arguments
context.navigateTo(
  RouteConstants.privacyPolicy,
  arguments: PrivacyPolicyArguments(mobile: mobile),
);
```

### Replace Current Route

```dart
// Replace the current route with a new one
context.navigateToReplace(RouteConstants.login);

// Replace with arguments
context.navigateToReplace(
  RouteConstants.uploadId,
  arguments: UploadIdArguments(
    customerTypeId: entity.userType,
    refNum: entity.regRef,
    showDialogOnInit: true,
  ),
);
```

### Clear Navigation Stack

```dart
// Navigate and remove all previous routes
context.navigateToAndRemoveUntil(RouteConstants.dashboard);
```

### Going Back

```dart
// Go back to previous screen
context.goBack();

// Go back with a result
context.goBackWithResult(result);

// Go back to a specific route
context.goBackToRoute(RouteConstants.dashboard);
```

## Refactoring Example

### Before

```dart
Navigator.of(context).push(MaterialPageRoute(
  builder: (context) => UploadIdScreen(
    customerTypeId: entity.userType,
    refNum: entity.regRef,
    showDialogOnInit: true,
  ),
));
```

### After

```dart
context.navigateTo(
  RouteConstants.uploadId,
  arguments: UploadIdArguments(
    customerTypeId: entity.userType,
    refNum: entity.regRef,
    showDialogOnInit: true,
  ),
);
```

## Updating Main App Routes

When adding new screens to the app:

1. Add a route constant in `route_constants.dart`
2. If the route requires arguments, add an argument class in `route_arguments.dart`
3. Add the route to the switch statement in `route_generator.dart`
4. For protected routes, update the `_isProtectedRoute` or `_isAuthRoute` methods in `route_guards.dart`
