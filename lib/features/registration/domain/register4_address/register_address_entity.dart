import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/register4_address/models/register_address_model.dart';

part 'register_address_entity.freezed.dart';

@freezed
class RegisterAddressEntity with _$RegisterAddressEntity {
  const RegisterAddressEntity._();

  const factory RegisterAddressEntity({
    required List<String> imagePaths,
    required List<Map<String, dynamic>> addressDetails,
    required String refNumber,
  }) = _RegisterAddressEntity;

  factory RegisterAddressEntity.fromModel(RegisterAddressResponseModel model) {
    return RegisterAddressEntity(
      imagePaths: const [],
      addressDetails: const [],
      refNumber: model.data.regInfo.userRef,
    );
  }
}
