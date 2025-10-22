import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/get_personal_details/entities/nationality_entity.dart';

part 'get_additional_personal_details_state.freezed.dart';

@freezed
class GetAdditionalPersonalDetailsState
    with _$GetAdditionalPersonalDetailsState {
  const factory GetAdditionalPersonalDetailsState.initial() =
      GetAdditionalPersonalDetailsInitial;
  const factory GetAdditionalPersonalDetailsState.loading() =
      GetNationalityLoading;
  const factory GetAdditionalPersonalDetailsState.success({
    required List<NationalityEntity> nationalities,
  }) = GetNationalitySuccess;
  const factory GetAdditionalPersonalDetailsState.failure({
    required String message,
  }) = GetNationalityFailure;
}
