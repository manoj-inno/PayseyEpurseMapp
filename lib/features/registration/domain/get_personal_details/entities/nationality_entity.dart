import 'package:freezed_annotation/freezed_annotation.dart';

part 'nationality_entity.freezed.dart';

@freezed
class NationalityEntity with _$NationalityEntity {
  const factory NationalityEntity({
    required int id,
    required String name,
    required String description,
    required String authStatus,
  }) = _NationalityEntity;
}
