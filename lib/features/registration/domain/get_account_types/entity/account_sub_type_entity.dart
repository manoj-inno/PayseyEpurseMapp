import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_sub_type_entity.freezed.dart';
part 'account_sub_type_entity.g.dart';

@freezed
class AccountSubTypeEntity with _$AccountSubTypeEntity {
  const factory AccountSubTypeEntity({
    required int id,
    required int accountTypeId,
    required int customerTypeId,
    required String subtypeName,
    required String description,
    required int status,
  }) = _AccountSubTypeEntity;

  factory AccountSubTypeEntity.fromJson(Map<String, dynamic> json) =>
      _$AccountSubTypeEntityFromJson(json);
}
