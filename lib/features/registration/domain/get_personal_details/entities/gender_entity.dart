import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender_entity.freezed.dart';

@freezed
class GenderEntity with _$GenderEntity {
  const factory GenderEntity({
    required int id,
    required String genderName,
  }) = _GenderEntity;
}
