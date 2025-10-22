// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nationality_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NationalityEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get authStatus => throw _privateConstructorUsedError;

  /// Create a copy of NationalityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NationalityEntityCopyWith<NationalityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NationalityEntityCopyWith<$Res> {
  factory $NationalityEntityCopyWith(
          NationalityEntity value, $Res Function(NationalityEntity) then) =
      _$NationalityEntityCopyWithImpl<$Res, NationalityEntity>;
  @useResult
  $Res call({int id, String name, String description, String authStatus});
}

/// @nodoc
class _$NationalityEntityCopyWithImpl<$Res, $Val extends NationalityEntity>
    implements $NationalityEntityCopyWith<$Res> {
  _$NationalityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NationalityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? authStatus = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NationalityEntityImplCopyWith<$Res>
    implements $NationalityEntityCopyWith<$Res> {
  factory _$$NationalityEntityImplCopyWith(_$NationalityEntityImpl value,
          $Res Function(_$NationalityEntityImpl) then) =
      __$$NationalityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String description, String authStatus});
}

/// @nodoc
class __$$NationalityEntityImplCopyWithImpl<$Res>
    extends _$NationalityEntityCopyWithImpl<$Res, _$NationalityEntityImpl>
    implements _$$NationalityEntityImplCopyWith<$Res> {
  __$$NationalityEntityImplCopyWithImpl(_$NationalityEntityImpl _value,
      $Res Function(_$NationalityEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of NationalityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? authStatus = null,
  }) {
    return _then(_$NationalityEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NationalityEntityImpl implements _NationalityEntity {
  const _$NationalityEntityImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.authStatus});

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String authStatus;

  @override
  String toString() {
    return 'NationalityEntity(id: $id, name: $name, description: $description, authStatus: $authStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NationalityEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, authStatus);

  /// Create a copy of NationalityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NationalityEntityImplCopyWith<_$NationalityEntityImpl> get copyWith =>
      __$$NationalityEntityImplCopyWithImpl<_$NationalityEntityImpl>(
          this, _$identity);
}

abstract class _NationalityEntity implements NationalityEntity {
  const factory _NationalityEntity(
      {required final int id,
      required final String name,
      required final String description,
      required final String authStatus}) = _$NationalityEntityImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get authStatus;

  /// Create a copy of NationalityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NationalityEntityImplCopyWith<_$NationalityEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
