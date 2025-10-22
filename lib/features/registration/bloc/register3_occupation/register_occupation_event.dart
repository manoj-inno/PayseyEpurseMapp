part of 'register_occupation_bloc.dart';

@freezed
class RegisterOccupationEvent with _$RegisterOccupationEvent {
  const factory RegisterOccupationEvent.register({
    required RegisterOccupationModel occupation,
  }) = _Register;
}
