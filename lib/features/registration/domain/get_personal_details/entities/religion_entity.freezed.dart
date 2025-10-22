// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'religion_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReligionEntity {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'religion_name')
  String get religionName => throw _privateConstructorUsedError;

  /// Create a copy of ReligionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReligionEntityCopyWith<ReligionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReligionEntityCopyWith<$Res> {
  factory $ReligionEntityCopyWith(
          ReligionEntity value, $Res Function(ReligionEntity) then) =
      _$ReligionEntityCopyWithImpl<$Res, ReligionEntity>;
  @useResult
  $Res call({int id, @JsonKey(name: 'religion_name') String religionName});
}

/// @nodoc
class _$ReligionEntityCopyWithImpl<$Res, $Val extends ReligionEntity>
    implements $ReligionEntityCopyWith<$Res> {
  _$ReligionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReligionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? religionName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      religionName: null == religionName
          ? _value.religionName
          : religionName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReligionEntityImplCopyWith<$Res>
    implements $ReligionEntityCopyWith<$Res> {
  factory _$$ReligionEntityImplCopyWith(_$ReligionEntityImpl value,
          $Res Function(_$ReligionEntityImpl) then) =
      __$$ReligionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'religion_name') String religionName});
}

/// @nodoc
class __$$ReligionEntityImplCopyWithImpl<$Res>
    extends _$ReligionEntityCopyWithImpl<$Res, _$ReligionEntityImpl>
    implements _$$ReligionEntityImplCopyWith<$Res> {
  __$$ReligionEntityImplCopyWithImpl(
      _$ReligionEntityImpl _value, $Res Function(_$ReligionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReligionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? religionName = null,
  }) {
    return _then(_$ReligionEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      religionName: null == religionName
          ? _value.religionName
          : religionName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReligionEntityImpl implements _ReligionEntity {
  const _$ReligionEntityImpl(
      {required this.id,
      @JsonKey(name: 'religion_name') required this.religionName});

  @override
  final int id;
  @override
  @JsonKey(name: 'religion_name')
  final String religionName;

  @override
  String toString() {
    return 'ReligionEntity(id: $id, religionName: $religionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReligionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.religionName, religionName) ||
                other.religionName == religionName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, religionName);

  /// Create a copy of ReligionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReligionEntityImplCopyWith<_$ReligionEntityImpl> get copyWith =>
      __$$ReligionEntityImplCopyWithImpl<_$ReligionEntityImpl>(
          this, _$identity);
}

abstract class _ReligionEntity implements ReligionEntity {
  const factory _ReligionEntity(
          {required final int id,
          @JsonKey(name: 'religion_name') required final String religionName}) =
      _$ReligionEntityImpl;

  @override
  int get id;
  @override
  @JsonKey(name: 'religion_name')
  String get religionName;

  /// Create a copy of ReligionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReligionEntityImplCopyWith<_$ReligionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
