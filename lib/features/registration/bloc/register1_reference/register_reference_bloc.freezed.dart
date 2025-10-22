// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_reference_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterReferenceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile, bool isLogin) checkMobile,
    required TResult Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)
        generateOtp,
    required TResult Function(
            String mobile, String otp, MobileCheckEntity? entity)
        verifyMobileOtp,
    required TResult Function(String mobile, int userTypeId) generateReference,
    required TResult Function(String refNumber) updatePrimaryDevice,
    required TResult Function(String mobile, String otp, String refNumber)
        verifyDeviceUpdateOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile, bool isLogin)? checkMobile,
    TResult? Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)?
        generateOtp,
    TResult? Function(String mobile, String otp, MobileCheckEntity? entity)?
        verifyMobileOtp,
    TResult? Function(String mobile, int userTypeId)? generateReference,
    TResult? Function(String refNumber)? updatePrimaryDevice,
    TResult? Function(String mobile, String otp, String refNumber)?
        verifyDeviceUpdateOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile, bool isLogin)? checkMobile,
    TResult Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)?
        generateOtp,
    TResult Function(String mobile, String otp, MobileCheckEntity? entity)?
        verifyMobileOtp,
    TResult Function(String mobile, int userTypeId)? generateReference,
    TResult Function(String refNumber)? updatePrimaryDevice,
    TResult Function(String mobile, String otp, String refNumber)?
        verifyDeviceUpdateOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckMobileEvent value) checkMobile,
    required TResult Function(GenerateOtpEvent value) generateOtp,
    required TResult Function(VerifyMobileOtpEvent value) verifyMobileOtp,
    required TResult Function(GenerateReferenceEvent value) generateReference,
    required TResult Function(UpdatePrimaryDeviceEvent value)
        updatePrimaryDevice,
    required TResult Function(VerifyDeviceUpdateOtpEvent value)
        verifyDeviceUpdateOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckMobileEvent value)? checkMobile,
    TResult? Function(GenerateOtpEvent value)? generateOtp,
    TResult? Function(VerifyMobileOtpEvent value)? verifyMobileOtp,
    TResult? Function(GenerateReferenceEvent value)? generateReference,
    TResult? Function(UpdatePrimaryDeviceEvent value)? updatePrimaryDevice,
    TResult? Function(VerifyDeviceUpdateOtpEvent value)? verifyDeviceUpdateOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckMobileEvent value)? checkMobile,
    TResult Function(GenerateOtpEvent value)? generateOtp,
    TResult Function(VerifyMobileOtpEvent value)? verifyMobileOtp,
    TResult Function(GenerateReferenceEvent value)? generateReference,
    TResult Function(UpdatePrimaryDeviceEvent value)? updatePrimaryDevice,
    TResult Function(VerifyDeviceUpdateOtpEvent value)? verifyDeviceUpdateOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterReferenceEventCopyWith<$Res> {
  factory $RegisterReferenceEventCopyWith(RegisterReferenceEvent value,
          $Res Function(RegisterReferenceEvent) then) =
      _$RegisterReferenceEventCopyWithImpl<$Res, RegisterReferenceEvent>;
}

/// @nodoc
class _$RegisterReferenceEventCopyWithImpl<$Res,
        $Val extends RegisterReferenceEvent>
    implements $RegisterReferenceEventCopyWith<$Res> {
  _$RegisterReferenceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckMobileEventImplCopyWith<$Res> {
  factory _$$CheckMobileEventImplCopyWith(_$CheckMobileEventImpl value,
          $Res Function(_$CheckMobileEventImpl) then) =
      __$$CheckMobileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobile, bool isLogin});
}

/// @nodoc
class __$$CheckMobileEventImplCopyWithImpl<$Res>
    extends _$RegisterReferenceEventCopyWithImpl<$Res, _$CheckMobileEventImpl>
    implements _$$CheckMobileEventImplCopyWith<$Res> {
  __$$CheckMobileEventImplCopyWithImpl(_$CheckMobileEventImpl _value,
      $Res Function(_$CheckMobileEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
    Object? isLogin = null,
  }) {
    return _then(_$CheckMobileEventImpl(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CheckMobileEventImpl implements CheckMobileEvent {
  const _$CheckMobileEventImpl({required this.mobile, required this.isLogin});

  @override
  final String mobile;
  @override
  final bool isLogin;

  @override
  String toString() {
    return 'RegisterReferenceEvent.checkMobile(mobile: $mobile, isLogin: $isLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckMobileEventImpl &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobile, isLogin);

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckMobileEventImplCopyWith<_$CheckMobileEventImpl> get copyWith =>
      __$$CheckMobileEventImplCopyWithImpl<_$CheckMobileEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile, bool isLogin) checkMobile,
    required TResult Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)
        generateOtp,
    required TResult Function(
            String mobile, String otp, MobileCheckEntity? entity)
        verifyMobileOtp,
    required TResult Function(String mobile, int userTypeId) generateReference,
    required TResult Function(String refNumber) updatePrimaryDevice,
    required TResult Function(String mobile, String otp, String refNumber)
        verifyDeviceUpdateOtp,
  }) {
    return checkMobile(mobile, isLogin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile, bool isLogin)? checkMobile,
    TResult? Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)?
        generateOtp,
    TResult? Function(String mobile, String otp, MobileCheckEntity? entity)?
        verifyMobileOtp,
    TResult? Function(String mobile, int userTypeId)? generateReference,
    TResult? Function(String refNumber)? updatePrimaryDevice,
    TResult? Function(String mobile, String otp, String refNumber)?
        verifyDeviceUpdateOtp,
  }) {
    return checkMobile?.call(mobile, isLogin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile, bool isLogin)? checkMobile,
    TResult Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)?
        generateOtp,
    TResult Function(String mobile, String otp, MobileCheckEntity? entity)?
        verifyMobileOtp,
    TResult Function(String mobile, int userTypeId)? generateReference,
    TResult Function(String refNumber)? updatePrimaryDevice,
    TResult Function(String mobile, String otp, String refNumber)?
        verifyDeviceUpdateOtp,
    required TResult orElse(),
  }) {
    if (checkMobile != null) {
      return checkMobile(mobile, isLogin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckMobileEvent value) checkMobile,
    required TResult Function(GenerateOtpEvent value) generateOtp,
    required TResult Function(VerifyMobileOtpEvent value) verifyMobileOtp,
    required TResult Function(GenerateReferenceEvent value) generateReference,
    required TResult Function(UpdatePrimaryDeviceEvent value)
        updatePrimaryDevice,
    required TResult Function(VerifyDeviceUpdateOtpEvent value)
        verifyDeviceUpdateOtp,
  }) {
    return checkMobile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckMobileEvent value)? checkMobile,
    TResult? Function(GenerateOtpEvent value)? generateOtp,
    TResult? Function(VerifyMobileOtpEvent value)? verifyMobileOtp,
    TResult? Function(GenerateReferenceEvent value)? generateReference,
    TResult? Function(UpdatePrimaryDeviceEvent value)? updatePrimaryDevice,
    TResult? Function(VerifyDeviceUpdateOtpEvent value)? verifyDeviceUpdateOtp,
  }) {
    return checkMobile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckMobileEvent value)? checkMobile,
    TResult Function(GenerateOtpEvent value)? generateOtp,
    TResult Function(VerifyMobileOtpEvent value)? verifyMobileOtp,
    TResult Function(GenerateReferenceEvent value)? generateReference,
    TResult Function(UpdatePrimaryDeviceEvent value)? updatePrimaryDevice,
    TResult Function(VerifyDeviceUpdateOtpEvent value)? verifyDeviceUpdateOtp,
    required TResult orElse(),
  }) {
    if (checkMobile != null) {
      return checkMobile(this);
    }
    return orElse();
  }
}

abstract class CheckMobileEvent implements RegisterReferenceEvent {
  const factory CheckMobileEvent(
      {required final String mobile,
      required final bool isLogin}) = _$CheckMobileEventImpl;

  String get mobile;
  bool get isLogin;

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckMobileEventImplCopyWith<_$CheckMobileEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenerateOtpEventImplCopyWith<$Res> {
  factory _$$GenerateOtpEventImplCopyWith(_$GenerateOtpEventImpl value,
          $Res Function(_$GenerateOtpEventImpl) then) =
      __$$GenerateOtpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String mobile,
      MobileCheckEntity? entity,
      bool needDeviceUpdate,
      String? refNumber});

  $MobileCheckEntityCopyWith<$Res>? get entity;
}

/// @nodoc
class __$$GenerateOtpEventImplCopyWithImpl<$Res>
    extends _$RegisterReferenceEventCopyWithImpl<$Res, _$GenerateOtpEventImpl>
    implements _$$GenerateOtpEventImplCopyWith<$Res> {
  __$$GenerateOtpEventImplCopyWithImpl(_$GenerateOtpEventImpl _value,
      $Res Function(_$GenerateOtpEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
    Object? entity = freezed,
    Object? needDeviceUpdate = null,
    Object? refNumber = freezed,
  }) {
    return _then(_$GenerateOtpEventImpl(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity?,
      needDeviceUpdate: null == needDeviceUpdate
          ? _value.needDeviceUpdate
          : needDeviceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      refNumber: freezed == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res>? get entity {
    if (_value.entity == null) {
      return null;
    }

    return $MobileCheckEntityCopyWith<$Res>(_value.entity!, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$GenerateOtpEventImpl implements GenerateOtpEvent {
  const _$GenerateOtpEventImpl(
      {required this.mobile,
      this.entity,
      this.needDeviceUpdate = false,
      this.refNumber});

  @override
  final String mobile;
  @override
  final MobileCheckEntity? entity;
  @override
  @JsonKey()
  final bool needDeviceUpdate;
  @override
  final String? refNumber;

  @override
  String toString() {
    return 'RegisterReferenceEvent.generateOtp(mobile: $mobile, entity: $entity, needDeviceUpdate: $needDeviceUpdate, refNumber: $refNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateOtpEventImpl &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.needDeviceUpdate, needDeviceUpdate) ||
                other.needDeviceUpdate == needDeviceUpdate) &&
            (identical(other.refNumber, refNumber) ||
                other.refNumber == refNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, mobile, entity, needDeviceUpdate, refNumber);

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateOtpEventImplCopyWith<_$GenerateOtpEventImpl> get copyWith =>
      __$$GenerateOtpEventImplCopyWithImpl<_$GenerateOtpEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile, bool isLogin) checkMobile,
    required TResult Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)
        generateOtp,
    required TResult Function(
            String mobile, String otp, MobileCheckEntity? entity)
        verifyMobileOtp,
    required TResult Function(String mobile, int userTypeId) generateReference,
    required TResult Function(String refNumber) updatePrimaryDevice,
    required TResult Function(String mobile, String otp, String refNumber)
        verifyDeviceUpdateOtp,
  }) {
    return generateOtp(mobile, entity, needDeviceUpdate, refNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile, bool isLogin)? checkMobile,
    TResult? Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)?
        generateOtp,
    TResult? Function(String mobile, String otp, MobileCheckEntity? entity)?
        verifyMobileOtp,
    TResult? Function(String mobile, int userTypeId)? generateReference,
    TResult? Function(String refNumber)? updatePrimaryDevice,
    TResult? Function(String mobile, String otp, String refNumber)?
        verifyDeviceUpdateOtp,
  }) {
    return generateOtp?.call(mobile, entity, needDeviceUpdate, refNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile, bool isLogin)? checkMobile,
    TResult Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)?
        generateOtp,
    TResult Function(String mobile, String otp, MobileCheckEntity? entity)?
        verifyMobileOtp,
    TResult Function(String mobile, int userTypeId)? generateReference,
    TResult Function(String refNumber)? updatePrimaryDevice,
    TResult Function(String mobile, String otp, String refNumber)?
        verifyDeviceUpdateOtp,
    required TResult orElse(),
  }) {
    if (generateOtp != null) {
      return generateOtp(mobile, entity, needDeviceUpdate, refNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckMobileEvent value) checkMobile,
    required TResult Function(GenerateOtpEvent value) generateOtp,
    required TResult Function(VerifyMobileOtpEvent value) verifyMobileOtp,
    required TResult Function(GenerateReferenceEvent value) generateReference,
    required TResult Function(UpdatePrimaryDeviceEvent value)
        updatePrimaryDevice,
    required TResult Function(VerifyDeviceUpdateOtpEvent value)
        verifyDeviceUpdateOtp,
  }) {
    return generateOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckMobileEvent value)? checkMobile,
    TResult? Function(GenerateOtpEvent value)? generateOtp,
    TResult? Function(VerifyMobileOtpEvent value)? verifyMobileOtp,
    TResult? Function(GenerateReferenceEvent value)? generateReference,
    TResult? Function(UpdatePrimaryDeviceEvent value)? updatePrimaryDevice,
    TResult? Function(VerifyDeviceUpdateOtpEvent value)? verifyDeviceUpdateOtp,
  }) {
    return generateOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckMobileEvent value)? checkMobile,
    TResult Function(GenerateOtpEvent value)? generateOtp,
    TResult Function(VerifyMobileOtpEvent value)? verifyMobileOtp,
    TResult Function(GenerateReferenceEvent value)? generateReference,
    TResult Function(UpdatePrimaryDeviceEvent value)? updatePrimaryDevice,
    TResult Function(VerifyDeviceUpdateOtpEvent value)? verifyDeviceUpdateOtp,
    required TResult orElse(),
  }) {
    if (generateOtp != null) {
      return generateOtp(this);
    }
    return orElse();
  }
}

