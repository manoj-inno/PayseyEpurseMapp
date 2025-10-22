import 'package:freezed_annotation/freezed_annotation.dart';

part 'salary_range_entity.freezed.dart';

@freezed
class SalaryRangeEntity with _$SalaryRangeEntity {
  const factory SalaryRangeEntity({
    required int id,
    required int minSalary,
    required int maxSalary,
    required String description,
    required int status,
    required int processStatus,
    required String authStatus,
  }) = _SalaryRangeEntity;
}
