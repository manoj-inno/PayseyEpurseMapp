import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/get_pep_details/entities/relation_entity.dart';

part 'relation_model.freezed.dart';
part 'relation_model.g.dart';

@freezed
class RelationshipModel with _$RelationshipModel {
  const factory RelationshipModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'relationship_name') required String relationshipName,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'status') required int status,
    @JsonKey(name: 'process_status') required int processStatus,
    @JsonKey(name: 'auth_status') required String authStatus,
    @JsonKey(name: 'created_time') required DateTime createdTime,
    @JsonKey(name: 'auth_time') required DateTime authTime,
    @JsonKey(name: 'created_userid') required int createdUserId,
    @JsonKey(name: 'auth_userid') required int authUserId,
    @JsonKey(name: 'deauth_narration') required String deauthNarration,
  }) = _RelationshipModel;
  factory RelationshipModel.fromJson(Map<String, dynamic> json) =>
      _$RelationshipModelFromJson(json);
}

extension RelationshipModelExtension on RelationshipModel {
  RelationshipEntity toEntity() => RelationshipEntity(
        id: id,
        relationshipName: relationshipName,
        description: description,
      );
}
