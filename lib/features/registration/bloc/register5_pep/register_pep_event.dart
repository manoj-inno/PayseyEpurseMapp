part of 'register_pep_bloc.dart';

@freezed
class RegisterPepEvent with _$RegisterPepEvent {
  const factory RegisterPepEvent.submit({
    required RegisterPepRequestModel requestModel,
  }) = _Submit;
}
