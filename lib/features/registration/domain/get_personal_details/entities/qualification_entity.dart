import 'package:freezed_annotation/freezed_annotation.dart';

part 'qualification_entity.freezed.dart';

@freezed
class QualificationEntity with _$QualificationEntity {
  const factory QualificationEntity({
    required int id,
    required String qualificationName,
    required String description,
  }) = _QualificationEntity;
}