abstract class GenerateOtpEvent implements RegisterReferenceEvent {
  const factory GenerateOtpEvent(
      {required final String mobile,
      final MobileCheckEntity? entity,
      final bool needDeviceUpdate,
      final String? refNumber}) = _$GenerateOtpEventImpl;

  String get mobile;
  MobileCheckEntity? get entity;
  bool get needDeviceUpdate;
  String? get refNumber;

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateOtpEventImplCopyWith<_$GenerateOtpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyMobileOtpEventImplCopyWith<$Res> {
  factory _$$VerifyMobileOtpEventImplCopyWith(_$VerifyMobileOtpEventImpl value,
          $Res Function(_$VerifyMobileOtpEventImpl) then) =
      __$$VerifyMobileOtpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobile, String otp, MobileCheckEntity? entity});

  $MobileCheckEntityCopyWith<$Res>? get entity;
}

/// @nodoc
class __$$VerifyMobileOtpEventImplCopyWithImpl<$Res>
    extends _$RegisterReferenceEventCopyWithImpl<$Res,
        _$VerifyMobileOtpEventImpl>
    implements _$$VerifyMobileOtpEventImplCopyWith<$Res> {
  __$$VerifyMobileOtpEventImplCopyWithImpl(_$VerifyMobileOtpEventImpl _value,
      $Res Function(_$VerifyMobileOtpEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
    Object? otp = null,
    Object? entity = freezed,
  }) {
    return _then(_$VerifyMobileOtpEventImpl(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity?,
    ));
  }

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res>? get entity {
    if (_value.entity == null) {
      return null;
    }

    return $MobileCheckEntityCopyWith<$Res>(_value.entity!, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$VerifyMobileOtpEventImpl implements VerifyMobileOtpEvent {
  const _$VerifyMobileOtpEventImpl(
      {required this.mobile, required this.otp, this.entity});

  @override
  final String mobile;
  @override
  final String otp;
  @override
  final MobileCheckEntity? entity;

  @override
  String toString() {
    return 'RegisterReferenceEvent.verifyMobileOtp(mobile: $mobile, otp: $otp, entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyMobileOtpEventImpl &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobile, otp, entity);

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyMobileOtpEventImplCopyWith<_$VerifyMobileOtpEventImpl>
      get copyWith =>
          __$$VerifyMobileOtpEventImplCopyWithImpl<_$VerifyMobileOtpEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile, bool isLogin) checkMobile,
    required TResult Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)
        generateOtp,
    required TResult Function(
            String mobile, String otp, MobileCheckEntity? entity)
        verifyMobileOtp,
    required TResult Function(String mobile, int userTypeId) generateReference,
    required TResult Function(String refNumber) updatePrimaryDevice,
    required TResult Function(String mobile, String otp, String refNumber)
        verifyDeviceUpdateOtp,
  }) {
    return verifyMobileOtp(mobile, otp, entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile, bool isLogin)? checkMobile,
    TResult? Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)?
        generateOtp,
    TResult? Function(String mobile, String otp, MobileCheckEntity? entity)?
        verifyMobileOtp,
    TResult? Function(String mobile, int userTypeId)? generateReference,
    TResult? Function(String refNumber)? updatePrimaryDevice,
    TResult? Function(String mobile, String otp, String refNumber)?
        verifyDeviceUpdateOtp,
  }) {
    return verifyMobileOtp?.call(mobile, otp, entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile, bool isLogin)? checkMobile,
    TResult Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)?
        generateOtp,
    TResult Function(String mobile, String otp, MobileCheckEntity? entity)?
        verifyMobileOtp,
    TResult Function(String mobile, int userTypeId)? generateReference,
    TResult Function(String refNumber)? updatePrimaryDevice,
    TResult Function(String mobile, String otp, String refNumber)?
        verifyDeviceUpdateOtp,
    required TResult orElse(),
  }) {
    if (verifyMobileOtp != null) {
      return verifyMobileOtp(mobile, otp, entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckMobileEvent value) checkMobile,
    required TResult Function(GenerateOtpEvent value) generateOtp,
    required TResult Function(VerifyMobileOtpEvent value) verifyMobileOtp,
    required TResult Function(GenerateReferenceEvent value) generateReference,
    required TResult Function(UpdatePrimaryDeviceEvent value)
        updatePrimaryDevice,
    required TResult Function(VerifyDeviceUpdateOtpEvent value)
        verifyDeviceUpdateOtp,
  }) {
    return verifyMobileOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckMobileEvent value)? checkMobile,
    TResult? Function(GenerateOtpEvent value)? generateOtp,
    TResult? Function(VerifyMobileOtpEvent value)? verifyMobileOtp,
    TResult? Function(GenerateReferenceEvent value)? generateReference,
    TResult? Function(UpdatePrimaryDeviceEvent value)? updatePrimaryDevice,
    TResult? Function(VerifyDeviceUpdateOtpEvent value)? verifyDeviceUpdateOtp,
  }) {
    return verifyMobileOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckMobileEvent value)? checkMobile,
    TResult Function(GenerateOtpEvent value)? generateOtp,
    TResult Function(VerifyMobileOtpEvent value)? verifyMobileOtp,
    TResult Function(GenerateReferenceEvent value)? generateReference,
    TResult Function(UpdatePrimaryDeviceEvent value)? updatePrimaryDevice,
    TResult Function(VerifyDeviceUpdateOtpEvent value)? verifyDeviceUpdateOtp,
    required TResult orElse(),
  }) {
    if (verifyMobileOtp != null) {
      return verifyMobileOtp(this);
    }
    return orElse();
  }
}

abstract class VerifyMobileOtpEvent implements RegisterReferenceEvent {
  const factory VerifyMobileOtpEvent(
      {required final String mobile,
      required final String otp,
      final MobileCheckEntity? entity}) = _$VerifyMobileOtpEventImpl;

  String get mobile;
  String get otp;
  MobileCheckEntity? get entity;

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyMobileOtpEventImplCopyWith<_$VerifyMobileOtpEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenerateReferenceEventImplCopyWith<$Res> {
  factory _$$GenerateReferenceEventImplCopyWith(
          _$GenerateReferenceEventImpl value,
          $Res Function(_$GenerateReferenceEventImpl) then) =
      __$$GenerateReferenceEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobile, int userTypeId});
}

/// @nodoc
class __$$GenerateReferenceEventImplCopyWithImpl<$Res>
    extends _$RegisterReferenceEventCopyWithImpl<$Res,
        _$GenerateReferenceEventImpl>
    implements _$$GenerateReferenceEventImplCopyWith<$Res> {
  __$$GenerateReferenceEventImplCopyWithImpl(
      _$GenerateReferenceEventImpl _value,
      $Res Function(_$GenerateReferenceEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
    Object? userTypeId = null,
  }) {
    return _then(_$GenerateReferenceEventImpl(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      userTypeId: null == userTypeId
          ? _value.userTypeId
          : userTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GenerateReferenceEventImpl implements GenerateReferenceEvent {
  const _$GenerateReferenceEventImpl(
      {required this.mobile, required this.userTypeId});

  @override
  final String mobile;
  @override
  final int userTypeId;

  @override
  String toString() {
    return 'RegisterReferenceEvent.generateReference(mobile: $mobile, userTypeId: $userTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateReferenceEventImpl &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.userTypeId, userTypeId) ||
                other.userTypeId == userTypeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobile, userTypeId);

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateReferenceEventImplCopyWith<_$GenerateReferenceEventImpl>
      get copyWith => __$$GenerateReferenceEventImplCopyWithImpl<
          _$GenerateReferenceEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile, bool isLogin) checkMobile,
    required TResult Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)
        generateOtp,
    required TResult Function(
            String mobile, String otp, MobileCheckEntity? entity)
        verifyMobileOtp,
    required TResult Function(String mobile, int userTypeId) generateReference,
    required TResult Function(String refNumber) updatePrimaryDevice,
    required TResult Function(String mobile, String otp, String refNumber)
        verifyDeviceUpdateOtp,
  }) {
    return generateReference(mobile, userTypeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile, bool isLogin)? checkMobile,
    TResult? Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)?
        generateOtp,
    TResult? Function(String mobile, String otp, MobileCheckEntity? entity)?
        verifyMobileOtp,
    TResult? Function(String mobile, int userTypeId)? generateReference,
    TResult? Function(String refNumber)? updatePrimaryDevice,
    TResult? Function(String mobile, String otp, String refNumber)?
        verifyDeviceUpdateOtp,
  }) {
    return generateReference?.call(mobile, userTypeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile, bool isLogin)? checkMobile,
    TResult Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)?
        generateOtp,
    TResult Function(String mobile, String otp, MobileCheckEntity? entity)?
        verifyMobileOtp,
    TResult Function(String mobile, int userTypeId)? generateReference,
    TResult Function(String refNumber)? updatePrimaryDevice,
    TResult Function(String mobile, String otp, String refNumber)?
        verifyDeviceUpdateOtp,
    required TResult orElse(),
  }) {
    if (generateReference != null) {
      return generateReference(mobile, userTypeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckMobileEvent value) checkMobile,
    required TResult Function(GenerateOtpEvent value) generateOtp,
    required TResult Function(VerifyMobileOtpEvent value) verifyMobileOtp,
    required TResult Function(GenerateReferenceEvent value) generateReference,
    required TResult Function(UpdatePrimaryDeviceEvent value)
        updatePrimaryDevice,
    required TResult Function(VerifyDeviceUpdateOtpEvent value)
        verifyDeviceUpdateOtp,
  }) {
    return generateReference(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckMobileEvent value)? checkMobile,
    TResult? Function(GenerateOtpEvent value)? generateOtp,
    TResult? Function(VerifyMobileOtpEvent value)? verifyMobileOtp,
    TResult? Function(GenerateReferenceEvent value)? generateReference,
    TResult? Function(UpdatePrimaryDeviceEvent value)? updatePrimaryDevice,
    TResult? Function(VerifyDeviceUpdateOtpEvent value)? verifyDeviceUpdateOtp,
  }) {
    return generateReference?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckMobileEvent value)? checkMobile,
    TResult Function(GenerateOtpEvent value)? generateOtp,
    TResult Function(VerifyMobileOtpEvent value)? verifyMobileOtp,
    TResult Function(GenerateReferenceEvent value)? generateReference,
    TResult Function(UpdatePrimaryDeviceEvent value)? updatePrimaryDevice,
    TResult Function(VerifyDeviceUpdateOtpEvent value)? verifyDeviceUpdateOtp,
    required TResult orElse(),
  }) {
    if (generateReference != null) {
      return generateReference(this);
    }
    return orElse();
  }
}

abstract class GenerateReferenceEvent implements RegisterReferenceEvent {
  const factory GenerateReferenceEvent(
      {required final String mobile,
      required final int userTypeId}) = _$GenerateReferenceEventImpl;

  String get mobile;
  int get userTypeId;

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateReferenceEventImplCopyWith<_$GenerateReferenceEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePrimaryDeviceEventImplCopyWith<$Res> {
  factory _$$UpdatePrimaryDeviceEventImplCopyWith(
          _$UpdatePrimaryDeviceEventImpl value,
          $Res Function(_$UpdatePrimaryDeviceEventImpl) then) =
      __$$UpdatePrimaryDeviceEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String refNumber});
}

