import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_mobile_entity.freezed.dart';
part 'check_mobile_entity.g.dart';

@freezed
class MobileCheckEntity with _$MobileCheckEntity {
  const factory MobileCheckEntity({
    required int code,
    required String message,
    required String regRef,
    required int regStatus,
    required int userType,
    required String remark,
  }) = _MobileCheckEntity;

  factory MobileCheckEntity.fromJson(Map<String, dynamic> json) =>
      _$MobileCheckEntityFromJson(json);
}
