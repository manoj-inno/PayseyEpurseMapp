// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'face_matching_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FaceMatchResponseModel _$FaceMatchResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FaceMatchResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FaceMatchResponseModel {
  int get score => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'verification_status')
  String get verificationStatus => throw _privateConstructorUsedError;

  /// Serializes this FaceMatchResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FaceMatchResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FaceMatchResponseModelCopyWith<FaceMatchResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaceMatchResponseModelCopyWith<$Res> {
  factory $FaceMatchResponseModelCopyWith(FaceMatchResponseModel value,
          $Res Function(FaceMatchResponseModel) then) =
      _$FaceMatchResponseModelCopyWithImpl<$Res, FaceMatchResponseModel>;
  @useResult
  $Res call(
      {int score,
      bool success,
      @JsonKey(name: 'verification_status') String verificationStatus});
}

/// @nodoc
class _$FaceMatchResponseModelCopyWithImpl<$Res,
        $Val extends FaceMatchResponseModel>
    implements $FaceMatchResponseModelCopyWith<$Res> {
  _$FaceMatchResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FaceMatchResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? success = null,
    Object? verificationStatus = null,
  }) {
    return _then(_value.copyWith(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationStatus: null == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaceMatchResponseModelImplCopyWith<$Res>
    implements $FaceMatchResponseModelCopyWith<$Res> {
  factory _$$FaceMatchResponseModelImplCopyWith(
          _$FaceMatchResponseModelImpl value,
          $Res Function(_$FaceMatchResponseModelImpl) then) =
      __$$FaceMatchResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int score,
      bool success,
      @JsonKey(name: 'verification_status') String verificationStatus});
}

/// @nodoc
class __$$FaceMatchResponseModelImplCopyWithImpl<$Res>
    extends _$FaceMatchResponseModelCopyWithImpl<$Res,
        _$FaceMatchResponseModelImpl>
    implements _$$FaceMatchResponseModelImplCopyWith<$Res> {
  __$$FaceMatchResponseModelImplCopyWithImpl(
      _$FaceMatchResponseModelImpl _value,
      $Res Function(_$FaceMatchResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FaceMatchResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? success = null,
    Object? verificationStatus = null,
  }) {
    return _then(_$FaceMatchResponseModelImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      verificationStatus: null == verificationStatus
          ? _value.verificationStatus
          : verificationStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaceMatchResponseModelImpl implements _FaceMatchResponseModel {
  const _$FaceMatchResponseModelImpl(
      {required this.score,
      required this.success,
      @JsonKey(name: 'verification_status') required this.verificationStatus});

  factory _$FaceMatchResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaceMatchResponseModelImplFromJson(json);

  @override
  final int score;
  @override
  final bool success;
  @override
  @JsonKey(name: 'verification_status')
  final String verificationStatus;

  @override
  String toString() {
    return 'FaceMatchResponseModel(score: $score, success: $success, verificationStatus: $verificationStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaceMatchResponseModelImpl &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.verificationStatus, verificationStatus) ||
                other.verificationStatus == verificationStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, score, success, verificationStatus);

  /// Create a copy of FaceMatchResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaceMatchResponseModelImplCopyWith<_$FaceMatchResponseModelImpl>
      get copyWith => __$$FaceMatchResponseModelImplCopyWithImpl<
          _$FaceMatchResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaceMatchResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FaceMatchResponseModel implements FaceMatchResponseModel {
  const factory _FaceMatchResponseModel(
      {required final int score,
      required final bool success,
      @JsonKey(name: 'verification_status')
      required final String verificationStatus}) = _$FaceMatchResponseModelImpl;

  factory _FaceMatchResponseModel.fromJson(Map<String, dynamic> json) =
      _$FaceMatchResponseModelImpl.fromJson;

  @override
  int get score;
  @override
  bool get success;
  @override
  @JsonKey(name: 'verification_status')
  String get verificationStatus;

  /// Create a copy of FaceMatchResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaceMatchResponseModelImplCopyWith<_$FaceMatchResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
