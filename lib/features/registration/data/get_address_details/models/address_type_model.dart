import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_address_details/entities/address_type_entity.dart';

part 'address_type_model.freezed.dart';
part 'address_type_model.g.dart';

@freezed
class AddressTypeModel with _$AddressTypeModel {
  const factory AddressTypeModel({
    @JsonKey(name: 'address_type_id') required int addressTypeId,
    @JsonKey(name: 'address_type_desc') required String addressTypeDesc,
    required int status,
    @JsonKey(name: 'process_status') required int processStatus,
    @JsonKey(name: 'auth_status') required String authStatus,
    @JsonKey(name: 'created_time') required String createdTime,
    @JsonKey(name: 'auth_time') required String authTime,
    @JsonKey(name: 'cust_type') required int custType,
    @JsonKey(name: 'mandatory') required bool mandatory,
  }) = _AddressTypeModel;

  factory AddressTypeModel.fromJson(Map<String, dynamic> json) =>
      _$AddressTypeModelFromJson(json);
}

extension AddressTypeModelExtension on AddressTypeModel {
  AddressTypeEntity toEntity() => AddressTypeEntity(
        addressTypeId: addressTypeId,
        addressTypeDesc: addressTypeDesc,
        custType: custType.toString(),
        mandatory: mandatory,
      );
}
