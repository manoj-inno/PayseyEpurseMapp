import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_type_entity.freezed.dart';
part 'account_type_entity.g.dart';

@freezed
class AccountTypeEntity with _$AccountTypeEntity {
  const factory AccountTypeEntity({
    required int id,
    required String typeName,
    required String description,
    required int status,
  }) = _AccountTypeEntity;

  factory AccountTypeEntity.fromJson(Map<String, dynamic> json) =>
      _$AccountTypeEntityFromJson(json);
}
