import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/register1_reference/entities/generate_reference_entity.dart';

part 'generate_reference_model.freezed.dart';

@freezed
class GenerateReferenceModel with _$GenerateReferenceModel {
  const factory GenerateReferenceModel({
    @Default('') String regRef,
    @Default('Success') String status,
    @Default(22) int customerTypeId,
  }) = _GenerateReferenceModel;

  factory GenerateReferenceModel.fromJson(Map<String, dynamic> json) {
    debugPrint("______________GENERATE REFERENCE MODEL FROM JSON____________");
    debugPrint("JSON: $json");
    
    final data = json['data'];
    debugPrint("Data: $data");
    
    return GenerateReferenceModel(
      regRef: data?['user_ref'] ?? '',
      status: json['status'] ?? 'Success',
      customerTypeId: data?['customer_type_id'] ?? 22,
    );
  }

  const GenerateReferenceModel._();

  GenerateReference toEntity() => GenerateReference(
        regRef: regRef,
        status: status,
        customerTypeId: customerTypeId,
      );
}
