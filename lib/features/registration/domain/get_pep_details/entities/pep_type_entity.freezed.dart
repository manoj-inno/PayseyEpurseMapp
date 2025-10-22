// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pep_type_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PepTypeEntity {
  @JsonKey(name: 'pep_type_id')
  int get pepTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pep_type_name')
  String get pepTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'required_fields')
  List<RequiredFieldEntity> get requiredFields =>
      throw _privateConstructorUsedError;

  /// Create a copy of PepTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PepTypeEntityCopyWith<PepTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PepTypeEntityCopyWith<$Res> {
  factory $PepTypeEntityCopyWith(
          PepTypeEntity value, $Res Function(PepTypeEntity) then) =
      _$PepTypeEntityCopyWithImpl<$Res, PepTypeEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'pep_type_id') int pepTypeId,
      @JsonKey(name: 'pep_type_name') String pepTypeName,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'required_fields')
      List<RequiredFieldEntity> requiredFields});
}

/// @nodoc
class _$PepTypeEntityCopyWithImpl<$Res, $Val extends PepTypeEntity>
    implements $PepTypeEntityCopyWith<$Res> {
  _$PepTypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PepTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pepTypeId = null,
    Object? pepTypeName = null,
    Object? status = null,
    Object? requiredFields = null,
  }) {
    return _then(_value.copyWith(
      pepTypeId: null == pepTypeId
          ? _value.pepTypeId
          : pepTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      pepTypeName: null == pepTypeName
          ? _value.pepTypeName
          : pepTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      requiredFields: null == requiredFields
          ? _value.requiredFields
          : requiredFields // ignore: cast_nullable_to_non_nullable
              as List<RequiredFieldEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PepTypeEntityImplCopyWith<$Res>
    implements $PepTypeEntityCopyWith<$Res> {
  factory _$$PepTypeEntityImplCopyWith(
          _$PepTypeEntityImpl value, $Res Function(_$PepTypeEntityImpl) then) =
      __$$PepTypeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pep_type_id') int pepTypeId,
      @JsonKey(name: 'pep_type_name') String pepTypeName,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'required_fields')
      List<RequiredFieldEntity> requiredFields});
}

/// @nodoc
class __$$PepTypeEntityImplCopyWithImpl<$Res>
    extends _$PepTypeEntityCopyWithImpl<$Res, _$PepTypeEntityImpl>
    implements _$$PepTypeEntityImplCopyWith<$Res> {
  __$$PepTypeEntityImplCopyWithImpl(
      _$PepTypeEntityImpl _value, $Res Function(_$PepTypeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PepTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pepTypeId = null,
    Object? pepTypeName = null,
    Object? status = null,
    Object? requiredFields = null,
  }) {
    return _then(_$PepTypeEntityImpl(
      pepTypeId: null == pepTypeId
          ? _value.pepTypeId
          : pepTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      pepTypeName: null == pepTypeName
          ? _value.pepTypeName
          : pepTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      requiredFields: null == requiredFields
          ? _value._requiredFields
          : requiredFields // ignore: cast_nullable_to_non_nullable
              as List<RequiredFieldEntity>,
    ));
  }
}

/// @nodoc

class _$PepTypeEntityImpl implements _PepTypeEntity {
  const _$PepTypeEntityImpl(
      {@JsonKey(name: 'pep_type_id') required this.pepTypeId,
      @JsonKey(name: 'pep_type_name') required this.pepTypeName,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'required_fields')
      required final List<RequiredFieldEntity> requiredFields})
      : _requiredFields = requiredFields;

  @override
  @JsonKey(name: 'pep_type_id')
  final int pepTypeId;
  @override
  @JsonKey(name: 'pep_type_name')
  final String pepTypeName;
  @override
  @JsonKey(name: 'status')
  final int status;
  final List<RequiredFieldEntity> _requiredFields;
  @override
  @JsonKey(name: 'required_fields')
  List<RequiredFieldEntity> get requiredFields {
    if (_requiredFields is EqualUnmodifiableListView) return _requiredFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requiredFields);
  }

  @override
  String toString() {
    return 'PepTypeEntity(pepTypeId: $pepTypeId, pepTypeName: $pepTypeName, status: $status, requiredFields: $requiredFields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PepTypeEntityImpl &&
            (identical(other.pepTypeId, pepTypeId) ||
                other.pepTypeId == pepTypeId) &&
            (identical(other.pepTypeName, pepTypeName) ||
                other.pepTypeName == pepTypeName) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._requiredFields, _requiredFields));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pepTypeId, pepTypeName, status,
      const DeepCollectionEquality().hash(_requiredFields));

  /// Create a copy of PepTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PepTypeEntityImplCopyWith<_$PepTypeEntityImpl> get copyWith =>
      __$$PepTypeEntityImplCopyWithImpl<_$PepTypeEntityImpl>(this, _$identity);
}

