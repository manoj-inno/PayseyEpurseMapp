import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/get_personal_details/entities/nationality_entity.dart';

part 'get_additional_personal_details_event.freezed.dart';

@freezed
class GetAdditionalPersonalDetailsEvent
    with _$GetAdditionalPersonalDetailsEvent {
  const factory GetAdditionalPersonalDetailsEvent.getNationality() =
      GetNationalityEvent;
  const factory GetAdditionalPersonalDetailsEvent.selectNationality(
      NationalityEntity nationality) = SelectNationality;
  const factory GetAdditionalPersonalDetailsEvent.close() =
      CloseGetAdditionalPersonalDetailsEvent;
}
