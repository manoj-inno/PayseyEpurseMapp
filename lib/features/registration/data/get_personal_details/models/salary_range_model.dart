import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_personal_details/entities/salary_range_entity.dart';

part 'salary_range_model.freezed.dart';
part 'salary_range_model.g.dart';

@freezed
class SalaryRangeModel with _$SalaryRangeModel {
  const factory SalaryRangeModel({
    required int id,
    @JsonKey(name: 'min_salary') required int minSalary,
    @JsonKey(name: 'max_salary') required int maxSalary,
    required String description,
    required int status,
    @JsonKey(name: 'process_status') required int processStatus,
    @JsonKey(name: 'auth_status') required String authStatus,
  }) = _SalaryRangeModel;

  factory SalaryRangeModel.fromJson(Map<String, dynamic> json) =>
      _$SalaryRangeModelFromJson(json);
}

extension SalaryRangeModelExtension on SalaryRangeModel {
  SalaryRangeEntity toEntity() => SalaryRangeEntity(
        id: id,
        minSalary: minSalary,
        maxSalary: maxSalary,
        description: description,
        status: status,
        processStatus: processStatus,
        authStatus: authStatus,
      );
}
