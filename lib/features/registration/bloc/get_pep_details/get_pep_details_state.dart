import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/get_pep_details/entities/pep_entity.dart';
import '../../domain/get_pep_details/entities/pep_type_entity.dart';
import '../../domain/get_pep_details/entities/relation_entity.dart';

part 'get_pep_details_state.freezed.dart';

@freezed
class GetPepDetailsState with _$GetPepDetailsState {
  const factory GetPepDetailsState.initial() = GetPepDetailsInitial;

  const factory GetPepDetailsState.loading() = GetPepDetailsLoading;

  const factory GetPepDetailsState.loaded({
    required List<PepEntity> pepOptions,
    required List<RelationshipEntity> relationships,
    required List<PepTypeEntity> pepTypes,
  }) = GetPepDetailsLoaded;

  const factory GetPepDetailsState.error({
    required String message,
  }) = GetPepDetailsError;
}
