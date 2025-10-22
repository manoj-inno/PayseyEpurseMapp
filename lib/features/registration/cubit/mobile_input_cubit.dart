import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// State class to hold all mobile input related data
class MobileInputState {
  final TextEditingController mobileController;
  final FocusNode mobileFocusNode;
  final GlobalKey mobileFieldKey;
  final bool isInputValid;

  MobileInputState({
    required this.mobileController,
    required this.mobileFocusNode,
    required this.mobileFieldKey,
    this.isInputValid = false,
  });

  MobileInputState copyWith({
    TextEditingController? mobileController,
    FocusNode? mobileFocusNode,
    GlobalKey? mobileFieldKey,
    bool? isInputValid,
  }) {
    return MobileInputState(
      mobileController: mobileController ?? this.mobileController,
      mobileFocusNode: mobileFocusNode ?? this.mobileFocusNode,
      mobileFieldKey: mobileFieldKey ?? this.mobileFieldKey,
      isInputValid: isInputValid ?? this.isInputValid,
    );
  }
}

class MobileInputCubit extends Cubit<MobileInputState> {
  MobileInputCubit({String? initialMobile})
      : super(MobileInputState(
          mobileController: TextEditingController(text: initialMobile ?? ''),
          mobileFocusNode: FocusNode(),
          mobileFieldKey: GlobalKey(),
        )) {
    // Add listener to focus node to scroll when focused
    state.mobileFocusNode.addListener(_handleFocusChange);

    // Add listener to validate input when text changes
    state.mobileController.addListener(_validateInput);
  }

  void _handleFocusChange() {
    if (state.mobileFocusNode.hasFocus) {
      _scrollToField();
    }
  }

  void _validateInput() {
    final text = state.mobileController.text;
    final isValid = text.isNotEmpty && text.length >= 8 && text.length <= 11;

    if (isValid != state.isInputValid) {
      emit(state.copyWith(isInputValid: isValid));
    }
  }

  void _scrollToField() {
    // Add a delay to ensure keyboard is shown
    Future.delayed(const Duration(milliseconds: 300), () {
      if (state.mobileFieldKey.currentContext != null) {
        Scrollable.ensureVisible(
          state.mobileFieldKey.currentContext!,
          alignment: 0.5,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void updateMobileNumber(String value) {
    state.mobileController.text = value;
  }

  @override
  Future<void> close() {
    // Clean up controllers and focus nodes
    state.mobileController.removeListener(_validateInput);
    state.mobileFocusNode.removeListener(_handleFocusChange);
    state.mobileController.dispose();
    state.mobileFocusNode.dispose();
    return super.close();
  }
}
