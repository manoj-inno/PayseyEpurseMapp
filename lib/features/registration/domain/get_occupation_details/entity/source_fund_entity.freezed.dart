// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_fund_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SourceFundEntity {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_name')
  String get sourceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;

  /// Create a copy of SourceFundEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SourceFundEntityCopyWith<SourceFundEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceFundEntityCopyWith<$Res> {
  factory $SourceFundEntityCopyWith(
          SourceFundEntity value, $Res Function(SourceFundEntity) then) =
      _$SourceFundEntityCopyWithImpl<$Res, SourceFundEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'source_name') String sourceName,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class _$SourceFundEntityCopyWithImpl<$Res, $Val extends SourceFundEntity>
    implements $SourceFundEntityCopyWith<$Res> {
  _$SourceFundEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SourceFundEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sourceName = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sourceName: null == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceFundEntityImplCopyWith<$Res>
    implements $SourceFundEntityCopyWith<$Res> {
  factory _$$SourceFundEntityImplCopyWith(_$SourceFundEntityImpl value,
          $Res Function(_$SourceFundEntityImpl) then) =
      __$$SourceFundEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'source_name') String sourceName,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class __$$SourceFundEntityImplCopyWithImpl<$Res>
    extends _$SourceFundEntityCopyWithImpl<$Res, _$SourceFundEntityImpl>
    implements _$$SourceFundEntityImplCopyWith<$Res> {
  __$$SourceFundEntityImplCopyWithImpl(_$SourceFundEntityImpl _value,
      $Res Function(_$SourceFundEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SourceFundEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sourceName = null,
    Object? description = null,
  }) {
    return _then(_$SourceFundEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sourceName: null == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SourceFundEntityImpl implements _SourceFundEntity {
  const _$SourceFundEntityImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'source_name') required this.sourceName,
      @JsonKey(name: 'description') required this.description});

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'source_name')
  final String sourceName;
  @override
  @JsonKey(name: 'description')
  final String description;

  @override
  String toString() {
    return 'SourceFundEntity(id: $id, sourceName: $sourceName, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceFundEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sourceName, sourceName) ||
                other.sourceName == sourceName) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, sourceName, description);

  /// Create a copy of SourceFundEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceFundEntityImplCopyWith<_$SourceFundEntityImpl> get copyWith =>
      __$$SourceFundEntityImplCopyWithImpl<_$SourceFundEntityImpl>(
          this, _$identity);
}

abstract class _SourceFundEntity implements SourceFundEntity {
  const factory _SourceFundEntity(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'source_name') required final String sourceName,
          @JsonKey(name: 'description') required final String description}) =
      _$SourceFundEntityImpl;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'source_name')
  String get sourceName;
  @override
  @JsonKey(name: 'description')
  String get description;

  /// Create a copy of SourceFundEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SourceFundEntityImplCopyWith<_$SourceFundEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
