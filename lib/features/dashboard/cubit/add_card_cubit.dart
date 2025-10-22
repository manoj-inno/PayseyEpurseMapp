import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

// State
class AddCardState extends Equatable {
  final String cardNumber;
  final String cardHolder;
  final String cvv;
  final String expiryDate;
  final bool isCardFlipped;
  final String? error;
  final bool isSubmitting;
  final Map<String, String?> validationErrors;

  const AddCardState({
    this.cardNumber = '',
    this.cardHolder = '',
    this.cvv = '',
    this.expiryDate = '',
    this.isCardFlipped = false,
    this.error,
    this.isSubmitting = false,
    this.validationErrors = const {},
  });

  bool get isValid =>
      validationErrors.isEmpty &&
      cardNumber.isNotEmpty &&
      cardHolder.isNotEmpty &&
      cvv.isNotEmpty &&
      expiryDate.isNotEmpty;

  AddCardState copyWith({
    String? cardNumber,
    String? cardHolder,
    String? cvv,
    String? expiryDate,
    bool? isCardFlipped,
    String? error,
    bool? isSubmitting,
    Map<String, String?>? validationErrors,
  }) {
    return AddCardState(
      cardNumber: cardNumber ?? this.cardNumber,
      cardHolder: cardHolder ?? this.cardHolder,
      cvv: cvv ?? this.cvv,
      expiryDate: expiryDate ?? this.expiryDate,
      isCardFlipped: isCardFlipped ?? this.isCardFlipped,
      error: error,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      validationErrors: validationErrors ?? this.validationErrors,
    );
  }

  @override
  List<Object?> get props => [
        cardNumber,
        cardHolder,
        cvv,
        expiryDate,
        isCardFlipped,
        error,
        isSubmitting,
        validationErrors,
      ];
}

// Cubit
class AddCardCubit extends Cubit<AddCardState> {
  AddCardCubit() : super(const AddCardState());

  void updateCardNumber(String number) {
    final formatted = _formatCardNumber(number);
    final errors = Map<String, String?>.from(state.validationErrors);

    // Validate card number length (16-19 digits)
    final digitsOnly = formatted.replaceAll(RegExp(r'\D'), '');
    if (digitsOnly.length < 16 || digitsOnly.length > 19) {
      errors['cardNumber'] = 'Card number must be between 16 and 19 digits';
    } else {
      errors.remove('cardNumber');
    }

    emit(state.copyWith(
      cardNumber: formatted,
      validationErrors: errors,
    ));
  }

  void updateCardHolder(String name) {
    final errors = Map<String, String?>.from(state.validationErrors);

    // Validate card holder name
    if (name.trim().isEmpty) {
      errors['cardHolder'] = 'Card holder name is required';
    } else if (name.trim().length < 3) {
      errors['cardHolder'] = 'Card holder name is too short';
    } else {
      errors.remove('cardHolder');
    }

    emit(state.copyWith(
      cardHolder: name.toUpperCase(),
      validationErrors: errors,
    ));
  }

  void updateCVV(String cvv) {
    final errors = Map<String, String?>.from(state.validationErrors);

    // Validate CVV (exactly 3 digits)
    if (!RegExp(r'^\d{3}$').hasMatch(cvv)) {
      errors['cvv'] = 'CVV must be 3 digits';
    } else {
      errors.remove('cvv');
    }

    emit(state.copyWith(
      cvv: cvv,
      validationErrors: errors,
    ));
  }

  void updateExpiryDate(String date) {
    final formatted = _formatExpiryDate(date);
    final errors = Map<String, String?>.from(state.validationErrors);

    // Update the text controller to show the slash
    if (date.length == 2 && !date.contains('/')) {
      // Notify UI to update text field value
      emit(state.copyWith(
        expiryDate: '$date/',
        validationErrors: errors,
      ));
      return;
    }

    // Rest of the validation logic
    if (formatted.length == 5) {
      final parts = formatted.split('/');
      if (parts.length == 2) {
        final month = int.tryParse(parts[0]);
        final year = int.tryParse(parts[1]);

        if (month == null || year == null) {
          errors['expiryDate'] = 'Invalid date format';
        } else if (month < 1 || month > 12) {
          errors['expiryDate'] = 'Invalid month';
        } else if (!_isValidExpiryDate(month, year)) {
          errors['expiryDate'] = 'Card has expired';
        } else {
          errors.remove('expiryDate');
        }
      }
    } else if (formatted.isNotEmpty) {
      errors['expiryDate'] = 'Invalid date format';
    }

    emit(state.copyWith(
      expiryDate: formatted,
      validationErrors: errors,
    ));
  }

  bool _isValidExpiryDate(int month, int year) {
    final now = DateTime.now();
    final cardYear = 2000 + year; // Convert YY to YYYY

    // Create a DateTime for the last day of the card's expiry month
    final cardExpiry = DateTime(cardYear, month + 1, 0);

    // Card is valid if it expires after the current date
    return cardExpiry.isAfter(now);
  }

  void flipCard(bool toBack) {
    emit(state.copyWith(isCardFlipped: toBack));
  }

  String _formatCardNumber(String text) {
    text = text.replaceAll(RegExp(r'\s+'), '');
    final result = StringBuffer();
    for (var i = 0; i < text.length; i++) {
      if (i > 0 && i % 4 == 0) {
        result.write(' ');
      }
      result.write(text[i]);
    }
    return result.toString();
  }

  String _formatExpiryDate(String text) {
    // Remove any non-digits
    text = text.replaceAll(RegExp(r'[^\d]'), '');

    // Add slash after two digits if not already there
    if (text.length >= 2) {
      if (text.length == 2 && !text.contains('/')) {
        return '$text/';
      }
      return '${text.substring(0, 2)}/${text.substring(2)}';
    }

    return text;
  }

  Future<void> submitCard() async {
    // Validate all fields before submission
    final errors = Map<String, String?>.from(state.validationErrors);

    if (state.cardNumber.isEmpty) {
      errors['cardNumber'] = 'Card number is required';
    }
    if (state.cardHolder.isEmpty) {
      errors['cardHolder'] = 'Card holder name is required';
    }
    if (state.cvv.isEmpty) {
      errors['cvv'] = 'CVV is required';
    }
    if (state.expiryDate.isEmpty) {
      errors['expiryDate'] = 'Expiry date is required';
    }

    // If there are any validation errors, combine them into a single message
    if (errors.isNotEmpty) {
      final errorMessages =
          errors.values.where((error) => error != null).join('\n• ');

      emit(state.copyWith(
        validationErrors: errors,
        error: '• $errorMessages',
      ));
      return;
    }

    emit(state.copyWith(isSubmitting: true, error: null));
    try {
      // TODO: Implement card submission logic here
      await Future.delayed(const Duration(seconds: 1));
      emit(state.copyWith(isSubmitting: false));
    } catch (e) {
      emit(state.copyWith(
        isSubmitting: false,
        error: 'Failed to add card: ${e.toString()}',
      ));
    }
  }
}
