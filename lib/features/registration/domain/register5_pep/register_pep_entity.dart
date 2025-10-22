import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_pep_entity.freezed.dart';

@freezed
class RegisterPepEntity with _$RegisterPepEntity {
  const factory RegisterPepEntity({
    required String userRef,
    required int relationship,
    required String pepName,
    required String pepPosition,
    required int nationality,
    required int pepType,
  }) = _RegisterPepEntity;
}
