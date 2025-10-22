import 'package:flutter_bloc/flutter_bloc.dart';

class IdCardDateSelectionCubit extends Cubit<Map<String, DateTime?>> {
  IdCardDateSelectionCubit(super.initialState);

  void setDate(String key, DateTime? date) {
    emit({...state, key: date});
  }

  DateTime? getDate(String key) => state[key];
}

class IdCardFormValidationCubit extends Cubit<bool> {
  IdCardFormValidationCubit() : super(false);

  void setFormSubmitted(bool isSubmitted) {
    emit(isSubmitted);
  }
}
