import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_type_entity.freezed.dart';
part 'address_type_entity.g.dart';

@freezed
class AddressTypeEntity with _$AddressTypeEntity {
  const factory AddressTypeEntity({
    required int addressTypeId,
    required String addressTypeDesc,
    required String custType,
    required bool mandatory,
  }) = _AddressTypeEntity;

  factory AddressTypeEntity.fromJson(Map<String, dynamic> json) =>
      _$AddressTypeEntityFromJson(json);
}
