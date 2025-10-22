import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/error_snackbar.dart';
import '../../../core/widgets/otp_bottom_sheet.dart';

// Define our possible states
abstract class BalanceVisibilityState {
  const BalanceVisibilityState();
}

class BalanceObscured extends BalanceVisibilityState {
  const BalanceObscured();
}

class BalanceVisible extends BalanceVisibilityState {
  const BalanceVisible();
}

class ShowingBottomSheet extends BalanceVisibilityState {
  const ShowingBottomSheet();
}

class BalanceVisibilityCubit extends Cubit<BalanceVisibilityState> {
  BalanceVisibilityCubit() : super(const BalanceObscured());
  bool isVisible() => state is BalanceVisible;
  void obscureBalance() {
    emit(const BalanceObscured());
  }

  void showBalance() {
    emit(const BalanceVisible());
  }

  void toggleVisibility(BuildContext context) {
    if (state is BalanceVisible) {
      obscureBalance();
    } else if (state is BalanceObscured) {
      emit(const ShowingBottomSheet());

      showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return OtpBottomSheet(
                numberOfFields: 6,
                showResendButton: false,
                onVerifyTap: (pin) {
                  if (pin == "111111") {
                    emit(const BalanceVisible());
                  } else {
                    emit(const BalanceObscured());
                    showErrorSnackBar(context, "Invalid PIN");
                  }
                },
                title: "Enter PIN",
                subTitle: "Enter the 6-digit PIN to show your Balance",
                buttonText: "Confirm",
                mobile: "",
                obscureText: true);
          }).then((_) {
        if (state is ShowingBottomSheet) {
          emit(const BalanceObscured());
        }
      });
    }
  }
}
