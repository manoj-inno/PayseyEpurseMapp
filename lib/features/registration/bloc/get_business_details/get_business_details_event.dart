import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_business_details_event.freezed.dart';

@freezed
class GetBusinessDetailsEvent with _$GetBusinessDetailsEvent {
  const factory GetBusinessDetailsEvent.fetchBusinessTypes() =
      FetchBusinessTypes;

  const factory GetBusinessDetailsEvent.fetchModeOfOperations() =
      FetchModeOfOperations;

  const factory GetBusinessDetailsEvent.fetchTurnovers() = FetchTurnovers;
}
