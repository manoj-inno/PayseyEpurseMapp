import 'package:freezed_annotation/freezed_annotation.dart';

part 'relation_entity.freezed.dart';

@freezed
class RelationshipEntity with _$RelationshipEntity {
  const factory RelationshipEntity({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'relationship_name') required String relationshipName,
    @JsonKey(name: 'description') required String description,
  }) = _RelationshipEntity;
}
