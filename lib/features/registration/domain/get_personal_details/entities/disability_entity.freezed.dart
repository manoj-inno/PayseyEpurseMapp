// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disability_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DisabilityEntity {
  int get id => throw _privateConstructorUsedError;
  String get disabilityName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Create a copy of DisabilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisabilityEntityCopyWith<DisabilityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisabilityEntityCopyWith<$Res> {
  factory $DisabilityEntityCopyWith(
          DisabilityEntity value, $Res Function(DisabilityEntity) then) =
      _$DisabilityEntityCopyWithImpl<$Res, DisabilityEntity>;
  @useResult
  $Res call({int id, String disabilityName, String description});
}

/// @nodoc
class _$DisabilityEntityCopyWithImpl<$Res, $Val extends DisabilityEntity>
    implements $DisabilityEntityCopyWith<$Res> {
  _$DisabilityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisabilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? disabilityName = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      disabilityName: null == disabilityName
          ? _value.disabilityName
          : disabilityName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisabilityEntityImplCopyWith<$Res>
    implements $DisabilityEntityCopyWith<$Res> {
  factory _$$DisabilityEntityImplCopyWith(_$DisabilityEntityImpl value,
          $Res Function(_$DisabilityEntityImpl) then) =
      __$$DisabilityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String disabilityName, String description});
}

/// @nodoc
class __$$DisabilityEntityImplCopyWithImpl<$Res>
    extends _$DisabilityEntityCopyWithImpl<$Res, _$DisabilityEntityImpl>
    implements _$$DisabilityEntityImplCopyWith<$Res> {
  __$$DisabilityEntityImplCopyWithImpl(_$DisabilityEntityImpl _value,
      $Res Function(_$DisabilityEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisabilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? disabilityName = null,
    Object? description = null,
  }) {
    return _then(_$DisabilityEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      disabilityName: null == disabilityName
          ? _value.disabilityName
          : disabilityName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DisabilityEntityImpl implements _DisabilityEntity {
  const _$DisabilityEntityImpl(
      {required this.id,
      required this.disabilityName,
      required this.description});

  @override
  final int id;
  @override
  final String disabilityName;
  @override
  final String description;

  @override
  String toString() {
    return 'DisabilityEntity(id: $id, disabilityName: $disabilityName, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisabilityEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.disabilityName, disabilityName) ||
                other.disabilityName == disabilityName) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, disabilityName, description);

  /// Create a copy of DisabilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisabilityEntityImplCopyWith<_$DisabilityEntityImpl> get copyWith =>
      __$$DisabilityEntityImplCopyWithImpl<_$DisabilityEntityImpl>(
          this, _$identity);
}

abstract class _DisabilityEntity implements DisabilityEntity {
  const factory _DisabilityEntity(
      {required final int id,
      required final String disabilityName,
      required final String description}) = _$DisabilityEntityImpl;

  @override
  int get id;
  @override
  String get disabilityName;
  @override
  String get description;

  /// Create a copy of DisabilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisabilityEntityImplCopyWith<_$DisabilityEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
