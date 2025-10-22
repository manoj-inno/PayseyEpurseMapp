import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkbox_state.freezed.dart';

@freezed
class CheckboxState with _$CheckboxState {
  const factory CheckboxState({
    required bool isChecked,
  }) = _CheckboxState;
}
