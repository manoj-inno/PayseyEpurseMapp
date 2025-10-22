// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_reference_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenerateReference _$GenerateReferenceFromJson(Map<String, dynamic> json) {
  return _GenerateReference.fromJson(json);
}

/// @nodoc
mixin _$GenerateReference {
  String get regRef => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get customerTypeId => throw _privateConstructorUsedError;

  /// Serializes this GenerateReference to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenerateReference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenerateReferenceCopyWith<GenerateReference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateReferenceCopyWith<$Res> {
  factory $GenerateReferenceCopyWith(
          GenerateReference value, $Res Function(GenerateReference) then) =
      _$GenerateReferenceCopyWithImpl<$Res, GenerateReference>;
  @useResult
  $Res call({String regRef, String status, int customerTypeId});
}

/// @nodoc
class _$GenerateReferenceCopyWithImpl<$Res, $Val extends GenerateReference>
    implements $GenerateReferenceCopyWith<$Res> {
  _$GenerateReferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenerateReference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regRef = null,
    Object? status = null,
    Object? customerTypeId = null,
  }) {
    return _then(_value.copyWith(
      regRef: null == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      customerTypeId: null == customerTypeId
          ? _value.customerTypeId
          : customerTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenerateReferenceImplCopyWith<$Res>
    implements $GenerateReferenceCopyWith<$Res> {
  factory _$$GenerateReferenceImplCopyWith(_$GenerateReferenceImpl value,
          $Res Function(_$GenerateReferenceImpl) then) =
      __$$GenerateReferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String regRef, String status, int customerTypeId});
}

/// @nodoc
class __$$GenerateReferenceImplCopyWithImpl<$Res>
    extends _$GenerateReferenceCopyWithImpl<$Res, _$GenerateReferenceImpl>
    implements _$$GenerateReferenceImplCopyWith<$Res> {
  __$$GenerateReferenceImplCopyWithImpl(_$GenerateReferenceImpl _value,
      $Res Function(_$GenerateReferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateReference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regRef = null,
    Object? status = null,
    Object? customerTypeId = null,
  }) {
    return _then(_$GenerateReferenceImpl(
      regRef: null == regRef
          ? _value.regRef
          : regRef // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      customerTypeId: null == customerTypeId
          ? _value.customerTypeId
          : customerTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenerateReferenceImpl implements _GenerateReference {
  const _$GenerateReferenceImpl(
      {required this.regRef,
      required this.status,
      required this.customerTypeId});

  factory _$GenerateReferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenerateReferenceImplFromJson(json);

  @override
  final String regRef;
  @override
  final String status;
  @override
  final int customerTypeId;

  @override
  String toString() {
    return 'GenerateReference(regRef: $regRef, status: $status, customerTypeId: $customerTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateReferenceImpl &&
            (identical(other.regRef, regRef) || other.regRef == regRef) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.customerTypeId, customerTypeId) ||
                other.customerTypeId == customerTypeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, regRef, status, customerTypeId);

  /// Create a copy of GenerateReference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateReferenceImplCopyWith<_$GenerateReferenceImpl> get copyWith =>
      __$$GenerateReferenceImplCopyWithImpl<_$GenerateReferenceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerateReferenceImplToJson(
      this,
    );
  }
}

abstract class _GenerateReference implements GenerateReference {
  const factory _GenerateReference(
      {required final String regRef,
      required final String status,
      required final int customerTypeId}) = _$GenerateReferenceImpl;

  factory _GenerateReference.fromJson(Map<String, dynamic> json) =
      _$GenerateReferenceImpl.fromJson;

  @override
  String get regRef;
  @override
  String get status;
  @override
  int get customerTypeId;

  /// Create a copy of GenerateReference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateReferenceImplCopyWith<_$GenerateReferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
