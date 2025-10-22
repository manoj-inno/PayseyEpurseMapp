// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_type_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressTypeEntity _$AddressTypeEntityFromJson(Map<String, dynamic> json) {
  return _AddressTypeEntity.fromJson(json);
}

/// @nodoc
mixin _$AddressTypeEntity {
  int get addressTypeId => throw _privateConstructorUsedError;
  String get addressTypeDesc => throw _privateConstructorUsedError;
  String get custType => throw _privateConstructorUsedError;
  bool get mandatory => throw _privateConstructorUsedError;

  /// Serializes this AddressTypeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressTypeEntityCopyWith<AddressTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressTypeEntityCopyWith<$Res> {
  factory $AddressTypeEntityCopyWith(
          AddressTypeEntity value, $Res Function(AddressTypeEntity) then) =
      _$AddressTypeEntityCopyWithImpl<$Res, AddressTypeEntity>;
  @useResult
  $Res call(
      {int addressTypeId,
      String addressTypeDesc,
      String custType,
      bool mandatory});
}

/// @nodoc
class _$AddressTypeEntityCopyWithImpl<$Res, $Val extends AddressTypeEntity>
    implements $AddressTypeEntityCopyWith<$Res> {
  _$AddressTypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressTypeId = null,
    Object? addressTypeDesc = null,
    Object? custType = null,
    Object? mandatory = null,
  }) {
    return _then(_value.copyWith(
      addressTypeId: null == addressTypeId
          ? _value.addressTypeId
          : addressTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      addressTypeDesc: null == addressTypeDesc
          ? _value.addressTypeDesc
          : addressTypeDesc // ignore: cast_nullable_to_non_nullable
              as String,
      custType: null == custType
          ? _value.custType
          : custType // ignore: cast_nullable_to_non_nullable
              as String,
      mandatory: null == mandatory
          ? _value.mandatory
          : mandatory // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressTypeEntityImplCopyWith<$Res>
    implements $AddressTypeEntityCopyWith<$Res> {
  factory _$$AddressTypeEntityImplCopyWith(_$AddressTypeEntityImpl value,
          $Res Function(_$AddressTypeEntityImpl) then) =
      __$$AddressTypeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int addressTypeId,
      String addressTypeDesc,
      String custType,
      bool mandatory});
}

/// @nodoc
class __$$AddressTypeEntityImplCopyWithImpl<$Res>
    extends _$AddressTypeEntityCopyWithImpl<$Res, _$AddressTypeEntityImpl>
    implements _$$AddressTypeEntityImplCopyWith<$Res> {
  __$$AddressTypeEntityImplCopyWithImpl(_$AddressTypeEntityImpl _value,
      $Res Function(_$AddressTypeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressTypeId = null,
    Object? addressTypeDesc = null,
    Object? custType = null,
    Object? mandatory = null,
  }) {
    return _then(_$AddressTypeEntityImpl(
      addressTypeId: null == addressTypeId
          ? _value.addressTypeId
          : addressTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      addressTypeDesc: null == addressTypeDesc
          ? _value.addressTypeDesc
          : addressTypeDesc // ignore: cast_nullable_to_non_nullable
              as String,
      custType: null == custType
          ? _value.custType
          : custType // ignore: cast_nullable_to_non_nullable
              as String,
      mandatory: null == mandatory
          ? _value.mandatory
          : mandatory // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressTypeEntityImpl implements _AddressTypeEntity {
  const _$AddressTypeEntityImpl(
      {required this.addressTypeId,
      required this.addressTypeDesc,
      required this.custType,
      required this.mandatory});

  factory _$AddressTypeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressTypeEntityImplFromJson(json);

  @override
  final int addressTypeId;
  @override
  final String addressTypeDesc;
  @override
  final String custType;
  @override
  final bool mandatory;

  @override
  String toString() {
    return 'AddressTypeEntity(addressTypeId: $addressTypeId, addressTypeDesc: $addressTypeDesc, custType: $custType, mandatory: $mandatory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressTypeEntityImpl &&
            (identical(other.addressTypeId, addressTypeId) ||
                other.addressTypeId == addressTypeId) &&
            (identical(other.addressTypeDesc, addressTypeDesc) ||
                other.addressTypeDesc == addressTypeDesc) &&
            (identical(other.custType, custType) ||
                other.custType == custType) &&
            (identical(other.mandatory, mandatory) ||
                other.mandatory == mandatory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, addressTypeId, addressTypeDesc, custType, mandatory);

  /// Create a copy of AddressTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressTypeEntityImplCopyWith<_$AddressTypeEntityImpl> get copyWith =>
      __$$AddressTypeEntityImplCopyWithImpl<_$AddressTypeEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressTypeEntityImplToJson(
      this,
    );
  }
}

abstract class _AddressTypeEntity implements AddressTypeEntity {
  const factory _AddressTypeEntity(
      {required final int addressTypeId,
      required final String addressTypeDesc,
      required final String custType,
      required final bool mandatory}) = _$AddressTypeEntityImpl;

  factory _AddressTypeEntity.fromJson(Map<String, dynamic> json) =
      _$AddressTypeEntityImpl.fromJson;

  @override
  int get addressTypeId;
  @override
  String get addressTypeDesc;
  @override
  String get custType;
  @override
  bool get mandatory;

  /// Create a copy of AddressTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressTypeEntityImplCopyWith<_$AddressTypeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