/// @nodoc
class __$$UpdatePrimaryDeviceEventImplCopyWithImpl<$Res>
    extends _$RegisterReferenceEventCopyWithImpl<$Res,
        _$UpdatePrimaryDeviceEventImpl>
    implements _$$UpdatePrimaryDeviceEventImplCopyWith<$Res> {
  __$$UpdatePrimaryDeviceEventImplCopyWithImpl(
      _$UpdatePrimaryDeviceEventImpl _value,
      $Res Function(_$UpdatePrimaryDeviceEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refNumber = null,
  }) {
    return _then(_$UpdatePrimaryDeviceEventImpl(
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePrimaryDeviceEventImpl implements UpdatePrimaryDeviceEvent {
  const _$UpdatePrimaryDeviceEventImpl({required this.refNumber});

  @override
  final String refNumber;

  @override
  String toString() {
    return 'RegisterReferenceEvent.updatePrimaryDevice(refNumber: $refNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePrimaryDeviceEventImpl &&
            (identical(other.refNumber, refNumber) ||
                other.refNumber == refNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refNumber);

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePrimaryDeviceEventImplCopyWith<_$UpdatePrimaryDeviceEventImpl>
      get copyWith => __$$UpdatePrimaryDeviceEventImplCopyWithImpl<
          _$UpdatePrimaryDeviceEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile, bool isLogin) checkMobile,
    required TResult Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)
        generateOtp,
    required TResult Function(
            String mobile, String otp, MobileCheckEntity? entity)
        verifyMobileOtp,
    required TResult Function(String mobile, int userTypeId) generateReference,
    required TResult Function(String refNumber) updatePrimaryDevice,
    required TResult Function(String mobile, String otp, String refNumber)
        verifyDeviceUpdateOtp,
  }) {
    return updatePrimaryDevice(refNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile, bool isLogin)? checkMobile,
    TResult? Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)?
        generateOtp,
    TResult? Function(String mobile, String otp, MobileCheckEntity? entity)?
        verifyMobileOtp,
    TResult? Function(String mobile, int userTypeId)? generateReference,
    TResult? Function(String refNumber)? updatePrimaryDevice,
    TResult? Function(String mobile, String otp, String refNumber)?
        verifyDeviceUpdateOtp,
  }) {
    return updatePrimaryDevice?.call(refNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile, bool isLogin)? checkMobile,
    TResult Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)?
        generateOtp,
    TResult Function(String mobile, String otp, MobileCheckEntity? entity)?
        verifyMobileOtp,
    TResult Function(String mobile, int userTypeId)? generateReference,
    TResult Function(String refNumber)? updatePrimaryDevice,
    TResult Function(String mobile, String otp, String refNumber)?
        verifyDeviceUpdateOtp,
    required TResult orElse(),
  }) {
    if (updatePrimaryDevice != null) {
      return updatePrimaryDevice(refNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckMobileEvent value) checkMobile,
    required TResult Function(GenerateOtpEvent value) generateOtp,
    required TResult Function(VerifyMobileOtpEvent value) verifyMobileOtp,
    required TResult Function(GenerateReferenceEvent value) generateReference,
    required TResult Function(UpdatePrimaryDeviceEvent value)
        updatePrimaryDevice,
    required TResult Function(VerifyDeviceUpdateOtpEvent value)
        verifyDeviceUpdateOtp,
  }) {
    return updatePrimaryDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckMobileEvent value)? checkMobile,
    TResult? Function(GenerateOtpEvent value)? generateOtp,
    TResult? Function(VerifyMobileOtpEvent value)? verifyMobileOtp,
    TResult? Function(GenerateReferenceEvent value)? generateReference,
    TResult? Function(UpdatePrimaryDeviceEvent value)? updatePrimaryDevice,
    TResult? Function(VerifyDeviceUpdateOtpEvent value)? verifyDeviceUpdateOtp,
  }) {
    return updatePrimaryDevice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckMobileEvent value)? checkMobile,
    TResult Function(GenerateOtpEvent value)? generateOtp,
    TResult Function(VerifyMobileOtpEvent value)? verifyMobileOtp,
    TResult Function(GenerateReferenceEvent value)? generateReference,
    TResult Function(UpdatePrimaryDeviceEvent value)? updatePrimaryDevice,
    TResult Function(VerifyDeviceUpdateOtpEvent value)? verifyDeviceUpdateOtp,
    required TResult orElse(),
  }) {
    if (updatePrimaryDevice != null) {
      return updatePrimaryDevice(this);
    }
    return orElse();
  }
}

abstract class UpdatePrimaryDeviceEvent implements RegisterReferenceEvent {
  const factory UpdatePrimaryDeviceEvent({required final String refNumber}) =
      _$UpdatePrimaryDeviceEventImpl;

  String get refNumber;

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePrimaryDeviceEventImplCopyWith<_$UpdatePrimaryDeviceEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyDeviceUpdateOtpEventImplCopyWith<$Res> {
  factory _$$VerifyDeviceUpdateOtpEventImplCopyWith(
          _$VerifyDeviceUpdateOtpEventImpl value,
          $Res Function(_$VerifyDeviceUpdateOtpEventImpl) then) =
      __$$VerifyDeviceUpdateOtpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mobile, String otp, String refNumber});
}

/// @nodoc
class __$$VerifyDeviceUpdateOtpEventImplCopyWithImpl<$Res>
    extends _$RegisterReferenceEventCopyWithImpl<$Res,
        _$VerifyDeviceUpdateOtpEventImpl>
    implements _$$VerifyDeviceUpdateOtpEventImplCopyWith<$Res> {
  __$$VerifyDeviceUpdateOtpEventImplCopyWithImpl(
      _$VerifyDeviceUpdateOtpEventImpl _value,
      $Res Function(_$VerifyDeviceUpdateOtpEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
    Object? otp = null,
    Object? refNumber = null,
  }) {
    return _then(_$VerifyDeviceUpdateOtpEventImpl(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyDeviceUpdateOtpEventImpl implements VerifyDeviceUpdateOtpEvent {
  const _$VerifyDeviceUpdateOtpEventImpl(
      {required this.mobile, required this.otp, required this.refNumber});

  @override
  final String mobile;
  @override
  final String otp;
  @override
  final String refNumber;

  @override
  String toString() {
    return 'RegisterReferenceEvent.verifyDeviceUpdateOtp(mobile: $mobile, otp: $otp, refNumber: $refNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyDeviceUpdateOtpEventImpl &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.refNumber, refNumber) ||
                other.refNumber == refNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobile, otp, refNumber);

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyDeviceUpdateOtpEventImplCopyWith<_$VerifyDeviceUpdateOtpEventImpl>
      get copyWith => __$$VerifyDeviceUpdateOtpEventImplCopyWithImpl<
          _$VerifyDeviceUpdateOtpEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mobile, bool isLogin) checkMobile,
    required TResult Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)
        generateOtp,
    required TResult Function(
            String mobile, String otp, MobileCheckEntity? entity)
        verifyMobileOtp,
    required TResult Function(String mobile, int userTypeId) generateReference,
    required TResult Function(String refNumber) updatePrimaryDevice,
    required TResult Function(String mobile, String otp, String refNumber)
        verifyDeviceUpdateOtp,
  }) {
    return verifyDeviceUpdateOtp(mobile, otp, refNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mobile, bool isLogin)? checkMobile,
    TResult? Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)?
        generateOtp,
    TResult? Function(String mobile, String otp, MobileCheckEntity? entity)?
        verifyMobileOtp,
    TResult? Function(String mobile, int userTypeId)? generateReference,
    TResult? Function(String refNumber)? updatePrimaryDevice,
    TResult? Function(String mobile, String otp, String refNumber)?
        verifyDeviceUpdateOtp,
  }) {
    return verifyDeviceUpdateOtp?.call(mobile, otp, refNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mobile, bool isLogin)? checkMobile,
    TResult Function(String mobile, MobileCheckEntity? entity,
            bool needDeviceUpdate, String? refNumber)?
        generateOtp,
    TResult Function(String mobile, String otp, MobileCheckEntity? entity)?
        verifyMobileOtp,
    TResult Function(String mobile, int userTypeId)? generateReference,
    TResult Function(String refNumber)? updatePrimaryDevice,
    TResult Function(String mobile, String otp, String refNumber)?
        verifyDeviceUpdateOtp,
    required TResult orElse(),
  }) {
    if (verifyDeviceUpdateOtp != null) {
      return verifyDeviceUpdateOtp(mobile, otp, refNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckMobileEvent value) checkMobile,
    required TResult Function(GenerateOtpEvent value) generateOtp,
    required TResult Function(VerifyMobileOtpEvent value) verifyMobileOtp,
    required TResult Function(GenerateReferenceEvent value) generateReference,
    required TResult Function(UpdatePrimaryDeviceEvent value)
        updatePrimaryDevice,
    required TResult Function(VerifyDeviceUpdateOtpEvent value)
        verifyDeviceUpdateOtp,
  }) {
    return verifyDeviceUpdateOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckMobileEvent value)? checkMobile,
    TResult? Function(GenerateOtpEvent value)? generateOtp,
    TResult? Function(VerifyMobileOtpEvent value)? verifyMobileOtp,
    TResult? Function(GenerateReferenceEvent value)? generateReference,
    TResult? Function(UpdatePrimaryDeviceEvent value)? updatePrimaryDevice,
    TResult? Function(VerifyDeviceUpdateOtpEvent value)? verifyDeviceUpdateOtp,
  }) {
    return verifyDeviceUpdateOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckMobileEvent value)? checkMobile,
    TResult Function(GenerateOtpEvent value)? generateOtp,
    TResult Function(VerifyMobileOtpEvent value)? verifyMobileOtp,
    TResult Function(GenerateReferenceEvent value)? generateReference,
    TResult Function(UpdatePrimaryDeviceEvent value)? updatePrimaryDevice,
    TResult Function(VerifyDeviceUpdateOtpEvent value)? verifyDeviceUpdateOtp,
    required TResult orElse(),
  }) {
    if (verifyDeviceUpdateOtp != null) {
      return verifyDeviceUpdateOtp(this);
    }
    return orElse();
  }
}

abstract class VerifyDeviceUpdateOtpEvent implements RegisterReferenceEvent {
  const factory VerifyDeviceUpdateOtpEvent(
      {required final String mobile,
      required final String otp,
      required final String refNumber}) = _$VerifyDeviceUpdateOtpEventImpl;

  String get mobile;
  String get otp;
  String get refNumber;

  /// Create a copy of RegisterReferenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyDeviceUpdateOtpEventImplCopyWith<_$VerifyDeviceUpdateOtpEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterReferenceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterReferenceStateCopyWith<$Res> {
  factory $RegisterReferenceStateCopyWith(RegisterReferenceState value,
          $Res Function(RegisterReferenceState) then) =
      _$RegisterReferenceStateCopyWithImpl<$Res, RegisterReferenceState>;
}

