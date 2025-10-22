// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pep_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PepEntity {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'pep_option_name')
  String get pepOptionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'pep_type')
  String get pepType => throw _privateConstructorUsedError;

  /// Create a copy of PepEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PepEntityCopyWith<PepEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PepEntityCopyWith<$Res> {
  factory $PepEntityCopyWith(PepEntity value, $Res Function(PepEntity) then) =
      _$PepEntityCopyWithImpl<$Res, PepEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'pep_option_name') String pepOptionName,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'pep_type') String pepType});
}

/// @nodoc
class _$PepEntityCopyWithImpl<$Res, $Val extends PepEntity>
    implements $PepEntityCopyWith<$Res> {
  _$PepEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PepEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pepOptionName = null,
    Object? description = null,
    Object? pepType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pepOptionName: null == pepOptionName
          ? _value.pepOptionName
          : pepOptionName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pepType: null == pepType
          ? _value.pepType
          : pepType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PepEntityImplCopyWith<$Res>
    implements $PepEntityCopyWith<$Res> {
  factory _$$PepEntityImplCopyWith(
          _$PepEntityImpl value, $Res Function(_$PepEntityImpl) then) =
      __$$PepEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'pep_option_name') String pepOptionName,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'pep_type') String pepType});
}

/// @nodoc
class __$$PepEntityImplCopyWithImpl<$Res>
    extends _$PepEntityCopyWithImpl<$Res, _$PepEntityImpl>
    implements _$$PepEntityImplCopyWith<$Res> {
  __$$PepEntityImplCopyWithImpl(
      _$PepEntityImpl _value, $Res Function(_$PepEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PepEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pepOptionName = null,
    Object? description = null,
    Object? pepType = null,
  }) {
    return _then(_$PepEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      pepOptionName: null == pepOptionName
          ? _value.pepOptionName
          : pepOptionName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pepType: null == pepType
          ? _value.pepType
          : pepType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PepEntityImpl implements _PepEntity {
  const _$PepEntityImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'pep_option_name') required this.pepOptionName,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'pep_type') required this.pepType});

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'pep_option_name')
  final String pepOptionName;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'pep_type')
  final String pepType;

  @override
  String toString() {
    return 'PepEntity(id: $id, pepOptionName: $pepOptionName, description: $description, pepType: $pepType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PepEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pepOptionName, pepOptionName) ||
                other.pepOptionName == pepOptionName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pepType, pepType) || other.pepType == pepType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, pepOptionName, description, pepType);

  /// Create a copy of PepEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PepEntityImplCopyWith<_$PepEntityImpl> get copyWith =>
      __$$PepEntityImplCopyWithImpl<_$PepEntityImpl>(this, _$identity);
}

abstract class _PepEntity implements PepEntity {
  const factory _PepEntity(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'pep_option_name') required final String pepOptionName,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'pep_type') required final String pepType}) =
      _$PepEntityImpl;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'pep_option_name')
  String get pepOptionName;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'pep_type')
  String get pepType;

  /// Create a copy of PepEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PepEntityImplCopyWith<_$PepEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
