import 'package:flutter_bloc/flutter_bloc.dart';
import 'checkbox_state.dart';

class CheckboxCubit extends Cubit<CheckboxState> {
  CheckboxCubit() : super(const CheckboxState(isChecked: false));

  void toggleCheckbox(bool value) {
    emit(CheckboxState(isChecked: value));
  }
}
