part of 'register_address_bloc.dart';

@freezed
class RegisterAddressEvent with _$RegisterAddressEvent {
  const factory RegisterAddressEvent.submit({
    required RegisterAddressRequestModel requestModel,
    required String refNumber,
    required String customerTypeId,
  }) = _Submit;
}
