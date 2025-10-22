// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pep_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PepTypeModel _$PepTypeModelFromJson(Map<String, dynamic> json) {
  return _PepTypeModel.fromJson(json);
}

/// @nodoc
mixin _$PepTypeModel {
  @JsonKey(name: 'pep_type_id')
  int get pepTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_name')
  String get pepTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'required_fields')
  List<RequiredFieldModel>? get requiredFields =>
      throw _privateConstructorUsedError;

  /// Serializes this PepTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PepTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PepTypeModelCopyWith<PepTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PepTypeModelCopyWith<$Res> {
  factory $PepTypeModelCopyWith(
          PepTypeModel value, $Res Function(PepTypeModel) then) =
      _$PepTypeModelCopyWithImpl<$Res, PepTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'pep_type_id') int pepTypeId,
      @JsonKey(name: 'type_name') String pepTypeName,
      @JsonKey(name: 'status') bool status,
      @JsonKey(name: 'required_fields')
      List<RequiredFieldModel>? requiredFields});
}

/// @nodoc
class _$PepTypeModelCopyWithImpl<$Res, $Val extends PepTypeModel>
    implements $PepTypeModelCopyWith<$Res> {
  _$PepTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PepTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pepTypeId = null,
    Object? pepTypeName = null,
    Object? status = null,
    Object? requiredFields = freezed,
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
              as bool,
      requiredFields: freezed == requiredFields
          ? _value.requiredFields
          : requiredFields // ignore: cast_nullable_to_non_nullable
              as List<RequiredFieldModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PepTypeModelImplCopyWith<$Res>
    implements $PepTypeModelCopyWith<$Res> {
  factory _$$PepTypeModelImplCopyWith(
          _$PepTypeModelImpl value, $Res Function(_$PepTypeModelImpl) then) =
      __$$PepTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pep_type_id') int pepTypeId,
      @JsonKey(name: 'type_name') String pepTypeName,
      @JsonKey(name: 'status') bool status,
      @JsonKey(name: 'required_fields')
      List<RequiredFieldModel>? requiredFields});
}

/// @nodoc
class __$$PepTypeModelImplCopyWithImpl<$Res>
    extends _$PepTypeModelCopyWithImpl<$Res, _$PepTypeModelImpl>
    implements _$$PepTypeModelImplCopyWith<$Res> {
  __$$PepTypeModelImplCopyWithImpl(
      _$PepTypeModelImpl _value, $Res Function(_$PepTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PepTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pepTypeId = null,
    Object? pepTypeName = null,
    Object? status = null,
    Object? requiredFields = freezed,
  }) {
    return _then(_$PepTypeModelImpl(
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
              as bool,
      requiredFields: freezed == requiredFields
          ? _value._requiredFields
          : requiredFields // ignore: cast_nullable_to_non_nullable
              as List<RequiredFieldModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PepTypeModelImpl implements _PepTypeModel {
  const _$PepTypeModelImpl(
      {@JsonKey(name: 'pep_type_id') required this.pepTypeId,
      @JsonKey(name: 'type_name') required this.pepTypeName,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'required_fields')
      final List<RequiredFieldModel>? requiredFields})
      : _requiredFields = requiredFields;

  factory _$PepTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PepTypeModelImplFromJson(json);

  @override
  @JsonKey(name: 'pep_type_id')
  final int pepTypeId;
  @override
  @JsonKey(name: 'type_name')
  final String pepTypeName;
  @override
  @JsonKey(name: 'status')
  final bool status;
  final List<RequiredFieldModel>? _requiredFields;
  @override
  @JsonKey(name: 'required_fields')
  List<RequiredFieldModel>? get requiredFields {
    final value = _requiredFields;
    if (value == null) return null;
    if (_requiredFields is EqualUnmodifiableListView) return _requiredFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PepTypeModel(pepTypeId: $pepTypeId, pepTypeName: $pepTypeName, status: $status, requiredFields: $requiredFields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PepTypeModelImpl &&
            (identical(other.pepTypeId, pepTypeId) ||
                other.pepTypeId == pepTypeId) &&
            (identical(other.pepTypeName, pepTypeName) ||
                other.pepTypeName == pepTypeName) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._requiredFields, _requiredFields));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pepTypeId, pepTypeName, status,
      const DeepCollectionEquality().hash(_requiredFields));

  /// Create a copy of PepTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PepTypeModelImplCopyWith<_$PepTypeModelImpl> get copyWith =>
      __$$PepTypeModelImplCopyWithImpl<_$PepTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PepTypeModelImplToJson(
      this,
    );
  }
}

abstract class _PepTypeModel implements PepTypeModel {
  const factory _PepTypeModel(
      {@JsonKey(name: 'pep_type_id') required final int pepTypeId,
      @JsonKey(name: 'type_name') required final String pepTypeName,
      @JsonKey(name: 'status') required final bool status,
      @JsonKey(name: 'required_fields')
      final List<RequiredFieldModel>? requiredFields}) = _$PepTypeModelImpl;

  factory _PepTypeModel.fromJson(Map<String, dynamic> json) =
      _$PepTypeModelImpl.fromJson;

  @override
  @JsonKey(name: 'pep_type_id')
  int get pepTypeId;
  @override
  @JsonKey(name: 'type_name')
  String get pepTypeName;
  @override
  @JsonKey(name: 'status')
  bool get status;
  @override
  @JsonKey(name: 'required_fields')
  List<RequiredFieldModel>? get requiredFields;

  /// Create a copy of PepTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PepTypeModelImplCopyWith<_$PepTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RequiredFieldModel _$RequiredFieldModelFromJson(Map<String, dynamic> json) {
  return _RequiredFieldModel.fromJson(json);
}

/// @nodoc
mixin _$RequiredFieldModel {
  @JsonKey(name: 'field_name')
  String get fieldName => throw _privateConstructorUsedError;
  @JsonKey(name: 'field_type')
  String get fieldType => throw _privateConstructorUsedError;

  /// Serializes this RequiredFieldModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequiredFieldModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequiredFieldModelCopyWith<RequiredFieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequiredFieldModelCopyWith<$Res> {
  factory $RequiredFieldModelCopyWith(
          RequiredFieldModel value, $Res Function(RequiredFieldModel) then) =
      _$RequiredFieldModelCopyWithImpl<$Res, RequiredFieldModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'field_name') String fieldName,
      @JsonKey(name: 'field_type') String fieldType});
}

