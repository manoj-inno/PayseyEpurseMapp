// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_document_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KycDocumentEntity {
  String get documentId => throw _privateConstructorUsedError;
  String get documentType => throw _privateConstructorUsedError;
  String get documentNumber => throw _privateConstructorUsedError;
  String get documentImage => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get uploadedAt => throw _privateConstructorUsedError;

  /// Create a copy of KycDocumentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KycDocumentEntityCopyWith<KycDocumentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycDocumentEntityCopyWith<$Res> {
  factory $KycDocumentEntityCopyWith(
          KycDocumentEntity value, $Res Function(KycDocumentEntity) then) =
      _$KycDocumentEntityCopyWithImpl<$Res, KycDocumentEntity>;
  @useResult
  $Res call(
      {String documentId,
      String documentType,
      String documentNumber,
      String documentImage,
      String status,
      DateTime uploadedAt});
}

/// @nodoc
class _$KycDocumentEntityCopyWithImpl<$Res, $Val extends KycDocumentEntity>
    implements $KycDocumentEntityCopyWith<$Res> {
  _$KycDocumentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycDocumentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = null,
    Object? documentType = null,
    Object? documentNumber = null,
    Object? documentImage = null,
    Object? status = null,
    Object? uploadedAt = null,
  }) {
    return _then(_value.copyWith(
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      documentType: null == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      documentImage: null == documentImage
          ? _value.documentImage
          : documentImage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      uploadedAt: null == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KycDocumentEntityImplCopyWith<$Res>
    implements $KycDocumentEntityCopyWith<$Res> {
  factory _$$KycDocumentEntityImplCopyWith(_$KycDocumentEntityImpl value,
          $Res Function(_$KycDocumentEntityImpl) then) =
      __$$KycDocumentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String documentId,
      String documentType,
      String documentNumber,
      String documentImage,
      String status,
      DateTime uploadedAt});
}

/// @nodoc
class __$$KycDocumentEntityImplCopyWithImpl<$Res>
    extends _$KycDocumentEntityCopyWithImpl<$Res, _$KycDocumentEntityImpl>
    implements _$$KycDocumentEntityImplCopyWith<$Res> {
  __$$KycDocumentEntityImplCopyWithImpl(_$KycDocumentEntityImpl _value,
      $Res Function(_$KycDocumentEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of KycDocumentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = null,
    Object? documentType = null,
    Object? documentNumber = null,
    Object? documentImage = null,
    Object? status = null,
    Object? uploadedAt = null,
  }) {
    return _then(_$KycDocumentEntityImpl(
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      documentType: null == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String,
      documentNumber: null == documentNumber
          ? _value.documentNumber
          : documentNumber // ignore: cast_nullable_to_non_nullable
              as String,
      documentImage: null == documentImage
          ? _value.documentImage
          : documentImage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      uploadedAt: null == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$KycDocumentEntityImpl implements _KycDocumentEntity {
  const _$KycDocumentEntityImpl(
      {required this.documentId,
      required this.documentType,
      required this.documentNumber,
      required this.documentImage,
      required this.status,
      required this.uploadedAt});

  @override
  final String documentId;
  @override
  final String documentType;
  @override
  final String documentNumber;
  @override
  final String documentImage;
  @override
  final String status;
  @override
  final DateTime uploadedAt;

  @override
  String toString() {
    return 'KycDocumentEntity(documentId: $documentId, documentType: $documentType, documentNumber: $documentNumber, documentImage: $documentImage, status: $status, uploadedAt: $uploadedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycDocumentEntityImpl &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            (identical(other.documentNumber, documentNumber) ||
                other.documentNumber == documentNumber) &&
            (identical(other.documentImage, documentImage) ||
                other.documentImage == documentImage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, documentId, documentType,
      documentNumber, documentImage, status, uploadedAt);

  /// Create a copy of KycDocumentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycDocumentEntityImplCopyWith<_$KycDocumentEntityImpl> get copyWith =>
      __$$KycDocumentEntityImplCopyWithImpl<_$KycDocumentEntityImpl>(
          this, _$identity);
}

abstract class _KycDocumentEntity implements KycDocumentEntity {
  const factory _KycDocumentEntity(
      {required final String documentId,
      required final String documentType,
      required final String documentNumber,
      required final String documentImage,
      required final String status,
      required final DateTime uploadedAt}) = _$KycDocumentEntityImpl;

  @override
  String get documentId;
  @override
  String get documentType;
  @override
  String get documentNumber;
  @override
  String get documentImage;
  @override
  String get status;
  @override
  DateTime get uploadedAt;

  /// Create a copy of KycDocumentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycDocumentEntityImplCopyWith<_$KycDocumentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