abstract class _PepTypeEntity implements PepTypeEntity {
  const factory _PepTypeEntity(
          {@JsonKey(name: 'pep_type_id') required final int pepTypeId,
          @JsonKey(name: 'pep_type_name') required final String pepTypeName,
          @JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'required_fields')
          required final List<RequiredFieldEntity> requiredFields}) =
      _$PepTypeEntityImpl;

  @override
  @JsonKey(name: 'pep_type_id')
  int get pepTypeId;
  @override
  @JsonKey(name: 'pep_type_name')
  String get pepTypeName;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'required_fields')
  List<RequiredFieldEntity> get requiredFields;

  /// Create a copy of PepTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PepTypeEntityImplCopyWith<_$PepTypeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RequiredFieldEntity {
  @JsonKey(name: 'field_name')
  String get fieldName => throw _privateConstructorUsedError;
  @JsonKey(name: 'field_type')
  String get fieldType => throw _privateConstructorUsedError;

  /// Create a copy of RequiredFieldEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequiredFieldEntityCopyWith<RequiredFieldEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequiredFieldEntityCopyWith<$Res> {
  factory $RequiredFieldEntityCopyWith(
          RequiredFieldEntity value, $Res Function(RequiredFieldEntity) then) =
      _$RequiredFieldEntityCopyWithImpl<$Res, RequiredFieldEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'field_name') String fieldName,
      @JsonKey(name: 'field_type') String fieldType});
}

/// @nodoc
class _$RequiredFieldEntityCopyWithImpl<$Res, $Val extends RequiredFieldEntity>
    implements $RequiredFieldEntityCopyWith<$Res> {
  _$RequiredFieldEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequiredFieldEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldName = null,
    Object? fieldType = null,
  }) {
    return _then(_value.copyWith(
      fieldName: null == fieldName
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String,
      fieldType: null == fieldType
          ? _value.fieldType
          : fieldType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequiredFieldEntityImplCopyWith<$Res>
    implements $RequiredFieldEntityCopyWith<$Res> {
  factory _$$RequiredFieldEntityImplCopyWith(_$RequiredFieldEntityImpl value,
          $Res Function(_$RequiredFieldEntityImpl) then) =
      __$$RequiredFieldEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'field_name') String fieldName,
      @JsonKey(name: 'field_type') String fieldType});
}

/// @nodoc
class __$$RequiredFieldEntityImplCopyWithImpl<$Res>
    extends _$RequiredFieldEntityCopyWithImpl<$Res, _$RequiredFieldEntityImpl>
    implements _$$RequiredFieldEntityImplCopyWith<$Res> {
  __$$RequiredFieldEntityImplCopyWithImpl(_$RequiredFieldEntityImpl _value,
      $Res Function(_$RequiredFieldEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequiredFieldEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldName = null,
    Object? fieldType = null,
  }) {
    return _then(_$RequiredFieldEntityImpl(
      fieldName: null == fieldName
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String,
      fieldType: null == fieldType
          ? _value.fieldType
          : fieldType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequiredFieldEntityImpl implements _RequiredFieldEntity {
  const _$RequiredFieldEntityImpl(
      {@JsonKey(name: 'field_name') required this.fieldName,
      @JsonKey(name: 'field_type') required this.fieldType});

  @override
  @JsonKey(name: 'field_name')
  final String fieldName;
  @override
  @JsonKey(name: 'field_type')
  final String fieldType;

  @override
  String toString() {
    return 'RequiredFieldEntity(fieldName: $fieldName, fieldType: $fieldType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequiredFieldEntityImpl &&
            (identical(other.fieldName, fieldName) ||
                other.fieldName == fieldName) &&
            (identical(other.fieldType, fieldType) ||
                other.fieldType == fieldType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldName, fieldType);

  /// Create a copy of RequiredFieldEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequiredFieldEntityImplCopyWith<_$RequiredFieldEntityImpl> get copyWith =>
      __$$RequiredFieldEntityImplCopyWithImpl<_$RequiredFieldEntityImpl>(
          this, _$identity);
}

abstract class _RequiredFieldEntity implements RequiredFieldEntity {
  const factory _RequiredFieldEntity(
          {@JsonKey(name: 'field_name') required final String fieldName,
          @JsonKey(name: 'field_type') required final String fieldType}) =
      _$RequiredFieldEntityImpl;

  @override
  @JsonKey(name: 'field_name')
  String get fieldName;
  @override
  @JsonKey(name: 'field_type')
  String get fieldType;

  /// Create a copy of RequiredFieldEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequiredFieldEntityImplCopyWith<_$RequiredFieldEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
