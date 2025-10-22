import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_pep_details_event.freezed.dart';

@freezed
class GetPepDetailsEvent with _$GetPepDetailsEvent {
  const factory GetPepDetailsEvent.getPepOptions() = GetPepOptions;

  const factory GetPepDetailsEvent.getRelationships() = GetRelationships;

  const factory GetPepDetailsEvent.getPepTypes() = GetPepTypes;
}
