// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complete_reg_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationModel {
  int get id => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_status')
  String get authStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_ref')
  String get userRef => throw _privateConstructorUsedError;
  @JsonKey(name: 'jwt_token')
  String get jwtToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationModelCopyWith<RegistrationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationModelCopyWith<$Res> {
  factory $RegistrationModelCopyWith(
          RegistrationModel value, $Res Function(RegistrationModel) then) =
      _$RegistrationModelCopyWithImpl<$Res, RegistrationModel>;
  @useResult
  $Res call(
      {int id,
      String mobile,
      String email,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'user_ref') String userRef,
      @JsonKey(name: 'jwt_token') String jwtToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$RegistrationModelCopyWithImpl<$Res, $Val extends RegistrationModel>
    implements $RegistrationModelCopyWith<$Res> {
  _$RegistrationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mobile = null,
    Object? email = null,
    Object? authStatus = null,
    Object? userRef = null,
    Object? jwtToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as String,
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
      jwtToken: null == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationModelImplCopyWith<$Res>
    implements $RegistrationModelCopyWith<$Res> {
  factory _$$RegistrationModelImplCopyWith(_$RegistrationModelImpl value,
          $Res Function(_$RegistrationModelImpl) then) =
      __$$RegistrationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String mobile,
      String email,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'user_ref') String userRef,
      @JsonKey(name: 'jwt_token') String jwtToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$$RegistrationModelImplCopyWithImpl<$Res>
    extends _$RegistrationModelCopyWithImpl<$Res, _$RegistrationModelImpl>
    implements _$$RegistrationModelImplCopyWith<$Res> {
  __$$RegistrationModelImplCopyWithImpl(_$RegistrationModelImpl _value,
      $Res Function(_$RegistrationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mobile = null,
    Object? email = null,
    Object? authStatus = null,
    Object? userRef = null,
    Object? jwtToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$RegistrationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as String,
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
      jwtToken: null == jwtToken
          ? _value.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$RegistrationModelImpl extends _RegistrationModel
    with DiagnosticableTreeMixin {
  const _$RegistrationModelImpl(
      {required this.id,
      required this.mobile,
      required this.email,
      @JsonKey(name: 'auth_status') required this.authStatus,
      @JsonKey(name: 'user_ref') required this.userRef,
      @JsonKey(name: 'jwt_token') required this.jwtToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken})
      : super._();

  @override
  final int id;
  @override
  final String mobile;
  @override
  final String email;
  @override
  @JsonKey(name: 'auth_status')
  final String authStatus;
  @override
  @JsonKey(name: 'user_ref')
  final String userRef;
  @override
  @JsonKey(name: 'jwt_token')
  final String jwtToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegistrationModel(id: $id, mobile: $mobile, email: $email, authStatus: $authStatus, userRef: $userRef, jwtToken: $jwtToken, refreshToken: $refreshToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegistrationModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('mobile', mobile))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('authStatus', authStatus))
      ..add(DiagnosticsProperty('userRef', userRef))
      ..add(DiagnosticsProperty('jwtToken', jwtToken))
      ..add(DiagnosticsProperty('refreshToken', refreshToken));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.userRef, userRef) || other.userRef == userRef) &&
            (identical(other.jwtToken, jwtToken) ||
                other.jwtToken == jwtToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, mobile, email, authStatus,
      userRef, jwtToken, refreshToken);

  /// Create a copy of RegistrationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationModelImplCopyWith<_$RegistrationModelImpl> get copyWith =>
      __$$RegistrationModelImplCopyWithImpl<_$RegistrationModelImpl>(
          this, _$identity);
}

abstract class _RegistrationModel extends RegistrationModel {
  const factory _RegistrationModel(
          {required final int id,
          required final String mobile,
          required final String email,
          @JsonKey(name: 'auth_status') required final String authStatus,
          @JsonKey(name: 'user_ref') required final String userRef,
          @JsonKey(name: 'jwt_token') required final String jwtToken,
          @JsonKey(name: 'refresh_token') required final String refreshToken}) =
      _$RegistrationModelImpl;
  const _RegistrationModel._() : super._();

  @override
  int get id;
  @override
  String get mobile;
  @override
  String get email;
  @override
  @JsonKey(name: 'auth_status')
  String get authStatus;
  @override
  @JsonKey(name: 'user_ref')
  String get userRef;
  @override
  @JsonKey(name: 'jwt_token')
  String get jwtToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  /// Create a copy of RegistrationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationModelImplCopyWith<_$RegistrationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
