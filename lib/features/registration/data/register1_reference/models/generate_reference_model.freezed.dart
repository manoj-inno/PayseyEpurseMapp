// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_reference_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenerateReferenceModel {
  String get regRef => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get customerTypeId => throw _privateConstructorUsedError;

  /// Create a copy of GenerateReferenceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenerateReferenceModelCopyWith<GenerateReferenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateReferenceModelCopyWith<$Res> {
  factory $GenerateReferenceModelCopyWith(GenerateReferenceModel value,
          $Res Function(GenerateReferenceModel) then) =
      _$GenerateReferenceModelCopyWithImpl<$Res, GenerateReferenceModel>;
  @useResult
  $Res call({String regRef, String status, int customerTypeId});
}

/// @nodoc
class _$GenerateReferenceModelCopyWithImpl<$Res,
        $Val extends GenerateReferenceModel>
    implements $GenerateReferenceModelCopyWith<$Res> {
  _$GenerateReferenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenerateReferenceModel
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
abstract class _$$GenerateReferenceModelImplCopyWith<$Res>
    implements $GenerateReferenceModelCopyWith<$Res> {
  factory _$$GenerateReferenceModelImplCopyWith(
          _$GenerateReferenceModelImpl value,
          $Res Function(_$GenerateReferenceModelImpl) then) =
      __$$GenerateReferenceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String regRef, String status, int customerTypeId});
}

/// @nodoc
class __$$GenerateReferenceModelImplCopyWithImpl<$Res>
    extends _$GenerateReferenceModelCopyWithImpl<$Res,
        _$GenerateReferenceModelImpl>
    implements _$$GenerateReferenceModelImplCopyWith<$Res> {
  __$$GenerateReferenceModelImplCopyWithImpl(
      _$GenerateReferenceModelImpl _value,
      $Res Function(_$GenerateReferenceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateReferenceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regRef = null,
    Object? status = null,
    Object? customerTypeId = null,
  }) {
    return _then(_$GenerateReferenceModelImpl(
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

class _$GenerateReferenceModelImpl extends _GenerateReferenceModel
    with DiagnosticableTreeMixin {
  const _$GenerateReferenceModelImpl(
      {this.regRef = '', this.status = 'Success', this.customerTypeId = 22})
      : super._();

  @override
  @JsonKey()
  final String regRef;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final int customerTypeId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GenerateReferenceModel(regRef: $regRef, status: $status, customerTypeId: $customerTypeId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GenerateReferenceModel'))
      ..add(DiagnosticsProperty('regRef', regRef))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('customerTypeId', customerTypeId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateReferenceModelImpl &&
            (identical(other.regRef, regRef) || other.regRef == regRef) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.customerTypeId, customerTypeId) ||
                other.customerTypeId == customerTypeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, regRef, status, customerTypeId);

  /// Create a copy of GenerateReferenceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateReferenceModelImplCopyWith<_$GenerateReferenceModelImpl>
      get copyWith => __$$GenerateReferenceModelImplCopyWithImpl<
          _$GenerateReferenceModelImpl>(this, _$identity);
}

abstract class _GenerateReferenceModel extends GenerateReferenceModel {
  const factory _GenerateReferenceModel(
      {final String regRef,
      final String status,
      final int customerTypeId}) = _$GenerateReferenceModelImpl;
  const _GenerateReferenceModel._() : super._();

  @override
  String get regRef;
  @override
  String get status;
  @override
  int get customerTypeId;

  /// Create a copy of GenerateReferenceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateReferenceModelImplCopyWith<_$GenerateReferenceModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