/// @nodoc
class _$RegisterReferenceStateCopyWithImpl<$Res,
        $Val extends RegisterReferenceState>
    implements $RegisterReferenceStateCopyWith<$Res> {
  _$RegisterReferenceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MobileVerificationInitialImplCopyWith<$Res> {
  factory _$$MobileVerificationInitialImplCopyWith(
          _$MobileVerificationInitialImpl value,
          $Res Function(_$MobileVerificationInitialImpl) then) =
      __$$MobileVerificationInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MobileVerificationInitialImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$MobileVerificationInitialImpl>
    implements _$$MobileVerificationInitialImplCopyWith<$Res> {
  __$$MobileVerificationInitialImplCopyWithImpl(
      _$MobileVerificationInitialImpl _value,
      $Res Function(_$MobileVerificationInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MobileVerificationInitialImpl implements MobileVerificationInitial {
  const _$MobileVerificationInitialImpl();

  @override
  String toString() {
    return 'RegisterReferenceState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileVerificationInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MobileVerificationInitial implements RegisterReferenceState {
  const factory MobileVerificationInitial() = _$MobileVerificationInitialImpl;
}

/// @nodoc
abstract class _$$MobileVerificationLoadingImplCopyWith<$Res> {
  factory _$$MobileVerificationLoadingImplCopyWith(
          _$MobileVerificationLoadingImpl value,
          $Res Function(_$MobileVerificationLoadingImpl) then) =
      __$$MobileVerificationLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MobileVerificationLoadingImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$MobileVerificationLoadingImpl>
    implements _$$MobileVerificationLoadingImplCopyWith<$Res> {
  __$$MobileVerificationLoadingImplCopyWithImpl(
      _$MobileVerificationLoadingImpl _value,
      $Res Function(_$MobileVerificationLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MobileVerificationLoadingImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MobileVerificationLoadingImpl implements MobileVerificationLoading {
  const _$MobileVerificationLoadingImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterReferenceState.loading(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileVerificationLoadingImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileVerificationLoadingImplCopyWith<_$MobileVerificationLoadingImpl>
      get copyWith => __$$MobileVerificationLoadingImplCopyWithImpl<
          _$MobileVerificationLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return loading(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return loading?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MobileVerificationLoading implements RegisterReferenceState {
  const factory MobileVerificationLoading({required final String message}) =
      _$MobileVerificationLoadingImpl;

  String get message;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MobileVerificationLoadingImplCopyWith<_$MobileVerificationLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MobileNotVerifiedImplCopyWith<$Res> {
  factory _$$MobileNotVerifiedImplCopyWith(_$MobileNotVerifiedImpl value,
          $Res Function(_$MobileNotVerifiedImpl) then) =
      __$$MobileNotVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MobileCheckEntity entity});

  $MobileCheckEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$MobileNotVerifiedImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res, _$MobileNotVerifiedImpl>
    implements _$$MobileNotVerifiedImplCopyWith<$Res> {
  __$$MobileNotVerifiedImplCopyWithImpl(_$MobileNotVerifiedImpl _value,
      $Res Function(_$MobileNotVerifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$MobileNotVerifiedImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res> get entity {
    return $MobileCheckEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$MobileNotVerifiedImpl implements MobileNotVerified {
  const _$MobileNotVerifiedImpl({required this.entity});

  @override
  final MobileCheckEntity entity;

  @override
  String toString() {
    return 'RegisterReferenceState.mobileNotVerified(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileNotVerifiedImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileNotVerifiedImplCopyWith<_$MobileNotVerifiedImpl> get copyWith =>
      __$$MobileNotVerifiedImplCopyWithImpl<_$MobileNotVerifiedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return mobileNotVerified(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return mobileNotVerified?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (mobileNotVerified != null) {
      return mobileNotVerified(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return mobileNotVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return mobileNotVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (mobileNotVerified != null) {
      return mobileNotVerified(this);
    }
    return orElse();
  }
}

abstract class MobileNotVerified implements RegisterReferenceState {
  const factory MobileNotVerified({required final MobileCheckEntity entity}) =
      _$MobileNotVerifiedImpl;

  MobileCheckEntity get entity;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MobileNotVerifiedImplCopyWith<_$MobileNotVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceMismatchImplCopyWith<$Res> {
  factory _$$DeviceMismatchImplCopyWith(_$DeviceMismatchImpl value,
          $Res Function(_$DeviceMismatchImpl) then) =
      __$$DeviceMismatchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String refNumber});
}

/// @nodoc
class __$$DeviceMismatchImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res, _$DeviceMismatchImpl>
    implements _$$DeviceMismatchImplCopyWith<$Res> {
  __$$DeviceMismatchImplCopyWithImpl(
      _$DeviceMismatchImpl _value, $Res Function(_$DeviceMismatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? refNumber = null,
  }) {
    return _then(_$DeviceMismatchImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeviceMismatchImpl implements DeviceMismatch {
  const _$DeviceMismatchImpl({required this.message, required this.refNumber});

  @override
  final String message;
  @override
  final String refNumber;

  @override
  String toString() {
    return 'RegisterReferenceState.deviceMismatch(message: $message, refNumber: $refNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceMismatchImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.refNumber, refNumber) ||
                other.refNumber == refNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, refNumber);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceMismatchImplCopyWith<_$DeviceMismatchImpl> get copyWith =>
      __$$DeviceMismatchImplCopyWithImpl<_$DeviceMismatchImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return deviceMismatch(message, refNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return deviceMismatch?.call(message, refNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (deviceMismatch != null) {
      return deviceMismatch(message, refNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return deviceMismatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return deviceMismatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (deviceMismatch != null) {
      return deviceMismatch(this);
    }
    return orElse();
  }
}

abstract class DeviceMismatch implements RegisterReferenceState {
  const factory DeviceMismatch(
      {required final String message,
      required final String refNumber}) = _$DeviceMismatchImpl;

  String get message;
  String get refNumber;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceMismatchImplCopyWith<_$DeviceMismatchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceAlreadyExistsNewUserImplCopyWith<$Res> {
  factory _$$DeviceAlreadyExistsNewUserImplCopyWith(
          _$DeviceAlreadyExistsNewUserImpl value,
          $Res Function(_$DeviceAlreadyExistsNewUserImpl) then) =
      __$$DeviceAlreadyExistsNewUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeviceAlreadyExistsNewUserImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$DeviceAlreadyExistsNewUserImpl>
    implements _$$DeviceAlreadyExistsNewUserImplCopyWith<$Res> {
  __$$DeviceAlreadyExistsNewUserImplCopyWithImpl(
      _$DeviceAlreadyExistsNewUserImpl _value,
      $Res Function(_$DeviceAlreadyExistsNewUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeviceAlreadyExistsNewUserImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeviceAlreadyExistsNewUserImpl implements DeviceAlreadyExistsNewUser {
  const _$DeviceAlreadyExistsNewUserImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterReferenceState.deviceAlreadyExistsNewUser(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceAlreadyExistsNewUserImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceAlreadyExistsNewUserImplCopyWith<_$DeviceAlreadyExistsNewUserImpl>
      get copyWith => __$$DeviceAlreadyExistsNewUserImplCopyWithImpl<
          _$DeviceAlreadyExistsNewUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return deviceAlreadyExistsNewUser(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return deviceAlreadyExistsNewUser?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (deviceAlreadyExistsNewUser != null) {
      return deviceAlreadyExistsNewUser(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return deviceAlreadyExistsNewUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return deviceAlreadyExistsNewUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (deviceAlreadyExistsNewUser != null) {
      return deviceAlreadyExistsNewUser(this);
    }
    return orElse();
  }
}

abstract class DeviceAlreadyExistsNewUser implements RegisterReferenceState {
  const factory DeviceAlreadyExistsNewUser({required final String message}) =
      _$DeviceAlreadyExistsNewUserImpl;

  String get message;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceAlreadyExistsNewUserImplCopyWith<_$DeviceAlreadyExistsNewUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeviceAlreadyExistsOldUserImplCopyWith<$Res> {
  factory _$$DeviceAlreadyExistsOldUserImplCopyWith(
          _$DeviceAlreadyExistsOldUserImpl value,
          $Res Function(_$DeviceAlreadyExistsOldUserImpl) then) =
      __$$DeviceAlreadyExistsOldUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeviceAlreadyExistsOldUserImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$DeviceAlreadyExistsOldUserImpl>
    implements _$$DeviceAlreadyExistsOldUserImplCopyWith<$Res> {
  __$$DeviceAlreadyExistsOldUserImplCopyWithImpl(
      _$DeviceAlreadyExistsOldUserImpl _value,
      $Res Function(_$DeviceAlreadyExistsOldUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeviceAlreadyExistsOldUserImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeviceAlreadyExistsOldUserImpl implements DeviceAlreadyExistsOldUser {
  const _$DeviceAlreadyExistsOldUserImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterReferenceState.deviceAlreadyExistsOldUser(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceAlreadyExistsOldUserImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceAlreadyExistsOldUserImplCopyWith<_$DeviceAlreadyExistsOldUserImpl>
      get copyWith => __$$DeviceAlreadyExistsOldUserImplCopyWithImpl<
          _$DeviceAlreadyExistsOldUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return deviceAlreadyExistsOldUser(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return deviceAlreadyExistsOldUser?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (deviceAlreadyExistsOldUser != null) {
      return deviceAlreadyExistsOldUser(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return deviceAlreadyExistsOldUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return deviceAlreadyExistsOldUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (deviceAlreadyExistsOldUser != null) {
      return deviceAlreadyExistsOldUser(this);
    }
    return orElse();
  }
}

abstract class DeviceAlreadyExistsOldUser implements RegisterReferenceState {
  const factory DeviceAlreadyExistsOldUser({required final String message}) =
      _$DeviceAlreadyExistsOldUserImpl;

  String get message;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceAlreadyExistsOldUserImplCopyWith<_$DeviceAlreadyExistsOldUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePrimaryDeviceLoadingImplCopyWith<$Res> {
  factory _$$UpdatePrimaryDeviceLoadingImplCopyWith(
          _$UpdatePrimaryDeviceLoadingImpl value,
          $Res Function(_$UpdatePrimaryDeviceLoadingImpl) then) =
      __$$UpdatePrimaryDeviceLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String refNumber});
}

/// @nodoc
class __$$UpdatePrimaryDeviceLoadingImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$UpdatePrimaryDeviceLoadingImpl>
    implements _$$UpdatePrimaryDeviceLoadingImplCopyWith<$Res> {
  __$$UpdatePrimaryDeviceLoadingImplCopyWithImpl(
      _$UpdatePrimaryDeviceLoadingImpl _value,
      $Res Function(_$UpdatePrimaryDeviceLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? refNumber = null,
  }) {
    return _then(_$UpdatePrimaryDeviceLoadingImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePrimaryDeviceLoadingImpl implements UpdatePrimaryDeviceLoading {
  const _$UpdatePrimaryDeviceLoadingImpl(
      {required this.message, required this.refNumber});

  @override
  final String message;
  @override
  final String refNumber;

  @override
  String toString() {
    return 'RegisterReferenceState.updatePrimaryDeviceLoading(message: $message, refNumber: $refNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePrimaryDeviceLoadingImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.refNumber, refNumber) ||
                other.refNumber == refNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, refNumber);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePrimaryDeviceLoadingImplCopyWith<_$UpdatePrimaryDeviceLoadingImpl>
      get copyWith => __$$UpdatePrimaryDeviceLoadingImplCopyWithImpl<
          _$UpdatePrimaryDeviceLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return updatePrimaryDeviceLoading(message, refNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return updatePrimaryDeviceLoading?.call(message, refNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (updatePrimaryDeviceLoading != null) {
      return updatePrimaryDeviceLoading(message, refNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return updatePrimaryDeviceLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return updatePrimaryDeviceLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (updatePrimaryDeviceLoading != null) {
      return updatePrimaryDeviceLoading(this);
    }
    return orElse();
  }
}

abstract class UpdatePrimaryDeviceLoading implements RegisterReferenceState {
  const factory UpdatePrimaryDeviceLoading(
      {required final String message,
      required final String refNumber}) = _$UpdatePrimaryDeviceLoadingImpl;

  String get message;
  String get refNumber;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePrimaryDeviceLoadingImplCopyWith<_$UpdatePrimaryDeviceLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePrimaryDeviceSuccessImplCopyWith<$Res> {
  factory _$$UpdatePrimaryDeviceSuccessImplCopyWith(
          _$UpdatePrimaryDeviceSuccessImpl value,
          $Res Function(_$UpdatePrimaryDeviceSuccessImpl) then) =
      __$$UpdatePrimaryDeviceSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdatePrimaryDeviceEntity entity});

  $UpdatePrimaryDeviceEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$UpdatePrimaryDeviceSuccessImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$UpdatePrimaryDeviceSuccessImpl>
    implements _$$UpdatePrimaryDeviceSuccessImplCopyWith<$Res> {
  __$$UpdatePrimaryDeviceSuccessImplCopyWithImpl(
      _$UpdatePrimaryDeviceSuccessImpl _value,
      $Res Function(_$UpdatePrimaryDeviceSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$UpdatePrimaryDeviceSuccessImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as UpdatePrimaryDeviceEntity,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdatePrimaryDeviceEntityCopyWith<$Res> get entity {
    return $UpdatePrimaryDeviceEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$UpdatePrimaryDeviceSuccessImpl implements UpdatePrimaryDeviceSuccess {
  const _$UpdatePrimaryDeviceSuccessImpl({required this.entity});

  @override
  final UpdatePrimaryDeviceEntity entity;

  @override
  String toString() {
    return 'RegisterReferenceState.updatePrimaryDeviceSuccess(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePrimaryDeviceSuccessImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePrimaryDeviceSuccessImplCopyWith<_$UpdatePrimaryDeviceSuccessImpl>
      get copyWith => __$$UpdatePrimaryDeviceSuccessImplCopyWithImpl<
          _$UpdatePrimaryDeviceSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return updatePrimaryDeviceSuccess(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return updatePrimaryDeviceSuccess?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (updatePrimaryDeviceSuccess != null) {
      return updatePrimaryDeviceSuccess(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return updatePrimaryDeviceSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return updatePrimaryDeviceSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (updatePrimaryDeviceSuccess != null) {
      return updatePrimaryDeviceSuccess(this);
    }
    return orElse();
  }
}

abstract class UpdatePrimaryDeviceSuccess implements RegisterReferenceState {
  const factory UpdatePrimaryDeviceSuccess(
          {required final UpdatePrimaryDeviceEntity entity}) =
      _$UpdatePrimaryDeviceSuccessImpl;

  UpdatePrimaryDeviceEntity get entity;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePrimaryDeviceSuccessImplCopyWith<_$UpdatePrimaryDeviceSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePrimaryDeviceErrorImplCopyWith<$Res> {
  factory _$$UpdatePrimaryDeviceErrorImplCopyWith(
          _$UpdatePrimaryDeviceErrorImpl value,
          $Res Function(_$UpdatePrimaryDeviceErrorImpl) then) =
      __$$UpdatePrimaryDeviceErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String refNumber});
}

/// @nodoc
class __$$UpdatePrimaryDeviceErrorImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$UpdatePrimaryDeviceErrorImpl>
    implements _$$UpdatePrimaryDeviceErrorImplCopyWith<$Res> {
  __$$UpdatePrimaryDeviceErrorImplCopyWithImpl(
      _$UpdatePrimaryDeviceErrorImpl _value,
      $Res Function(_$UpdatePrimaryDeviceErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? refNumber = null,
  }) {
    return _then(_$UpdatePrimaryDeviceErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePrimaryDeviceErrorImpl implements UpdatePrimaryDeviceError {
  const _$UpdatePrimaryDeviceErrorImpl(
      {required this.message, required this.refNumber});

  @override
  final String message;
  @override
  final String refNumber;

  @override
  String toString() {
    return 'RegisterReferenceState.updatePrimaryDeviceError(message: $message, refNumber: $refNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePrimaryDeviceErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.refNumber, refNumber) ||
                other.refNumber == refNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, refNumber);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePrimaryDeviceErrorImplCopyWith<_$UpdatePrimaryDeviceErrorImpl>
      get copyWith => __$$UpdatePrimaryDeviceErrorImplCopyWithImpl<
          _$UpdatePrimaryDeviceErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return updatePrimaryDeviceError(message, refNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return updatePrimaryDeviceError?.call(message, refNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (updatePrimaryDeviceError != null) {
      return updatePrimaryDeviceError(message, refNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return updatePrimaryDeviceError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return updatePrimaryDeviceError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (updatePrimaryDeviceError != null) {
      return updatePrimaryDeviceError(this);
    }
    return orElse();
  }
}

abstract class UpdatePrimaryDeviceError implements RegisterReferenceState {
  const factory UpdatePrimaryDeviceError(
      {required final String message,
      required final String refNumber}) = _$UpdatePrimaryDeviceErrorImpl;

  String get message;
  String get refNumber;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePrimaryDeviceErrorImplCopyWith<_$UpdatePrimaryDeviceErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePrimaryServerDownErrorImplCopyWith<$Res> {
  factory _$$UpdatePrimaryServerDownErrorImplCopyWith(
          _$UpdatePrimaryServerDownErrorImpl value,
          $Res Function(_$UpdatePrimaryServerDownErrorImpl) then) =
      __$$UpdatePrimaryServerDownErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UpdatePrimaryServerDownErrorImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$UpdatePrimaryServerDownErrorImpl>
    implements _$$UpdatePrimaryServerDownErrorImplCopyWith<$Res> {
  __$$UpdatePrimaryServerDownErrorImplCopyWithImpl(
      _$UpdatePrimaryServerDownErrorImpl _value,
      $Res Function(_$UpdatePrimaryServerDownErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UpdatePrimaryServerDownErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePrimaryServerDownErrorImpl
    implements UpdatePrimaryServerDownError {
  const _$UpdatePrimaryServerDownErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterReferenceState.updatePrimaryServerDownError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePrimaryServerDownErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePrimaryServerDownErrorImplCopyWith<
          _$UpdatePrimaryServerDownErrorImpl>
      get copyWith => __$$UpdatePrimaryServerDownErrorImplCopyWithImpl<
          _$UpdatePrimaryServerDownErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return updatePrimaryServerDownError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return updatePrimaryServerDownError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (updatePrimaryServerDownError != null) {
      return updatePrimaryServerDownError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return updatePrimaryServerDownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return updatePrimaryServerDownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (updatePrimaryServerDownError != null) {
      return updatePrimaryServerDownError(this);
    }
    return orElse();
  }
}

abstract class UpdatePrimaryServerDownError implements RegisterReferenceState {
  const factory UpdatePrimaryServerDownError({required final String message}) =
      _$UpdatePrimaryServerDownErrorImpl;

  String get message;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePrimaryServerDownErrorImplCopyWith<
          _$UpdatePrimaryServerDownErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountNotVerifiedImplCopyWith<$Res> {
  factory _$$AccountNotVerifiedImplCopyWith(_$AccountNotVerifiedImpl value,
          $Res Function(_$AccountNotVerifiedImpl) then) =
      __$$AccountNotVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MobileCheckEntity entity});

  $MobileCheckEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$AccountNotVerifiedImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res, _$AccountNotVerifiedImpl>
    implements _$$AccountNotVerifiedImplCopyWith<$Res> {
  __$$AccountNotVerifiedImplCopyWithImpl(_$AccountNotVerifiedImpl _value,
      $Res Function(_$AccountNotVerifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$AccountNotVerifiedImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res> get entity {
    return $MobileCheckEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$AccountNotVerifiedImpl implements AccountNotVerified {
  const _$AccountNotVerifiedImpl({required this.entity});

  @override
  final MobileCheckEntity entity;

  @override
  String toString() {
    return 'RegisterReferenceState.accountNotVerified(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountNotVerifiedImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountNotVerifiedImplCopyWith<_$AccountNotVerifiedImpl> get copyWith =>
      __$$AccountNotVerifiedImplCopyWithImpl<_$AccountNotVerifiedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return accountNotVerified(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return accountNotVerified?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (accountNotVerified != null) {
      return accountNotVerified(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return accountNotVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return accountNotVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (accountNotVerified != null) {
      return accountNotVerified(this);
    }
    return orElse();
  }
}

abstract class AccountNotVerified implements RegisterReferenceState {
  const factory AccountNotVerified({required final MobileCheckEntity entity}) =
      _$AccountNotVerifiedImpl;

  MobileCheckEntity get entity;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountNotVerifiedImplCopyWith<_$AccountNotVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountVerifiedImplCopyWith<$Res> {
  factory _$$AccountVerifiedImplCopyWith(_$AccountVerifiedImpl value,
          $Res Function(_$AccountVerifiedImpl) then) =
      __$$AccountVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MobileCheckEntity entity, String message, String content});

  $MobileCheckEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$AccountVerifiedImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res, _$AccountVerifiedImpl>
    implements _$$AccountVerifiedImplCopyWith<$Res> {
  __$$AccountVerifiedImplCopyWithImpl(
      _$AccountVerifiedImpl _value, $Res Function(_$AccountVerifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? message = null,
    Object? content = null,
  }) {
    return _then(_$AccountVerifiedImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res> get entity {
    return $MobileCheckEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$AccountVerifiedImpl implements AccountVerified {
  const _$AccountVerifiedImpl(
      {required this.entity, required this.message, required this.content});

  @override
  final MobileCheckEntity entity;
  @override
  final String message;
  @override
  final String content;

  @override
  String toString() {
    return 'RegisterReferenceState.accountVerified(entity: $entity, message: $message, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountVerifiedImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, message, content);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountVerifiedImplCopyWith<_$AccountVerifiedImpl> get copyWith =>
      __$$AccountVerifiedImplCopyWithImpl<_$AccountVerifiedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return accountVerified(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return accountVerified?.call(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (accountVerified != null) {
      return accountVerified(entity, message, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return accountVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return accountVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (accountVerified != null) {
      return accountVerified(this);
    }
    return orElse();
  }
}

abstract class AccountVerified implements RegisterReferenceState {
  const factory AccountVerified(
      {required final MobileCheckEntity entity,
      required final String message,
      required final String content}) = _$AccountVerifiedImpl;

  MobileCheckEntity get entity;
  String get message;
  String get content;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountVerifiedImplCopyWith<_$AccountVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KYCVerifiedImplCopyWith<$Res> {
  factory _$$KYCVerifiedImplCopyWith(
          _$KYCVerifiedImpl value, $Res Function(_$KYCVerifiedImpl) then) =
      __$$KYCVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MobileCheckEntity entity, String message, String content});

  $MobileCheckEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$KYCVerifiedImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res, _$KYCVerifiedImpl>
    implements _$$KYCVerifiedImplCopyWith<$Res> {
  __$$KYCVerifiedImplCopyWithImpl(
      _$KYCVerifiedImpl _value, $Res Function(_$KYCVerifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? message = null,
    Object? content = null,
  }) {
    return _then(_$KYCVerifiedImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res> get entity {
    return $MobileCheckEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$KYCVerifiedImpl implements KYCVerified {
  const _$KYCVerifiedImpl(
      {required this.entity, required this.message, required this.content});

  @override
  final MobileCheckEntity entity;
  @override
  final String message;
  @override
  final String content;

  @override
  String toString() {
    return 'RegisterReferenceState.kycVerified(entity: $entity, message: $message, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KYCVerifiedImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, message, content);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KYCVerifiedImplCopyWith<_$KYCVerifiedImpl> get copyWith =>
      __$$KYCVerifiedImplCopyWithImpl<_$KYCVerifiedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return kycVerified(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return kycVerified?.call(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (kycVerified != null) {
      return kycVerified(entity, message, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return kycVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return kycVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (kycVerified != null) {
      return kycVerified(this);
    }
    return orElse();
  }
}

abstract class KYCVerified implements RegisterReferenceState {
  const factory KYCVerified(
      {required final MobileCheckEntity entity,
      required final String message,
      required final String content}) = _$KYCVerifiedImpl;

  MobileCheckEntity get entity;
  String get message;
  String get content;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KYCVerifiedImplCopyWith<_$KYCVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GuardianVerifiedImplCopyWith<$Res> {
  factory _$$GuardianVerifiedImplCopyWith(_$GuardianVerifiedImpl value,
          $Res Function(_$GuardianVerifiedImpl) then) =
      __$$GuardianVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MobileCheckEntity entity, String message, String content});

  $MobileCheckEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$GuardianVerifiedImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res, _$GuardianVerifiedImpl>
    implements _$$GuardianVerifiedImplCopyWith<$Res> {
  __$$GuardianVerifiedImplCopyWithImpl(_$GuardianVerifiedImpl _value,
      $Res Function(_$GuardianVerifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? message = null,
    Object? content = null,
  }) {
    return _then(_$GuardianVerifiedImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res> get entity {
    return $MobileCheckEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$GuardianVerifiedImpl implements GuardianVerified {
  const _$GuardianVerifiedImpl(
      {required this.entity, required this.message, required this.content});

  @override
  final MobileCheckEntity entity;
  @override
  final String message;
  @override
  final String content;

  @override
  String toString() {
    return 'RegisterReferenceState.guardianVerified(entity: $entity, message: $message, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuardianVerifiedImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, message, content);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuardianVerifiedImplCopyWith<_$GuardianVerifiedImpl> get copyWith =>
      __$$GuardianVerifiedImplCopyWithImpl<_$GuardianVerifiedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return guardianVerified(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return guardianVerified?.call(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (guardianVerified != null) {
      return guardianVerified(entity, message, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return guardianVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return guardianVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (guardianVerified != null) {
      return guardianVerified(this);
    }
    return orElse();
  }
}

abstract class GuardianVerified implements RegisterReferenceState {
  const factory GuardianVerified(
      {required final MobileCheckEntity entity,
      required final String message,
      required final String content}) = _$GuardianVerifiedImpl;

  MobileCheckEntity get entity;
  String get message;
  String get content;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuardianVerifiedImplCopyWith<_$GuardianVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OccupationVerifiedImplCopyWith<$Res> {
  factory _$$OccupationVerifiedImplCopyWith(_$OccupationVerifiedImpl value,
          $Res Function(_$OccupationVerifiedImpl) then) =
      __$$OccupationVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MobileCheckEntity entity, String message, String content});

  $MobileCheckEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$OccupationVerifiedImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res, _$OccupationVerifiedImpl>
    implements _$$OccupationVerifiedImplCopyWith<$Res> {
  __$$OccupationVerifiedImplCopyWithImpl(_$OccupationVerifiedImpl _value,
      $Res Function(_$OccupationVerifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? message = null,
    Object? content = null,
  }) {
    return _then(_$OccupationVerifiedImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res> get entity {
    return $MobileCheckEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$OccupationVerifiedImpl implements OccupationVerified {
  const _$OccupationVerifiedImpl(
      {required this.entity, required this.message, required this.content});

  @override
  final MobileCheckEntity entity;
  @override
  final String message;
  @override
  final String content;

  @override
  String toString() {
    return 'RegisterReferenceState.occupationVerified(entity: $entity, message: $message, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OccupationVerifiedImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, message, content);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OccupationVerifiedImplCopyWith<_$OccupationVerifiedImpl> get copyWith =>
      __$$OccupationVerifiedImplCopyWithImpl<_$OccupationVerifiedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return occupationVerified(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return occupationVerified?.call(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (occupationVerified != null) {
      return occupationVerified(entity, message, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return occupationVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return occupationVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (occupationVerified != null) {
      return occupationVerified(this);
    }
    return orElse();
  }
}

abstract class OccupationVerified implements RegisterReferenceState {
  const factory OccupationVerified(
      {required final MobileCheckEntity entity,
      required final String message,
      required final String content}) = _$OccupationVerifiedImpl;

  MobileCheckEntity get entity;
  String get message;
  String get content;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OccupationVerifiedImplCopyWith<_$OccupationVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddressVerifiedImplCopyWith<$Res> {
  factory _$$AddressVerifiedImplCopyWith(_$AddressVerifiedImpl value,
          $Res Function(_$AddressVerifiedImpl) then) =
      __$$AddressVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MobileCheckEntity entity, String message, String content});

  $MobileCheckEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$AddressVerifiedImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res, _$AddressVerifiedImpl>
    implements _$$AddressVerifiedImplCopyWith<$Res> {
  __$$AddressVerifiedImplCopyWithImpl(
      _$AddressVerifiedImpl _value, $Res Function(_$AddressVerifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? message = null,
    Object? content = null,
  }) {
    return _then(_$AddressVerifiedImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res> get entity {
    return $MobileCheckEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$AddressVerifiedImpl implements AddressVerified {
  const _$AddressVerifiedImpl(
      {required this.entity, required this.message, required this.content});

  @override
  final MobileCheckEntity entity;
  @override
  final String message;
  @override
  final String content;

  @override
  String toString() {
    return 'RegisterReferenceState.addressVerified(entity: $entity, message: $message, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressVerifiedImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, message, content);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressVerifiedImplCopyWith<_$AddressVerifiedImpl> get copyWith =>
      __$$AddressVerifiedImplCopyWithImpl<_$AddressVerifiedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return addressVerified(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return addressVerified?.call(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (addressVerified != null) {
      return addressVerified(entity, message, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return addressVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return addressVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (addressVerified != null) {
      return addressVerified(this);
    }
    return orElse();
  }
}

abstract class AddressVerified implements RegisterReferenceState {
  const factory AddressVerified(
      {required final MobileCheckEntity entity,
      required final String message,
      required final String content}) = _$AddressVerifiedImpl;

  MobileCheckEntity get entity;
  String get message;
  String get content;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressVerifiedImplCopyWith<_$AddressVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PepVerifiedImplCopyWith<$Res> {
  factory _$$PepVerifiedImplCopyWith(
          _$PepVerifiedImpl value, $Res Function(_$PepVerifiedImpl) then) =
      __$$PepVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MobileCheckEntity entity, String message, String content});

  $MobileCheckEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$PepVerifiedImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res, _$PepVerifiedImpl>
    implements _$$PepVerifiedImplCopyWith<$Res> {
  __$$PepVerifiedImplCopyWithImpl(
      _$PepVerifiedImpl _value, $Res Function(_$PepVerifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? message = null,
    Object? content = null,
  }) {
    return _then(_$PepVerifiedImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res> get entity {
    return $MobileCheckEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$PepVerifiedImpl implements PepVerified {
  const _$PepVerifiedImpl(
      {required this.entity, required this.message, required this.content});

  @override
  final MobileCheckEntity entity;
  @override
  final String message;
  @override
  final String content;

  @override
  String toString() {
    return 'RegisterReferenceState.pepVerified(entity: $entity, message: $message, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PepVerifiedImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, message, content);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PepVerifiedImplCopyWith<_$PepVerifiedImpl> get copyWith =>
      __$$PepVerifiedImplCopyWithImpl<_$PepVerifiedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return pepVerified(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return pepVerified?.call(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (pepVerified != null) {
      return pepVerified(entity, message, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return pepVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return pepVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (pepVerified != null) {
      return pepVerified(this);
    }
    return orElse();
  }
}

abstract class PepVerified implements RegisterReferenceState {
  const factory PepVerified(
      {required final MobileCheckEntity entity,
      required final String message,
      required final String content}) = _$PepVerifiedImpl;

  MobileCheckEntity get entity;
  String get message;
  String get content;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PepVerifiedImplCopyWith<_$PepVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BusinessDetailsRegisterationImplCopyWith<$Res> {
  factory _$$BusinessDetailsRegisterationImplCopyWith(
          _$BusinessDetailsRegisterationImpl value,
          $Res Function(_$BusinessDetailsRegisterationImpl) then) =
      __$$BusinessDetailsRegisterationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MobileCheckEntity entity, String message, String content});

  $MobileCheckEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$BusinessDetailsRegisterationImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$BusinessDetailsRegisterationImpl>
    implements _$$BusinessDetailsRegisterationImplCopyWith<$Res> {
  __$$BusinessDetailsRegisterationImplCopyWithImpl(
      _$BusinessDetailsRegisterationImpl _value,
      $Res Function(_$BusinessDetailsRegisterationImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? message = null,
    Object? content = null,
  }) {
    return _then(_$BusinessDetailsRegisterationImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res> get entity {
    return $MobileCheckEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$BusinessDetailsRegisterationImpl
    implements BusinessDetailsRegisteration {
  const _$BusinessDetailsRegisterationImpl(
      {required this.entity, required this.message, required this.content});

  @override
  final MobileCheckEntity entity;
  @override
  final String message;
  @override
  final String content;

  @override
  String toString() {
    return 'RegisterReferenceState.businessDetailsRegisteration(entity: $entity, message: $message, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessDetailsRegisterationImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, message, content);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessDetailsRegisterationImplCopyWith<
          _$BusinessDetailsRegisterationImpl>
      get copyWith => __$$BusinessDetailsRegisterationImplCopyWithImpl<
          _$BusinessDetailsRegisterationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return businessDetailsRegisteration(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return businessDetailsRegisteration?.call(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (businessDetailsRegisteration != null) {
      return businessDetailsRegisteration(entity, message, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return businessDetailsRegisteration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return businessDetailsRegisteration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (businessDetailsRegisteration != null) {
      return businessDetailsRegisteration(this);
    }
    return orElse();
  }
}

abstract class BusinessDetailsRegisteration implements RegisterReferenceState {
  const factory BusinessDetailsRegisteration(
      {required final MobileCheckEntity entity,
      required final String message,
      required final String content}) = _$BusinessDetailsRegisterationImpl;

  MobileCheckEntity get entity;
  String get message;
  String get content;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessDetailsRegisterationImplCopyWith<
          _$BusinessDetailsRegisterationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BusinessAddressProofRegisterationImplCopyWith<$Res> {
  factory _$$BusinessAddressProofRegisterationImplCopyWith(
          _$BusinessAddressProofRegisterationImpl value,
          $Res Function(_$BusinessAddressProofRegisterationImpl) then) =
      __$$BusinessAddressProofRegisterationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MobileCheckEntity entity, String message, String content});

  $MobileCheckEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$BusinessAddressProofRegisterationImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$BusinessAddressProofRegisterationImpl>
    implements _$$BusinessAddressProofRegisterationImplCopyWith<$Res> {
  __$$BusinessAddressProofRegisterationImplCopyWithImpl(
      _$BusinessAddressProofRegisterationImpl _value,
      $Res Function(_$BusinessAddressProofRegisterationImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? message = null,
    Object? content = null,
  }) {
    return _then(_$BusinessAddressProofRegisterationImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res> get entity {
    return $MobileCheckEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$BusinessAddressProofRegisterationImpl
    implements BusinessAddressProofRegisteration {
  const _$BusinessAddressProofRegisterationImpl(
      {required this.entity, required this.message, required this.content});

  @override
  final MobileCheckEntity entity;
  @override
  final String message;
  @override
  final String content;

  @override
  String toString() {
    return 'RegisterReferenceState.businessAddressProofRegisteration(entity: $entity, message: $message, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessAddressProofRegisterationImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, message, content);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessAddressProofRegisterationImplCopyWith<
          _$BusinessAddressProofRegisterationImpl>
      get copyWith => __$$BusinessAddressProofRegisterationImplCopyWithImpl<
          _$BusinessAddressProofRegisterationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return businessAddressProofRegisteration(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return businessAddressProofRegisteration?.call(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (businessAddressProofRegisteration != null) {
      return businessAddressProofRegisteration(entity, message, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return businessAddressProofRegisteration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return businessAddressProofRegisteration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (businessAddressProofRegisteration != null) {
      return businessAddressProofRegisteration(this);
    }
    return orElse();
  }
}

abstract class BusinessAddressProofRegisteration
    implements RegisterReferenceState {
  const factory BusinessAddressProofRegisteration(
      {required final MobileCheckEntity entity,
      required final String message,
      required final String content}) = _$BusinessAddressProofRegisterationImpl;

  MobileCheckEntity get entity;
  String get message;
  String get content;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessAddressProofRegisterationImplCopyWith<
          _$BusinessAddressProofRegisterationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BusinessAddressRegisterationImplCopyWith<$Res> {
  factory _$$BusinessAddressRegisterationImplCopyWith(
          _$BusinessAddressRegisterationImpl value,
          $Res Function(_$BusinessAddressRegisterationImpl) then) =
      __$$BusinessAddressRegisterationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MobileCheckEntity entity, String message, String content});

  $MobileCheckEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$BusinessAddressRegisterationImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$BusinessAddressRegisterationImpl>
    implements _$$BusinessAddressRegisterationImplCopyWith<$Res> {
  __$$BusinessAddressRegisterationImplCopyWithImpl(
      _$BusinessAddressRegisterationImpl _value,
      $Res Function(_$BusinessAddressRegisterationImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? message = null,
    Object? content = null,
  }) {
    return _then(_$BusinessAddressRegisterationImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res> get entity {
    return $MobileCheckEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$BusinessAddressRegisterationImpl
    implements BusinessAddressRegisteration {
  const _$BusinessAddressRegisterationImpl(
      {required this.entity, required this.message, required this.content});

  @override
  final MobileCheckEntity entity;
  @override
  final String message;
  @override
  final String content;

  @override
  String toString() {
    return 'RegisterReferenceState.businessAddressRegisteration(entity: $entity, message: $message, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessAddressRegisterationImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, message, content);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessAddressRegisterationImplCopyWith<
          _$BusinessAddressRegisterationImpl>
      get copyWith => __$$BusinessAddressRegisterationImplCopyWithImpl<
          _$BusinessAddressRegisterationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return businessAddressRegisteration(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return businessAddressRegisteration?.call(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (businessAddressRegisteration != null) {
      return businessAddressRegisteration(entity, message, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return businessAddressRegisteration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return businessAddressRegisteration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (businessAddressRegisteration != null) {
      return businessAddressRegisteration(this);
    }
    return orElse();
  }
}

abstract class BusinessAddressRegisteration implements RegisterReferenceState {
  const factory BusinessAddressRegisteration(
      {required final MobileCheckEntity entity,
      required final String message,
      required final String content}) = _$BusinessAddressRegisterationImpl;

  MobileCheckEntity get entity;
  String get message;
  String get content;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessAddressRegisterationImplCopyWith<
          _$BusinessAddressRegisterationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BusinessDocRegisterationImplCopyWith<$Res> {
  factory _$$BusinessDocRegisterationImplCopyWith(
          _$BusinessDocRegisterationImpl value,
          $Res Function(_$BusinessDocRegisterationImpl) then) =
      __$$BusinessDocRegisterationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MobileCheckEntity entity, String message, String content});

  $MobileCheckEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$BusinessDocRegisterationImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$BusinessDocRegisterationImpl>
    implements _$$BusinessDocRegisterationImplCopyWith<$Res> {
  __$$BusinessDocRegisterationImplCopyWithImpl(
      _$BusinessDocRegisterationImpl _value,
      $Res Function(_$BusinessDocRegisterationImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? message = null,
    Object? content = null,
  }) {
    return _then(_$BusinessDocRegisterationImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res> get entity {
    return $MobileCheckEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$BusinessDocRegisterationImpl implements BusinessDocRegisteration {
  const _$BusinessDocRegisterationImpl(
      {required this.entity, required this.message, required this.content});

  @override
  final MobileCheckEntity entity;
  @override
  final String message;
  @override
  final String content;

  @override
  String toString() {
    return 'RegisterReferenceState.businessDocRegisteration(entity: $entity, message: $message, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessDocRegisterationImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, message, content);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessDocRegisterationImplCopyWith<_$BusinessDocRegisterationImpl>
      get copyWith => __$$BusinessDocRegisterationImplCopyWithImpl<
          _$BusinessDocRegisterationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return businessDocRegisteration(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return businessDocRegisteration?.call(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (businessDocRegisteration != null) {
      return businessDocRegisteration(entity, message, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return businessDocRegisteration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return businessDocRegisteration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (businessDocRegisteration != null) {
      return businessDocRegisteration(this);
    }
    return orElse();
  }
}

abstract class BusinessDocRegisteration implements RegisterReferenceState {
  const factory BusinessDocRegisteration(
      {required final MobileCheckEntity entity,
      required final String message,
      required final String content}) = _$BusinessDocRegisterationImpl;

  MobileCheckEntity get entity;
  String get message;
  String get content;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessDocRegisterationImplCopyWith<_$BusinessDocRegisterationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ModeOfOperationRegisterationImplCopyWith<$Res> {
  factory _$$ModeOfOperationRegisterationImplCopyWith(
          _$ModeOfOperationRegisterationImpl value,
          $Res Function(_$ModeOfOperationRegisterationImpl) then) =
      __$$ModeOfOperationRegisterationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MobileCheckEntity entity, String message, String content});

  $MobileCheckEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$ModeOfOperationRegisterationImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$ModeOfOperationRegisterationImpl>
    implements _$$ModeOfOperationRegisterationImplCopyWith<$Res> {
  __$$ModeOfOperationRegisterationImplCopyWithImpl(
      _$ModeOfOperationRegisterationImpl _value,
      $Res Function(_$ModeOfOperationRegisterationImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? message = null,
    Object? content = null,
  }) {
    return _then(_$ModeOfOperationRegisterationImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res> get entity {
    return $MobileCheckEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$ModeOfOperationRegisterationImpl
    implements ModeOfOperationRegisteration {
  const _$ModeOfOperationRegisterationImpl(
      {required this.entity, required this.message, required this.content});

  @override
  final MobileCheckEntity entity;
  @override
  final String message;
  @override
  final String content;

  @override
  String toString() {
    return 'RegisterReferenceState.modeOfOperationRegisteration(entity: $entity, message: $message, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModeOfOperationRegisterationImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, message, content);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModeOfOperationRegisterationImplCopyWith<
          _$ModeOfOperationRegisterationImpl>
      get copyWith => __$$ModeOfOperationRegisterationImplCopyWithImpl<
          _$ModeOfOperationRegisterationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return modeOfOperationRegisteration(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return modeOfOperationRegisteration?.call(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (modeOfOperationRegisteration != null) {
      return modeOfOperationRegisteration(entity, message, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return modeOfOperationRegisteration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return modeOfOperationRegisteration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (modeOfOperationRegisteration != null) {
      return modeOfOperationRegisteration(this);
    }
    return orElse();
  }
}

abstract class ModeOfOperationRegisteration implements RegisterReferenceState {
  const factory ModeOfOperationRegisteration(
      {required final MobileCheckEntity entity,
      required final String message,
      required final String content}) = _$ModeOfOperationRegisterationImpl;

  MobileCheckEntity get entity;
  String get message;
  String get content;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModeOfOperationRegisterationImplCopyWith<
          _$ModeOfOperationRegisterationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavePasscodeImplCopyWith<$Res> {
  factory _$$SavePasscodeImplCopyWith(
          _$SavePasscodeImpl value, $Res Function(_$SavePasscodeImpl) then) =
      __$$SavePasscodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MobileCheckEntity entity, String message, String content});

  $MobileCheckEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$SavePasscodeImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res, _$SavePasscodeImpl>
    implements _$$SavePasscodeImplCopyWith<$Res> {
  __$$SavePasscodeImplCopyWithImpl(
      _$SavePasscodeImpl _value, $Res Function(_$SavePasscodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? message = null,
    Object? content = null,
  }) {
    return _then(_$SavePasscodeImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res> get entity {
    return $MobileCheckEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$SavePasscodeImpl implements SavePasscode {
  const _$SavePasscodeImpl(
      {required this.entity, required this.message, required this.content});

  @override
  final MobileCheckEntity entity;
  @override
  final String message;
  @override
  final String content;

  @override
  String toString() {
    return 'RegisterReferenceState.savePasscode(entity: $entity, message: $message, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePasscodeImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, message, content);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePasscodeImplCopyWith<_$SavePasscodeImpl> get copyWith =>
      __$$SavePasscodeImplCopyWithImpl<_$SavePasscodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return savePasscode(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return savePasscode?.call(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (savePasscode != null) {
      return savePasscode(entity, message, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return savePasscode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return savePasscode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (savePasscode != null) {
      return savePasscode(this);
    }
    return orElse();
  }
}

abstract class SavePasscode implements RegisterReferenceState {
  const factory SavePasscode(
      {required final MobileCheckEntity entity,
      required final String message,
      required final String content}) = _$SavePasscodeImpl;

  MobileCheckEntity get entity;
  String get message;
  String get content;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavePasscodeImplCopyWith<_$SavePasscodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompletedRegisterationImplCopyWith<$Res> {
  factory _$$CompletedRegisterationImplCopyWith(
          _$CompletedRegisterationImpl value,
          $Res Function(_$CompletedRegisterationImpl) then) =
      __$$CompletedRegisterationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MobileCheckEntity entity, String message, String content});

  $MobileCheckEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$CompletedRegisterationImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$CompletedRegisterationImpl>
    implements _$$CompletedRegisterationImplCopyWith<$Res> {
  __$$CompletedRegisterationImplCopyWithImpl(
      _$CompletedRegisterationImpl _value,
      $Res Function(_$CompletedRegisterationImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? message = null,
    Object? content = null,
  }) {
    return _then(_$CompletedRegisterationImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res> get entity {
    return $MobileCheckEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$CompletedRegisterationImpl implements CompletedRegisteration {
  const _$CompletedRegisterationImpl(
      {required this.entity, required this.message, required this.content});

  @override
  final MobileCheckEntity entity;
  @override
  final String message;
  @override
  final String content;

  @override
  String toString() {
    return 'RegisterReferenceState.completedRegisteration(entity: $entity, message: $message, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedRegisterationImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, message, content);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedRegisterationImplCopyWith<_$CompletedRegisterationImpl>
      get copyWith => __$$CompletedRegisterationImplCopyWithImpl<
          _$CompletedRegisterationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return completedRegisteration(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return completedRegisteration?.call(entity, message, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (completedRegisteration != null) {
      return completedRegisteration(entity, message, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return completedRegisteration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return completedRegisteration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (completedRegisteration != null) {
      return completedRegisteration(this);
    }
    return orElse();
  }
}

abstract class CompletedRegisteration implements RegisterReferenceState {
  const factory CompletedRegisteration(
      {required final MobileCheckEntity entity,
      required final String message,
      required final String content}) = _$CompletedRegisterationImpl;

  MobileCheckEntity get entity;
  String get message;
  String get content;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedRegisterationImplCopyWith<_$CompletedRegisterationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MobileVerificationErrorImplCopyWith<$Res> {
  factory _$$MobileVerificationErrorImplCopyWith(
          _$MobileVerificationErrorImpl value,
          $Res Function(_$MobileVerificationErrorImpl) then) =
      __$$MobileVerificationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MobileVerificationErrorImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$MobileVerificationErrorImpl>
    implements _$$MobileVerificationErrorImplCopyWith<$Res> {
  __$$MobileVerificationErrorImplCopyWithImpl(
      _$MobileVerificationErrorImpl _value,
      $Res Function(_$MobileVerificationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MobileVerificationErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MobileVerificationErrorImpl implements MobileVerificationError {
  const _$MobileVerificationErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterReferenceState.mobileVerificationError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileVerificationErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileVerificationErrorImplCopyWith<_$MobileVerificationErrorImpl>
      get copyWith => __$$MobileVerificationErrorImplCopyWithImpl<
          _$MobileVerificationErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return mobileVerificationError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return mobileVerificationError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (mobileVerificationError != null) {
      return mobileVerificationError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return mobileVerificationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return mobileVerificationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (mobileVerificationError != null) {
      return mobileVerificationError(this);
    }
    return orElse();
  }
}

abstract class MobileVerificationError implements RegisterReferenceState {
  const factory MobileVerificationError({required final String message}) =
      _$MobileVerificationErrorImpl;

  String get message;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MobileVerificationErrorImplCopyWith<_$MobileVerificationErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpSentSuccessfullyImplCopyWith<$Res> {
  factory _$$OtpSentSuccessfullyImplCopyWith(_$OtpSentSuccessfullyImpl value,
          $Res Function(_$OtpSentSuccessfullyImpl) then) =
      __$$OtpSentSuccessfullyImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {MobileCheckEntity? checkEntity,
      bool needDeviceUpdate,
      String? refNumber});

  $MobileCheckEntityCopyWith<$Res>? get checkEntity;
}

/// @nodoc
class __$$OtpSentSuccessfullyImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$OtpSentSuccessfullyImpl>
    implements _$$OtpSentSuccessfullyImplCopyWith<$Res> {
  __$$OtpSentSuccessfullyImplCopyWithImpl(_$OtpSentSuccessfullyImpl _value,
      $Res Function(_$OtpSentSuccessfullyImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkEntity = freezed,
    Object? needDeviceUpdate = null,
    Object? refNumber = freezed,
  }) {
    return _then(_$OtpSentSuccessfullyImpl(
      checkEntity: freezed == checkEntity
          ? _value.checkEntity
          : checkEntity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity?,
      needDeviceUpdate: null == needDeviceUpdate
          ? _value.needDeviceUpdate
          : needDeviceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      refNumber: freezed == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res>? get checkEntity {
    if (_value.checkEntity == null) {
      return null;
    }

    return $MobileCheckEntityCopyWith<$Res>(_value.checkEntity!, (value) {
      return _then(_value.copyWith(checkEntity: value));
    });
  }
}

/// @nodoc

class _$OtpSentSuccessfullyImpl implements OtpSentSuccessfully {
  const _$OtpSentSuccessfullyImpl(
      {this.checkEntity, this.needDeviceUpdate = false, this.refNumber});

  @override
  final MobileCheckEntity? checkEntity;
  @override
  @JsonKey()
  final bool needDeviceUpdate;
  @override
  final String? refNumber;

  @override
  String toString() {
    return 'RegisterReferenceState.otpSentSuccessfully(checkEntity: $checkEntity, needDeviceUpdate: $needDeviceUpdate, refNumber: $refNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpSentSuccessfullyImpl &&
            (identical(other.checkEntity, checkEntity) ||
                other.checkEntity == checkEntity) &&
            (identical(other.needDeviceUpdate, needDeviceUpdate) ||
                other.needDeviceUpdate == needDeviceUpdate) &&
            (identical(other.refNumber, refNumber) ||
                other.refNumber == refNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, checkEntity, needDeviceUpdate, refNumber);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpSentSuccessfullyImplCopyWith<_$OtpSentSuccessfullyImpl> get copyWith =>
      __$$OtpSentSuccessfullyImplCopyWithImpl<_$OtpSentSuccessfullyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return otpSentSuccessfully(checkEntity, needDeviceUpdate, refNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return otpSentSuccessfully?.call(checkEntity, needDeviceUpdate, refNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (otpSentSuccessfully != null) {
      return otpSentSuccessfully(checkEntity, needDeviceUpdate, refNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return otpSentSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return otpSentSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (otpSentSuccessfully != null) {
      return otpSentSuccessfully(this);
    }
    return orElse();
  }
}

abstract class OtpSentSuccessfully implements RegisterReferenceState {
  const factory OtpSentSuccessfully(
      {final MobileCheckEntity? checkEntity,
      final bool needDeviceUpdate,
      final String? refNumber}) = _$OtpSentSuccessfullyImpl;

  MobileCheckEntity? get checkEntity;
  bool get needDeviceUpdate;
  String? get refNumber;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpSentSuccessfullyImplCopyWith<_$OtpSentSuccessfullyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpVerifiedSuccessfullyImplCopyWith<$Res> {
  factory _$$OtpVerifiedSuccessfullyImplCopyWith(
          _$OtpVerifiedSuccessfullyImpl value,
          $Res Function(_$OtpVerifiedSuccessfullyImpl) then) =
      __$$OtpVerifiedSuccessfullyImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity});

  $MobileOtpVerificationEntityCopyWith<$Res> get entity;
  $MobileCheckEntityCopyWith<$Res>? get checkEntity;
}

/// @nodoc
class __$$OtpVerifiedSuccessfullyImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res,
        _$OtpVerifiedSuccessfullyImpl>
    implements _$$OtpVerifiedSuccessfullyImplCopyWith<$Res> {
  __$$OtpVerifiedSuccessfullyImplCopyWithImpl(
      _$OtpVerifiedSuccessfullyImpl _value,
      $Res Function(_$OtpVerifiedSuccessfullyImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? checkEntity = freezed,
  }) {
    return _then(_$OtpVerifiedSuccessfullyImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MobileOtpVerificationEntity,
      checkEntity: freezed == checkEntity
          ? _value.checkEntity
          : checkEntity // ignore: cast_nullable_to_non_nullable
              as MobileCheckEntity?,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileOtpVerificationEntityCopyWith<$Res> get entity {
    return $MobileOtpVerificationEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MobileCheckEntityCopyWith<$Res>? get checkEntity {
    if (_value.checkEntity == null) {
      return null;
    }

    return $MobileCheckEntityCopyWith<$Res>(_value.checkEntity!, (value) {
      return _then(_value.copyWith(checkEntity: value));
    });
  }
}

/// @nodoc

class _$OtpVerifiedSuccessfullyImpl implements OtpVerifiedSuccessfully {
  const _$OtpVerifiedSuccessfullyImpl({required this.entity, this.checkEntity});

  @override
  final MobileOtpVerificationEntity entity;
  @override
  final MobileCheckEntity? checkEntity;

  @override
  String toString() {
    return 'RegisterReferenceState.otpVerifiedSuccessfully(entity: $entity, checkEntity: $checkEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerifiedSuccessfullyImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.checkEntity, checkEntity) ||
                other.checkEntity == checkEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, checkEntity);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerifiedSuccessfullyImplCopyWith<_$OtpVerifiedSuccessfullyImpl>
      get copyWith => __$$OtpVerifiedSuccessfullyImplCopyWithImpl<
          _$OtpVerifiedSuccessfullyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return otpVerifiedSuccessfully(entity, checkEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return otpVerifiedSuccessfully?.call(entity, checkEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (otpVerifiedSuccessfully != null) {
      return otpVerifiedSuccessfully(entity, checkEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return otpVerifiedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return otpVerifiedSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (otpVerifiedSuccessfully != null) {
      return otpVerifiedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class OtpVerifiedSuccessfully implements RegisterReferenceState {
  const factory OtpVerifiedSuccessfully(
      {required final MobileOtpVerificationEntity entity,
      final MobileCheckEntity? checkEntity}) = _$OtpVerifiedSuccessfullyImpl;

  MobileOtpVerificationEntity get entity;
  MobileCheckEntity? get checkEntity;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpVerifiedSuccessfullyImplCopyWith<_$OtpVerifiedSuccessfullyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReferenceGeneratedImplCopyWith<$Res> {
  factory _$$ReferenceGeneratedImplCopyWith(_$ReferenceGeneratedImpl value,
          $Res Function(_$ReferenceGeneratedImpl) then) =
      __$$ReferenceGeneratedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GenerateReference entity});

  $GenerateReferenceCopyWith<$Res> get entity;
}

/// @nodoc
class __$$ReferenceGeneratedImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res, _$ReferenceGeneratedImpl>
    implements _$$ReferenceGeneratedImplCopyWith<$Res> {
  __$$ReferenceGeneratedImplCopyWithImpl(_$ReferenceGeneratedImpl _value,
      $Res Function(_$ReferenceGeneratedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$ReferenceGeneratedImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as GenerateReference,
    ));
  }

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenerateReferenceCopyWith<$Res> get entity {
    return $GenerateReferenceCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$ReferenceGeneratedImpl implements ReferenceGenerated {
  const _$ReferenceGeneratedImpl({required this.entity});

  @override
  final GenerateReference entity;

  @override
  String toString() {
    return 'RegisterReferenceState.referenceGenerated(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferenceGeneratedImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferenceGeneratedImplCopyWith<_$ReferenceGeneratedImpl> get copyWith =>
      __$$ReferenceGeneratedImplCopyWithImpl<_$ReferenceGeneratedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return referenceGenerated(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return referenceGenerated?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (referenceGenerated != null) {
      return referenceGenerated(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return referenceGenerated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return referenceGenerated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (referenceGenerated != null) {
      return referenceGenerated(this);
    }
    return orElse();
  }
}

abstract class ReferenceGenerated implements RegisterReferenceState {
  const factory ReferenceGenerated({required final GenerateReference entity}) =
      _$ReferenceGeneratedImpl;

  GenerateReference get entity;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferenceGeneratedImplCopyWith<_$ReferenceGeneratedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerDownErrorImplCopyWith<$Res> {
  factory _$$ServerDownErrorImplCopyWith(_$ServerDownErrorImpl value,
          $Res Function(_$ServerDownErrorImpl) then) =
      __$$ServerDownErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerDownErrorImplCopyWithImpl<$Res>
    extends _$RegisterReferenceStateCopyWithImpl<$Res, _$ServerDownErrorImpl>
    implements _$$ServerDownErrorImplCopyWith<$Res> {
  __$$ServerDownErrorImplCopyWithImpl(
      _$ServerDownErrorImpl _value, $Res Function(_$ServerDownErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerDownErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerDownErrorImpl implements ServerDownError {
  const _$ServerDownErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterReferenceState.serverDownError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerDownErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerDownErrorImplCopyWith<_$ServerDownErrorImpl> get copyWith =>
      __$$ServerDownErrorImplCopyWithImpl<_$ServerDownErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) loading,
    required TResult Function(MobileCheckEntity entity) mobileNotVerified,
    required TResult Function(String message, String refNumber) deviceMismatch,
    required TResult Function(String message) deviceAlreadyExistsNewUser,
    required TResult Function(String message) deviceAlreadyExistsOldUser,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceEntity entity)
        updatePrimaryDeviceSuccess,
    required TResult Function(String message, String refNumber)
        updatePrimaryDeviceError,
    required TResult Function(String message) updatePrimaryServerDownError,
    required TResult Function(MobileCheckEntity entity) accountNotVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        accountVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        kycVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        guardianVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        occupationVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        addressVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        pepVerified,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDetailsRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressProofRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessAddressRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        businessDocRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        modeOfOperationRegisteration,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        savePasscode,
    required TResult Function(
            MobileCheckEntity entity, String message, String content)
        completedRegisteration,
    required TResult Function(String message) mobileVerificationError,
    required TResult Function(MobileCheckEntity? checkEntity,
            bool needDeviceUpdate, String? refNumber)
        otpSentSuccessfully,
    required TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)
        otpVerifiedSuccessfully,
    required TResult Function(GenerateReference entity) referenceGenerated,
    required TResult Function(String message) serverDownError,
  }) {
    return serverDownError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? loading,
    TResult? Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult? Function(String message, String refNumber)? deviceMismatch,
    TResult? Function(String message)? deviceAlreadyExistsNewUser,
    TResult? Function(String message)? deviceAlreadyExistsOldUser,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult? Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult? Function(String message)? updatePrimaryServerDownError,
    TResult? Function(MobileCheckEntity entity)? accountNotVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult? Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult? Function(String message)? mobileVerificationError,
    TResult? Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult? Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult? Function(GenerateReference entity)? referenceGenerated,
    TResult? Function(String message)? serverDownError,
  }) {
    return serverDownError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? loading,
    TResult Function(MobileCheckEntity entity)? mobileNotVerified,
    TResult Function(String message, String refNumber)? deviceMismatch,
    TResult Function(String message)? deviceAlreadyExistsNewUser,
    TResult Function(String message)? deviceAlreadyExistsOldUser,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceEntity entity)?
        updatePrimaryDeviceSuccess,
    TResult Function(String message, String refNumber)?
        updatePrimaryDeviceError,
    TResult Function(String message)? updatePrimaryServerDownError,
    TResult Function(MobileCheckEntity entity)? accountNotVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        accountVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        kycVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        guardianVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        occupationVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        addressVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        pepVerified,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDetailsRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressProofRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessAddressRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        businessDocRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        modeOfOperationRegisteration,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        savePasscode,
    TResult Function(MobileCheckEntity entity, String message, String content)?
        completedRegisteration,
    TResult Function(String message)? mobileVerificationError,
    TResult Function(MobileCheckEntity? checkEntity, bool needDeviceUpdate,
            String? refNumber)?
        otpSentSuccessfully,
    TResult Function(
            MobileOtpVerificationEntity entity, MobileCheckEntity? checkEntity)?
        otpVerifiedSuccessfully,
    TResult Function(GenerateReference entity)? referenceGenerated,
    TResult Function(String message)? serverDownError,
    required TResult orElse(),
  }) {
    if (serverDownError != null) {
      return serverDownError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MobileVerificationInitial value) initial,
    required TResult Function(MobileVerificationLoading value) loading,
    required TResult Function(MobileNotVerified value) mobileNotVerified,
    required TResult Function(DeviceMismatch value) deviceMismatch,
    required TResult Function(DeviceAlreadyExistsNewUser value)
        deviceAlreadyExistsNewUser,
    required TResult Function(DeviceAlreadyExistsOldUser value)
        deviceAlreadyExistsOldUser,
    required TResult Function(UpdatePrimaryDeviceLoading value)
        updatePrimaryDeviceLoading,
    required TResult Function(UpdatePrimaryDeviceSuccess value)
        updatePrimaryDeviceSuccess,
    required TResult Function(UpdatePrimaryDeviceError value)
        updatePrimaryDeviceError,
    required TResult Function(UpdatePrimaryServerDownError value)
        updatePrimaryServerDownError,
    required TResult Function(AccountNotVerified value) accountNotVerified,
    required TResult Function(AccountVerified value) accountVerified,
    required TResult Function(KYCVerified value) kycVerified,
    required TResult Function(GuardianVerified value) guardianVerified,
    required TResult Function(OccupationVerified value) occupationVerified,
    required TResult Function(AddressVerified value) addressVerified,
    required TResult Function(PepVerified value) pepVerified,
    required TResult Function(BusinessDetailsRegisteration value)
        businessDetailsRegisteration,
    required TResult Function(BusinessAddressProofRegisteration value)
        businessAddressProofRegisteration,
    required TResult Function(BusinessAddressRegisteration value)
        businessAddressRegisteration,
    required TResult Function(BusinessDocRegisteration value)
        businessDocRegisteration,
    required TResult Function(ModeOfOperationRegisteration value)
        modeOfOperationRegisteration,
    required TResult Function(SavePasscode value) savePasscode,
    required TResult Function(CompletedRegisteration value)
        completedRegisteration,
    required TResult Function(MobileVerificationError value)
        mobileVerificationError,
    required TResult Function(OtpSentSuccessfully value) otpSentSuccessfully,
    required TResult Function(OtpVerifiedSuccessfully value)
        otpVerifiedSuccessfully,
    required TResult Function(ReferenceGenerated value) referenceGenerated,
    required TResult Function(ServerDownError value) serverDownError,
  }) {
    return serverDownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MobileVerificationInitial value)? initial,
    TResult? Function(MobileVerificationLoading value)? loading,
    TResult? Function(MobileNotVerified value)? mobileNotVerified,
    TResult? Function(DeviceMismatch value)? deviceMismatch,
    TResult? Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult? Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult? Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult? Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult? Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult? Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult? Function(AccountNotVerified value)? accountNotVerified,
    TResult? Function(AccountVerified value)? accountVerified,
    TResult? Function(KYCVerified value)? kycVerified,
    TResult? Function(GuardianVerified value)? guardianVerified,
    TResult? Function(OccupationVerified value)? occupationVerified,
    TResult? Function(AddressVerified value)? addressVerified,
    TResult? Function(PepVerified value)? pepVerified,
    TResult? Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult? Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult? Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult? Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult? Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult? Function(SavePasscode value)? savePasscode,
    TResult? Function(CompletedRegisteration value)? completedRegisteration,
    TResult? Function(MobileVerificationError value)? mobileVerificationError,
    TResult? Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult? Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult? Function(ReferenceGenerated value)? referenceGenerated,
    TResult? Function(ServerDownError value)? serverDownError,
  }) {
    return serverDownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MobileVerificationInitial value)? initial,
    TResult Function(MobileVerificationLoading value)? loading,
    TResult Function(MobileNotVerified value)? mobileNotVerified,
    TResult Function(DeviceMismatch value)? deviceMismatch,
    TResult Function(DeviceAlreadyExistsNewUser value)?
        deviceAlreadyExistsNewUser,
    TResult Function(DeviceAlreadyExistsOldUser value)?
        deviceAlreadyExistsOldUser,
    TResult Function(UpdatePrimaryDeviceLoading value)?
        updatePrimaryDeviceLoading,
    TResult Function(UpdatePrimaryDeviceSuccess value)?
        updatePrimaryDeviceSuccess,
    TResult Function(UpdatePrimaryDeviceError value)? updatePrimaryDeviceError,
    TResult Function(UpdatePrimaryServerDownError value)?
        updatePrimaryServerDownError,
    TResult Function(AccountNotVerified value)? accountNotVerified,
    TResult Function(AccountVerified value)? accountVerified,
    TResult Function(KYCVerified value)? kycVerified,
    TResult Function(GuardianVerified value)? guardianVerified,
    TResult Function(OccupationVerified value)? occupationVerified,
    TResult Function(AddressVerified value)? addressVerified,
    TResult Function(PepVerified value)? pepVerified,
    TResult Function(BusinessDetailsRegisteration value)?
        businessDetailsRegisteration,
    TResult Function(BusinessAddressProofRegisteration value)?
        businessAddressProofRegisteration,
    TResult Function(BusinessAddressRegisteration value)?
        businessAddressRegisteration,
    TResult Function(BusinessDocRegisteration value)? businessDocRegisteration,
    TResult Function(ModeOfOperationRegisteration value)?
        modeOfOperationRegisteration,
    TResult Function(SavePasscode value)? savePasscode,
    TResult Function(CompletedRegisteration value)? completedRegisteration,
    TResult Function(MobileVerificationError value)? mobileVerificationError,
    TResult Function(OtpSentSuccessfully value)? otpSentSuccessfully,
    TResult Function(OtpVerifiedSuccessfully value)? otpVerifiedSuccessfully,
    TResult Function(ReferenceGenerated value)? referenceGenerated,
    TResult Function(ServerDownError value)? serverDownError,
    required TResult orElse(),
  }) {
    if (serverDownError != null) {
      return serverDownError(this);
    }
    return orElse();
  }
}

abstract class ServerDownError implements RegisterReferenceState {
  const factory ServerDownError({required final String message}) =
      _$ServerDownErrorImpl;

  String get message;

  /// Create a copy of RegisterReferenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerDownErrorImplCopyWith<_$ServerDownErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