/// @nodoc
class _$RequiredFieldModelCopyWithImpl<$Res, $Val extends RequiredFieldModel>
    implements $RequiredFieldModelCopyWith<$Res> {
  _$RequiredFieldModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequiredFieldModel
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
abstract class _$$RequiredFieldModelImplCopyWith<$Res>
    implements $RequiredFieldModelCopyWith<$Res> {
  factory _$$RequiredFieldModelImplCopyWith(_$RequiredFieldModelImpl value,
          $Res Function(_$RequiredFieldModelImpl) then) =
      __$$RequiredFieldModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'field_name') String fieldName,
      @JsonKey(name: 'field_type') String fieldType});
}

/// @nodoc
class __$$RequiredFieldModelImplCopyWithImpl<$Res>
    extends _$RequiredFieldModelCopyWithImpl<$Res, _$RequiredFieldModelImpl>
    implements _$$RequiredFieldModelImplCopyWith<$Res> {
  __$$RequiredFieldModelImplCopyWithImpl(_$RequiredFieldModelImpl _value,
      $Res Function(_$RequiredFieldModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequiredFieldModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldName = null,
    Object? fieldType = null,
  }) {
    return _then(_$RequiredFieldModelImpl(
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
@JsonSerializable()
class _$RequiredFieldModelImpl implements _RequiredFieldModel {
  const _$RequiredFieldModelImpl(
      {@JsonKey(name: 'field_name') required this.fieldName,
      @JsonKey(name: 'field_type') required this.fieldType});

  factory _$RequiredFieldModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequiredFieldModelImplFromJson(json);

  @override
  @JsonKey(name: 'field_name')
  final String fieldName;
  @override
  @JsonKey(name: 'field_type')
  final String fieldType;

  @override
  String toString() {
    return 'RequiredFieldModel(fieldName: $fieldName, fieldType: $fieldType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequiredFieldModelImpl &&
            (identical(other.fieldName, fieldName) ||
                other.fieldName == fieldName) &&
            (identical(other.fieldType, fieldType) ||
                other.fieldType == fieldType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fieldName, fieldType);

  /// Create a copy of RequiredFieldModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequiredFieldModelImplCopyWith<_$RequiredFieldModelImpl> get copyWith =>
      __$$RequiredFieldModelImplCopyWithImpl<_$RequiredFieldModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequiredFieldModelImplToJson(
      this,
    );
  }
}

abstract class _RequiredFieldModel implements RequiredFieldModel {
  const factory _RequiredFieldModel(
          {@JsonKey(name: 'field_name') required final String fieldName,
          @JsonKey(name: 'field_type') required final String fieldType}) =
      _$RequiredFieldModelImpl;

  factory _RequiredFieldModel.fromJson(Map<String, dynamic> json) =
      _$RequiredFieldModelImpl.fromJson;

  @override
  @JsonKey(name: 'field_name')
  String get fieldName;
  @override
  @JsonKey(name: 'field_type')
  String get fieldType;

  /// Create a copy of RequiredFieldModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequiredFieldModelImplCopyWith<_$RequiredFieldModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
