import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_personal_details/entities/nationality_entity.dart';

part 'nationality_model.freezed.dart';
part 'nationality_model.g.dart';

@freezed
class NationalityModel with _$NationalityModel {
  const factory NationalityModel({
    required int id,
    @JsonKey(name: 'nationality_name') required String name,
    required String description,
    @JsonKey(name: 'auth_status') required String authStatus,
  }) = _NationalityModel;

  factory NationalityModel.fromJson(Map<String, dynamic> json) =>
      _$NationalityModelFromJson(json);
}

extension NationalityModelExtension on NationalityModel {
  NationalityEntity toEntity() => NationalityEntity(
        id: id,
        name: name,
        description: description,
        authStatus: authStatus,
      );
}
