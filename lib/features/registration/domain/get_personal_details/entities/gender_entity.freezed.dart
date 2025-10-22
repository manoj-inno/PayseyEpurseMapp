// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gender_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenderEntity {
  int get id => throw _privateConstructorUsedError;
  String get genderName => throw _privateConstructorUsedError;

  /// Create a copy of GenderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenderEntityCopyWith<GenderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderEntityCopyWith<$Res> {
  factory $GenderEntityCopyWith(
          GenderEntity value, $Res Function(GenderEntity) then) =
      _$GenderEntityCopyWithImpl<$Res, GenderEntity>;
  @useResult
  $Res call({int id, String genderName});
}

/// @nodoc
class _$GenderEntityCopyWithImpl<$Res, $Val extends GenderEntity>
    implements $GenderEntityCopyWith<$Res> {
  _$GenderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenderEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? genderName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      genderName: null == genderName
          ? _value.genderName
          : genderName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenderEntityImplCopyWith<$Res>
    implements $GenderEntityCopyWith<$Res> {
  factory _$$GenderEntityImplCopyWith(
          _$GenderEntityImpl value, $Res Function(_$GenderEntityImpl) then) =
      __$$GenderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String genderName});
}

/// @nodoc
class __$$GenderEntityImplCopyWithImpl<$Res>
    extends _$GenderEntityCopyWithImpl<$Res, _$GenderEntityImpl>
    implements _$$GenderEntityImplCopyWith<$Res> {
  __$$GenderEntityImplCopyWithImpl(
      _$GenderEntityImpl _value, $Res Function(_$GenderEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenderEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? genderName = null,
  }) {
    return _then(_$GenderEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      genderName: null == genderName
          ? _value.genderName
          : genderName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenderEntityImpl implements _GenderEntity {
  const _$GenderEntityImpl({required this.id, required this.genderName});

  @override
  final int id;
  @override
  final String genderName;

  @override
  String toString() {
    return 'GenderEntity(id: $id, genderName: $genderName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.genderName, genderName) ||
                other.genderName == genderName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, genderName);

  /// Create a copy of GenderEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderEntityImplCopyWith<_$GenderEntityImpl> get copyWith =>
      __$$GenderEntityImplCopyWithImpl<_$GenderEntityImpl>(this, _$identity);
}

abstract class _GenderEntity implements GenderEntity {
  const factory _GenderEntity(
      {required final int id,
      required final String genderName}) = _$GenderEntityImpl;

  @override
  int get id;
  @override
  String get genderName;

  /// Create a copy of GenderEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenderEntityImplCopyWith<_$GenderEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
