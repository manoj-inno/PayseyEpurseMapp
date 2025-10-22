import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_type_entity.freezed.dart';
part 'customer_type_entity.g.dart';

@freezed
class CustomerTypeEntity with _$CustomerTypeEntity {
  const factory CustomerTypeEntity({
    required int id,
    required String typeName,
    required String description,
    required int status,
  }) = _CustomerTypeEntity;

  factory CustomerTypeEntity.fromJson(Map<String, dynamic> json) =>
      _$CustomerTypeEntityFromJson(json);
}
