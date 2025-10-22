import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_business_details/entities/business_type_entity.dart';

part 'business_type_model.freezed.dart';
part 'business_type_model.g.dart';

@freezed
class BusinessTypeModel with _$BusinessTypeModel {
  const factory BusinessTypeModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'business_name') required String businessName,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'process_status') required int processStatus,
    @JsonKey(name: 'auth_status') required String authStatus,
    @JsonKey(name: 'created_time') required DateTime createdTime,
    @JsonKey(name: 'auth_time') required DateTime authTime,
  }) = _BusinessTypeModel;

  factory BusinessTypeModel.fromJson(Map<String, dynamic> json) =>
      _$BusinessTypeModelFromJson(json);
}

extension BusinessTypeModelExtension on BusinessTypeModel {
  BusinessTypeEntity toEntity() => BusinessTypeEntity(
        id: id,
        businessName: businessName,
        description: description,
        status: status,
        processStatus: processStatus,
        authStatus: authStatus,
        createdTime: createdTime,
        authTime: authTime,
      );
}
