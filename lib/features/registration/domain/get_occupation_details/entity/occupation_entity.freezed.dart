// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'occupation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OccupationEntity {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'occupation_name')
  String get occupationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;

  /// Create a copy of OccupationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OccupationEntityCopyWith<OccupationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccupationEntityCopyWith<$Res> {
  factory $OccupationEntityCopyWith(
          OccupationEntity value, $Res Function(OccupationEntity) then) =
      _$OccupationEntityCopyWithImpl<$Res, OccupationEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'occupation_name') String occupationName,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class _$OccupationEntityCopyWithImpl<$Res, $Val extends OccupationEntity>
    implements $OccupationEntityCopyWith<$Res> {
  _$OccupationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OccupationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? occupationName = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      occupationName: null == occupationName
          ? _value.occupationName
          : occupationName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OccupationEntityImplCopyWith<$Res>
    implements $OccupationEntityCopyWith<$Res> {
  factory _$$OccupationEntityImplCopyWith(_$OccupationEntityImpl value,
          $Res Function(_$OccupationEntityImpl) then) =
      __$$OccupationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'occupation_name') String occupationName,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class __$$OccupationEntityImplCopyWithImpl<$Res>
    extends _$OccupationEntityCopyWithImpl<$Res, _$OccupationEntityImpl>
    implements _$$OccupationEntityImplCopyWith<$Res> {
  __$$OccupationEntityImplCopyWithImpl(_$OccupationEntityImpl _value,
      $Res Function(_$OccupationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OccupationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? occupationName = null,
    Object? description = null,
  }) {
    return _then(_$OccupationEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      occupationName: null == occupationName
          ? _value.occupationName
          : occupationName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OccupationEntityImpl implements _OccupationEntity {
  const _$OccupationEntityImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'occupation_name') required this.occupationName,
      @JsonKey(name: 'description') required this.description});

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'occupation_name')
  final String occupationName;
  @override
  @JsonKey(name: 'description')
  final String description;

  @override
  String toString() {
    return 'OccupationEntity(id: $id, occupationName: $occupationName, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OccupationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.occupationName, occupationName) ||
                other.occupationName == occupationName) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, occupationName, description);

  /// Create a copy of OccupationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OccupationEntityImplCopyWith<_$OccupationEntityImpl> get copyWith =>
      __$$OccupationEntityImplCopyWithImpl<_$OccupationEntityImpl>(
          this, _$identity);
}

abstract class _OccupationEntity implements OccupationEntity {
  const factory _OccupationEntity(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'occupation_name') required final String occupationName,
      @JsonKey(name: 'description')
      required final String description}) = _$OccupationEntityImpl;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'occupation_name')
  String get occupationName;
  @override
  @JsonKey(name: 'description')
  String get description;

  /// Create a copy of OccupationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OccupationEntityImplCopyWith<_$OccupationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
