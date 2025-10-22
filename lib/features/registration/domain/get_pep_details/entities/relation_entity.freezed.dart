// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RelationshipEntity {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'relationship_name')
  String get relationshipName => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;

  /// Create a copy of RelationshipEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RelationshipEntityCopyWith<RelationshipEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelationshipEntityCopyWith<$Res> {
  factory $RelationshipEntityCopyWith(
          RelationshipEntity value, $Res Function(RelationshipEntity) then) =
      _$RelationshipEntityCopyWithImpl<$Res, RelationshipEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'relationship_name') String relationshipName,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class _$RelationshipEntityCopyWithImpl<$Res, $Val extends RelationshipEntity>
    implements $RelationshipEntityCopyWith<$Res> {
  _$RelationshipEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RelationshipEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? relationshipName = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      relationshipName: null == relationshipName
          ? _value.relationshipName
          : relationshipName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RelationshipEntityImplCopyWith<$Res>
    implements $RelationshipEntityCopyWith<$Res> {
  factory _$$RelationshipEntityImplCopyWith(_$RelationshipEntityImpl value,
          $Res Function(_$RelationshipEntityImpl) then) =
      __$$RelationshipEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'relationship_name') String relationshipName,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class __$$RelationshipEntityImplCopyWithImpl<$Res>
    extends _$RelationshipEntityCopyWithImpl<$Res, _$RelationshipEntityImpl>
    implements _$$RelationshipEntityImplCopyWith<$Res> {
  __$$RelationshipEntityImplCopyWithImpl(_$RelationshipEntityImpl _value,
      $Res Function(_$RelationshipEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RelationshipEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? relationshipName = null,
    Object? description = null,
  }) {
    return _then(_$RelationshipEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      relationshipName: null == relationshipName
          ? _value.relationshipName
          : relationshipName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RelationshipEntityImpl implements _RelationshipEntity {
  const _$RelationshipEntityImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'relationship_name') required this.relationshipName,
      @JsonKey(name: 'description') required this.description});

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'relationship_name')
  final String relationshipName;
  @override
  @JsonKey(name: 'description')
  final String description;

  @override
  String toString() {
    return 'RelationshipEntity(id: $id, relationshipName: $relationshipName, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelationshipEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.relationshipName, relationshipName) ||
                other.relationshipName == relationshipName) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, relationshipName, description);

  /// Create a copy of RelationshipEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelationshipEntityImplCopyWith<_$RelationshipEntityImpl> get copyWith =>
      __$$RelationshipEntityImplCopyWithImpl<_$RelationshipEntityImpl>(
          this, _$identity);
}

abstract class _RelationshipEntity implements RelationshipEntity {
  const factory _RelationshipEntity(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'relationship_name')
          required final String relationshipName,
          @JsonKey(name: 'description') required final String description}) =
      _$RelationshipEntityImpl;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'relationship_name')
  String get relationshipName;
  @override
  @JsonKey(name: 'description')
  String get description;

  /// Create a copy of RelationshipEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelationshipEntityImplCopyWith<_$RelationshipEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
