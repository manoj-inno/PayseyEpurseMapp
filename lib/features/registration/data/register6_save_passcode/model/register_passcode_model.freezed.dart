// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_passcode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SavePasscodeRequestModel _$SavePasscodeRequestModelFromJson(
    Map<String, dynamic> json) {
  return _SavePasscodeRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SavePasscodeRequestModel {
  @JsonKey(name: 'password_enc')
  String get passwordEnc => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_ref')
  String get userRef => throw _privateConstructorUsedError;

  /// Serializes this SavePasscodeRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SavePasscodeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavePasscodeRequestModelCopyWith<SavePasscodeRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePasscodeRequestModelCopyWith<$Res> {
  factory $SavePasscodeRequestModelCopyWith(SavePasscodeRequestModel value,
          $Res Function(SavePasscodeRequestModel) then) =
      _$SavePasscodeRequestModelCopyWithImpl<$Res, SavePasscodeRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'password_enc') String passwordEnc,
      @JsonKey(name: 'user_ref') String userRef});
}

/// @nodoc
class _$SavePasscodeRequestModelCopyWithImpl<$Res,
        $Val extends SavePasscodeRequestModel>
    implements $SavePasscodeRequestModelCopyWith<$Res> {
  _$SavePasscodeRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavePasscodeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordEnc = null,
    Object? userRef = null,
  }) {
    return _then(_value.copyWith(
      passwordEnc: null == passwordEnc
          ? _value.passwordEnc
          : passwordEnc // ignore: cast_nullable_to_non_nullable
              as String,
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavePasscodeRequestModelImplCopyWith<$Res>
    implements $SavePasscodeRequestModelCopyWith<$Res> {
  factory _$$SavePasscodeRequestModelImplCopyWith(
          _$SavePasscodeRequestModelImpl value,
          $Res Function(_$SavePasscodeRequestModelImpl) then) =
      __$$SavePasscodeRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'password_enc') String passwordEnc,
      @JsonKey(name: 'user_ref') String userRef});
}

