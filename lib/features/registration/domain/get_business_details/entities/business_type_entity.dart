import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_type_entity.freezed.dart';
part 'business_type_entity.g.dart';

@freezed
class BusinessTypeEntity with _$BusinessTypeEntity {
  const factory BusinessTypeEntity({
    required int id,
    required String businessName,
    required String description,
    required int status,
    required int processStatus,
    required String authStatus,
    required DateTime createdTime,
    required DateTime authTime,
  }) = _BusinessTypeEntity;

  factory BusinessTypeEntity.fromJson(Map<String, dynamic> json) =>
      _$BusinessTypeEntityFromJson(json);
}
