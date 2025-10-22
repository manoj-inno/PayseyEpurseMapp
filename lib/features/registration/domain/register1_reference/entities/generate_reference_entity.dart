import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_reference_entity.freezed.dart';
part 'generate_reference_entity.g.dart';

@freezed
class GenerateReference with _$GenerateReference {
  const factory GenerateReference({
    required String regRef,
    required String status,
    required int customerTypeId,
  }) = _GenerateReference;

  factory GenerateReference.fromJson(Map<String, dynamic> json) =>
      _$GenerateReferenceFromJson(json);
}
