// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_verification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KycVerificationEntity {
  String get refNumber => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get verifiedAt => throw _privateConstructorUsedError;
  List<String> get verifiedDocuments => throw _privateConstructorUsedError;

  /// Create a copy of KycVerificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KycVerificationEntityCopyWith<KycVerificationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycVerificationEntityCopyWith<$Res> {
  factory $KycVerificationEntityCopyWith(KycVerificationEntity value,
          $Res Function(KycVerificationEntity) then) =
      _$KycVerificationEntityCopyWithImpl<$Res, KycVerificationEntity>;
  @useResult
  $Res call(
      {String refNumber,
      String status,
      DateTime verifiedAt,
      List<String> verifiedDocuments});
}

/// @nodoc
class _$KycVerificationEntityCopyWithImpl<$Res,
        $Val extends KycVerificationEntity>
    implements $KycVerificationEntityCopyWith<$Res> {
  _$KycVerificationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycVerificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refNumber = null,
    Object? status = null,
    Object? verifiedAt = null,
    Object? verifiedDocuments = null,
  }) {
    return _then(_value.copyWith(
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      verifiedAt: null == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      verifiedDocuments: null == verifiedDocuments
          ? _value.verifiedDocuments
          : verifiedDocuments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KycVerificationEntityImplCopyWith<$Res>
    implements $KycVerificationEntityCopyWith<$Res> {
  factory _$$KycVerificationEntityImplCopyWith(
          _$KycVerificationEntityImpl value,
          $Res Function(_$KycVerificationEntityImpl) then) =
      __$$KycVerificationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String refNumber,
      String status,
      DateTime verifiedAt,
      List<String> verifiedDocuments});
}

/// @nodoc
class __$$KycVerificationEntityImplCopyWithImpl<$Res>
    extends _$KycVerificationEntityCopyWithImpl<$Res,
        _$KycVerificationEntityImpl>
    implements _$$KycVerificationEntityImplCopyWith<$Res> {
  __$$KycVerificationEntityImplCopyWithImpl(_$KycVerificationEntityImpl _value,
      $Res Function(_$KycVerificationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycVerificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refNumber = null,
    Object? status = null,
    Object? verifiedAt = null,
    Object? verifiedDocuments = null,
  }) {
    return _then(_$KycVerificationEntityImpl(
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      verifiedAt: null == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      verifiedDocuments: null == verifiedDocuments
          ? _value._verifiedDocuments
          : verifiedDocuments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$KycVerificationEntityImpl implements _KycVerificationEntity {
  const _$KycVerificationEntityImpl(
      {required this.refNumber,
      required this.status,
      required this.verifiedAt,
      required final List<String> verifiedDocuments})
      : _verifiedDocuments = verifiedDocuments;

  @override
  final String refNumber;
  @override
  final String status;
  @override
  final DateTime verifiedAt;
  final List<String> _verifiedDocuments;
  @override
  List<String> get verifiedDocuments {
    if (_verifiedDocuments is EqualUnmodifiableListView)
      return _verifiedDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_verifiedDocuments);
  }

  @override
  String toString() {
    return 'KycVerificationEntity(refNumber: $refNumber, status: $status, verifiedAt: $verifiedAt, verifiedDocuments: $verifiedDocuments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycVerificationEntityImpl &&
            (identical(other.refNumber, refNumber) ||
                other.refNumber == refNumber) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            const DeepCollectionEquality()
                .equals(other._verifiedDocuments, _verifiedDocuments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refNumber, status, verifiedAt,
      const DeepCollectionEquality().hash(_verifiedDocuments));

  /// Create a copy of KycVerificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycVerificationEntityImplCopyWith<_$KycVerificationEntityImpl>
      get copyWith => __$$KycVerificationEntityImplCopyWithImpl<
          _$KycVerificationEntityImpl>(this, _$identity);
}

abstract class _KycVerificationEntity implements KycVerificationEntity {
  const factory _KycVerificationEntity(
          {required final String refNumber,
          required final String status,
          required final DateTime verifiedAt,
          required final List<String> verifiedDocuments}) =
      _$KycVerificationEntityImpl;

  @override
  String get refNumber;
  @override
  String get status;
  @override
  DateTime get verifiedAt;
  @override
  List<String> get verifiedDocuments;

  /// Create a copy of KycVerificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycVerificationEntityImplCopyWith<_$KycVerificationEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