/// @nodoc
class __$$SavePasscodeRequestModelImplCopyWithImpl<$Res>
    extends _$SavePasscodeRequestModelCopyWithImpl<$Res,
        _$SavePasscodeRequestModelImpl>
    implements _$$SavePasscodeRequestModelImplCopyWith<$Res> {
  __$$SavePasscodeRequestModelImplCopyWithImpl(
      _$SavePasscodeRequestModelImpl _value,
      $Res Function(_$SavePasscodeRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavePasscodeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordEnc = null,
    Object? userRef = null,
  }) {
    return _then(_$SavePasscodeRequestModelImpl(
      passwordEnc: null == passwordEnc
          ? _value.passwordEnc
          : passwordEnc // ignore: cast_nullable_to_non_nullable
              as String,
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavePasscodeRequestModelImpl implements _SavePasscodeRequestModel {
  const _$SavePasscodeRequestModelImpl(
      {@JsonKey(name: 'password_enc') required this.passwordEnc,
      @JsonKey(name: 'user_ref') required this.userRef});

  factory _$SavePasscodeRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavePasscodeRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'password_enc')
  final String passwordEnc;
  @override
  @JsonKey(name: 'user_ref')
  final String userRef;

  @override
  String toString() {
    return 'SavePasscodeRequestModel(passwordEnc: $passwordEnc, userRef: $userRef)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePasscodeRequestModelImpl &&
            (identical(other.passwordEnc, passwordEnc) ||
                other.passwordEnc == passwordEnc) &&
            (identical(other.userRef, userRef) || other.userRef == userRef));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, passwordEnc, userRef);

  /// Create a copy of SavePasscodeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePasscodeRequestModelImplCopyWith<_$SavePasscodeRequestModelImpl>
      get copyWith => __$$SavePasscodeRequestModelImplCopyWithImpl<
          _$SavePasscodeRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavePasscodeRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SavePasscodeRequestModel implements SavePasscodeRequestModel {
  const factory _SavePasscodeRequestModel(
          {@JsonKey(name: 'password_enc') required final String passwordEnc,
          @JsonKey(name: 'user_ref') required final String userRef}) =
      _$SavePasscodeRequestModelImpl;

  factory _SavePasscodeRequestModel.fromJson(Map<String, dynamic> json) =
      _$SavePasscodeRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'password_enc')
  String get passwordEnc;
  @override
  @JsonKey(name: 'user_ref')
  String get userRef;

  /// Create a copy of SavePasscodeRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavePasscodeRequestModelImplCopyWith<_$SavePasscodeRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SavePasscodeResponseModel {
  int get userId => throw _privateConstructorUsedError;
  String get userRef => throw _privateConstructorUsedError;
  String get authStatus => throw _privateConstructorUsedError;

  /// Create a copy of SavePasscodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SavePasscodeResponseModelCopyWith<SavePasscodeResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePasscodeResponseModelCopyWith<$Res> {
  factory $SavePasscodeResponseModelCopyWith(SavePasscodeResponseModel value,
          $Res Function(SavePasscodeResponseModel) then) =
      _$SavePasscodeResponseModelCopyWithImpl<$Res, SavePasscodeResponseModel>;
  @useResult
  $Res call({int userId, String userRef, String authStatus});
}

/// @nodoc
class _$SavePasscodeResponseModelCopyWithImpl<$Res,
        $Val extends SavePasscodeResponseModel>
    implements $SavePasscodeResponseModelCopyWith<$Res> {
  _$SavePasscodeResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SavePasscodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userRef = null,
    Object? authStatus = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavePasscodeResponseModelImplCopyWith<$Res>
    implements $SavePasscodeResponseModelCopyWith<$Res> {
  factory _$$SavePasscodeResponseModelImplCopyWith(
          _$SavePasscodeResponseModelImpl value,
          $Res Function(_$SavePasscodeResponseModelImpl) then) =
      __$$SavePasscodeResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String userRef, String authStatus});
}

/// @nodoc
class __$$SavePasscodeResponseModelImplCopyWithImpl<$Res>
    extends _$SavePasscodeResponseModelCopyWithImpl<$Res,
        _$SavePasscodeResponseModelImpl>
    implements _$$SavePasscodeResponseModelImplCopyWith<$Res> {
  __$$SavePasscodeResponseModelImplCopyWithImpl(
      _$SavePasscodeResponseModelImpl _value,
      $Res Function(_$SavePasscodeResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SavePasscodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userRef = null,
    Object? authStatus = null,
  }) {
    return _then(_$SavePasscodeResponseModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SavePasscodeResponseModelImpl extends _SavePasscodeResponseModel {
  const _$SavePasscodeResponseModelImpl(
      {required this.userId, required this.userRef, required this.authStatus})
      : super._();

  @override
  final int userId;
  @override
  final String userRef;
  @override
  final String authStatus;

  @override
  String toString() {
    return 'SavePasscodeResponseModel(userId: $userId, userRef: $userRef, authStatus: $authStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePasscodeResponseModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userRef, userRef) || other.userRef == userRef) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, userRef, authStatus);

  /// Create a copy of SavePasscodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePasscodeResponseModelImplCopyWith<_$SavePasscodeResponseModelImpl>
      get copyWith => __$$SavePasscodeResponseModelImplCopyWithImpl<
          _$SavePasscodeResponseModelImpl>(this, _$identity);
}

abstract class _SavePasscodeResponseModel extends SavePasscodeResponseModel {
  const factory _SavePasscodeResponseModel(
      {required final int userId,
      required final String userRef,
      required final String authStatus}) = _$SavePasscodeResponseModelImpl;
  const _SavePasscodeResponseModel._() : super._();

  @override
  int get userId;
  @override
  String get userRef;
  @override
  String get authStatus;

  /// Create a copy of SavePasscodeResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavePasscodeResponseModelImplCopyWith<_$SavePasscodeResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
