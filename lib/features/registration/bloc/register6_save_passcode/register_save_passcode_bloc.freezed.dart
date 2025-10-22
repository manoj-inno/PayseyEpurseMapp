// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_save_passcode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterSavePasscodeEvent {
  @JsonKey(name: 'user_ref')
  String get userRef => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'password_enc') String passwordEnc,
            @JsonKey(name: 'user_ref') String userRef)
        savePasscode,
    required TResult Function(String userRef) completeRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'password_enc') String passwordEnc,
            @JsonKey(name: 'user_ref') String userRef)?
        savePasscode,
    TResult? Function(String userRef)? completeRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'password_enc') String passwordEnc,
            @JsonKey(name: 'user_ref') String userRef)?
        savePasscode,
    TResult Function(String userRef)? completeRegistration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SavePasscode value) savePasscode,
    required TResult Function(_CompleteRegistration value) completeRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SavePasscode value)? savePasscode,
    TResult? Function(_CompleteRegistration value)? completeRegistration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SavePasscode value)? savePasscode,
    TResult Function(_CompleteRegistration value)? completeRegistration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RegisterSavePasscodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterSavePasscodeEventCopyWith<RegisterSavePasscodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterSavePasscodeEventCopyWith<$Res> {
  factory $RegisterSavePasscodeEventCopyWith(RegisterSavePasscodeEvent value,
          $Res Function(RegisterSavePasscodeEvent) then) =
      _$RegisterSavePasscodeEventCopyWithImpl<$Res, RegisterSavePasscodeEvent>;
  @useResult
  $Res call({@JsonKey(name: 'user_ref') String userRef});
}

/// @nodoc
class _$RegisterSavePasscodeEventCopyWithImpl<$Res,
        $Val extends RegisterSavePasscodeEvent>
    implements $RegisterSavePasscodeEventCopyWith<$Res> {
  _$RegisterSavePasscodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterSavePasscodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = null,
  }) {
    return _then(_value.copyWith(
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavePasscodeImplCopyWith<$Res>
    implements $RegisterSavePasscodeEventCopyWith<$Res> {
  factory _$$SavePasscodeImplCopyWith(
          _$SavePasscodeImpl value, $Res Function(_$SavePasscodeImpl) then) =
      __$$SavePasscodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'password_enc') String passwordEnc,
      @JsonKey(name: 'user_ref') String userRef});
}

/// @nodoc
class __$$SavePasscodeImplCopyWithImpl<$Res>
    extends _$RegisterSavePasscodeEventCopyWithImpl<$Res, _$SavePasscodeImpl>
    implements _$$SavePasscodeImplCopyWith<$Res> {
  __$$SavePasscodeImplCopyWithImpl(
      _$SavePasscodeImpl _value, $Res Function(_$SavePasscodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterSavePasscodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordEnc = null,
    Object? userRef = null,
  }) {
    return _then(_$SavePasscodeImpl(
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

class _$SavePasscodeImpl with DiagnosticableTreeMixin implements _SavePasscode {
  const _$SavePasscodeImpl(
      {@JsonKey(name: 'password_enc') required this.passwordEnc,
      @JsonKey(name: 'user_ref') required this.userRef});

  @override
  @JsonKey(name: 'password_enc')
  final String passwordEnc;
  @override
  @JsonKey(name: 'user_ref')
  final String userRef;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterSavePasscodeEvent.savePasscode(passwordEnc: $passwordEnc, userRef: $userRef)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'RegisterSavePasscodeEvent.savePasscode'))
      ..add(DiagnosticsProperty('passwordEnc', passwordEnc))
      ..add(DiagnosticsProperty('userRef', userRef));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePasscodeImpl &&
            (identical(other.passwordEnc, passwordEnc) ||
                other.passwordEnc == passwordEnc) &&
            (identical(other.userRef, userRef) || other.userRef == userRef));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordEnc, userRef);

  /// Create a copy of RegisterSavePasscodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePasscodeImplCopyWith<_$SavePasscodeImpl> get copyWith =>
      __$$SavePasscodeImplCopyWithImpl<_$SavePasscodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'password_enc') String passwordEnc,
            @JsonKey(name: 'user_ref') String userRef)
        savePasscode,
    required TResult Function(String userRef) completeRegistration,
  }) {
    return savePasscode(passwordEnc, userRef);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'password_enc') String passwordEnc,
            @JsonKey(name: 'user_ref') String userRef)?
        savePasscode,
    TResult? Function(String userRef)? completeRegistration,
  }) {
    return savePasscode?.call(passwordEnc, userRef);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'password_enc') String passwordEnc,
            @JsonKey(name: 'user_ref') String userRef)?
        savePasscode,
    TResult Function(String userRef)? completeRegistration,
    required TResult orElse(),
  }) {
    if (savePasscode != null) {
      return savePasscode(passwordEnc, userRef);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SavePasscode value) savePasscode,
    required TResult Function(_CompleteRegistration value) completeRegistration,
  }) {
    return savePasscode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SavePasscode value)? savePasscode,
    TResult? Function(_CompleteRegistration value)? completeRegistration,
  }) {
    return savePasscode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SavePasscode value)? savePasscode,
    TResult Function(_CompleteRegistration value)? completeRegistration,
    required TResult orElse(),
  }) {
    if (savePasscode != null) {
      return savePasscode(this);
    }
    return orElse();
  }
}

abstract class _SavePasscode implements RegisterSavePasscodeEvent {
  const factory _SavePasscode(
          {@JsonKey(name: 'password_enc') required final String passwordEnc,
          @JsonKey(name: 'user_ref') required final String userRef}) =
      _$SavePasscodeImpl;

  @JsonKey(name: 'password_enc')
  String get passwordEnc;
  @override
  @JsonKey(name: 'user_ref')
  String get userRef;

  /// Create a copy of RegisterSavePasscodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavePasscodeImplCopyWith<_$SavePasscodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteRegistrationImplCopyWith<$Res>
    implements $RegisterSavePasscodeEventCopyWith<$Res> {
  factory _$$CompleteRegistrationImplCopyWith(_$CompleteRegistrationImpl value,
          $Res Function(_$CompleteRegistrationImpl) then) =
      __$$CompleteRegistrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userRef});
}

/// @nodoc
class __$$CompleteRegistrationImplCopyWithImpl<$Res>
    extends _$RegisterSavePasscodeEventCopyWithImpl<$Res,
        _$CompleteRegistrationImpl>
    implements _$$CompleteRegistrationImplCopyWith<$Res> {
  __$$CompleteRegistrationImplCopyWithImpl(_$CompleteRegistrationImpl _value,
      $Res Function(_$CompleteRegistrationImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterSavePasscodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = null,
  }) {
    return _then(_$CompleteRegistrationImpl(
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompleteRegistrationImpl
    with DiagnosticableTreeMixin
    implements _CompleteRegistration {
  const _$CompleteRegistrationImpl({required this.userRef});

  @override
  final String userRef;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterSavePasscodeEvent.completeRegistration(userRef: $userRef)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegisterSavePasscodeEvent.completeRegistration'))
      ..add(DiagnosticsProperty('userRef', userRef));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteRegistrationImpl &&
            (identical(other.userRef, userRef) || other.userRef == userRef));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRef);

  /// Create a copy of RegisterSavePasscodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteRegistrationImplCopyWith<_$CompleteRegistrationImpl>
      get copyWith =>
          __$$CompleteRegistrationImplCopyWithImpl<_$CompleteRegistrationImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(@JsonKey(name: 'password_enc') String passwordEnc,
            @JsonKey(name: 'user_ref') String userRef)
        savePasscode,
    required TResult Function(String userRef) completeRegistration,
  }) {
    return completeRegistration(userRef);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(@JsonKey(name: 'password_enc') String passwordEnc,
            @JsonKey(name: 'user_ref') String userRef)?
        savePasscode,
    TResult? Function(String userRef)? completeRegistration,
  }) {
    return completeRegistration?.call(userRef);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(@JsonKey(name: 'password_enc') String passwordEnc,
            @JsonKey(name: 'user_ref') String userRef)?
        savePasscode,
    TResult Function(String userRef)? completeRegistration,
    required TResult orElse(),
  }) {
    if (completeRegistration != null) {
      return completeRegistration(userRef);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SavePasscode value) savePasscode,
    required TResult Function(_CompleteRegistration value) completeRegistration,
  }) {
    return completeRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SavePasscode value)? savePasscode,
    TResult? Function(_CompleteRegistration value)? completeRegistration,
  }) {
    return completeRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SavePasscode value)? savePasscode,
    TResult Function(_CompleteRegistration value)? completeRegistration,
    required TResult orElse(),
  }) {
    if (completeRegistration != null) {
      return completeRegistration(this);
    }
    return orElse();
  }
}

abstract class _CompleteRegistration implements RegisterSavePasscodeEvent {
  const factory _CompleteRegistration({required final String userRef}) =
      _$CompleteRegistrationImpl;

  @override
  String get userRef;

  /// Create a copy of RegisterSavePasscodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompleteRegistrationImplCopyWith<_$CompleteRegistrationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterSavePasscodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SavePasscodeEntity savePasscodeEntity) success,
    required TResult Function(String message) failure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) serverDown,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(RegistrationEntity registrationEntity)
        completeRegistrationSuccess,
    required TResult Function(String message) completeRegistrationFailure,
    required TResult Function(String message) completeRegistrationServerDown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult? Function(String message)? failure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? serverDown,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult? Function(String message)? completeRegistrationFailure,
    TResult? Function(String message)? completeRegistrationServerDown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult Function(String message)? failure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? serverDown,
    TResult Function()? completeRegistrationLoading,
    TResult Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult Function(String message)? completeRegistrationFailure,
    TResult Function(String message)? completeRegistrationServerDown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationSuccess value)
        completeRegistrationSuccess,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationFailure,
    required TResult Function(_CompleteRegistrationServerDown value)
        completeRegistrationServerDown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult? Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterSavePasscodeStateCopyWith<$Res> {
  factory $RegisterSavePasscodeStateCopyWith(RegisterSavePasscodeState value,
          $Res Function(RegisterSavePasscodeState) then) =
      _$RegisterSavePasscodeStateCopyWithImpl<$Res, RegisterSavePasscodeState>;
}

/// @nodoc
class _$RegisterSavePasscodeStateCopyWithImpl<$Res,
        $Val extends RegisterSavePasscodeState>
    implements $RegisterSavePasscodeStateCopyWith<$Res> {
  _$RegisterSavePasscodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RegisterSavePasscodeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterSavePasscodeState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterSavePasscodeState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SavePasscodeEntity savePasscodeEntity) success,
    required TResult Function(String message) failure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) serverDown,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(RegistrationEntity registrationEntity)
        completeRegistrationSuccess,
    required TResult Function(String message) completeRegistrationFailure,
    required TResult Function(String message) completeRegistrationServerDown,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult? Function(String message)? failure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? serverDown,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult? Function(String message)? completeRegistrationFailure,
    TResult? Function(String message)? completeRegistrationServerDown,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult Function(String message)? failure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? serverDown,
    TResult Function()? completeRegistrationLoading,
    TResult Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult Function(String message)? completeRegistrationFailure,
    TResult Function(String message)? completeRegistrationServerDown,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationSuccess value)
        completeRegistrationSuccess,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationFailure,
    required TResult Function(_CompleteRegistrationServerDown value)
        completeRegistrationServerDown,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult? Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegisterSavePasscodeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RegisterSavePasscodeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterSavePasscodeState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterSavePasscodeState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SavePasscodeEntity savePasscodeEntity) success,
    required TResult Function(String message) failure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) serverDown,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(RegistrationEntity registrationEntity)
        completeRegistrationSuccess,
    required TResult Function(String message) completeRegistrationFailure,
    required TResult Function(String message) completeRegistrationServerDown,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult? Function(String message)? failure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? serverDown,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult? Function(String message)? completeRegistrationFailure,
    TResult? Function(String message)? completeRegistrationServerDown,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult Function(String message)? failure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? serverDown,
    TResult Function()? completeRegistrationLoading,
    TResult Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult Function(String message)? completeRegistrationFailure,
    TResult Function(String message)? completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationSuccess value)
        completeRegistrationSuccess,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationFailure,
    required TResult Function(_CompleteRegistrationServerDown value)
        completeRegistrationServerDown,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult? Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RegisterSavePasscodeState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SavePasscodeEntity savePasscodeEntity});

  $SavePasscodeEntityCopyWith<$Res> get savePasscodeEntity;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$RegisterSavePasscodeStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savePasscodeEntity = null,
  }) {
    return _then(_$SuccessImpl(
      savePasscodeEntity: null == savePasscodeEntity
          ? _value.savePasscodeEntity
          : savePasscodeEntity // ignore: cast_nullable_to_non_nullable
              as SavePasscodeEntity,
    ));
  }

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SavePasscodeEntityCopyWith<$Res> get savePasscodeEntity {
    return $SavePasscodeEntityCopyWith<$Res>(_value.savePasscodeEntity,
        (value) {
      return _then(_value.copyWith(savePasscodeEntity: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl with DiagnosticableTreeMixin implements _Success {
  const _$SuccessImpl({required this.savePasscodeEntity});

  @override
  final SavePasscodeEntity savePasscodeEntity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterSavePasscodeState.success(savePasscodeEntity: $savePasscodeEntity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterSavePasscodeState.success'))
      ..add(DiagnosticsProperty('savePasscodeEntity', savePasscodeEntity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.savePasscodeEntity, savePasscodeEntity) ||
                other.savePasscodeEntity == savePasscodeEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, savePasscodeEntity);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SavePasscodeEntity savePasscodeEntity) success,
    required TResult Function(String message) failure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) serverDown,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(RegistrationEntity registrationEntity)
        completeRegistrationSuccess,
    required TResult Function(String message) completeRegistrationFailure,
    required TResult Function(String message) completeRegistrationServerDown,
  }) {
    return success(savePasscodeEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult? Function(String message)? failure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? serverDown,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult? Function(String message)? completeRegistrationFailure,
    TResult? Function(String message)? completeRegistrationServerDown,
  }) {
    return success?.call(savePasscodeEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult Function(String message)? failure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? serverDown,
    TResult Function()? completeRegistrationLoading,
    TResult Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult Function(String message)? completeRegistrationFailure,
    TResult Function(String message)? completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(savePasscodeEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationSuccess value)
        completeRegistrationSuccess,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationFailure,
    required TResult Function(_CompleteRegistrationServerDown value)
        completeRegistrationServerDown,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult? Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements RegisterSavePasscodeState {
  const factory _Success(
      {required final SavePasscodeEntity savePasscodeEntity}) = _$SuccessImpl;

  SavePasscodeEntity get savePasscodeEntity;

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$RegisterSavePasscodeStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl with DiagnosticableTreeMixin implements _Failure {
  const _$FailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterSavePasscodeState.failure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterSavePasscodeState.failure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SavePasscodeEntity savePasscodeEntity) success,
    required TResult Function(String message) failure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) serverDown,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(RegistrationEntity registrationEntity)
        completeRegistrationSuccess,
    required TResult Function(String message) completeRegistrationFailure,
    required TResult Function(String message) completeRegistrationServerDown,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult? Function(String message)? failure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? serverDown,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult? Function(String message)? completeRegistrationFailure,
    TResult? Function(String message)? completeRegistrationServerDown,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult Function(String message)? failure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? serverDown,
    TResult Function()? completeRegistrationLoading,
    TResult Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult Function(String message)? completeRegistrationFailure,
    TResult Function(String message)? completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationSuccess value)
        completeRegistrationSuccess,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationFailure,
    required TResult Function(_CompleteRegistrationServerDown value)
        completeRegistrationServerDown,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult? Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements RegisterSavePasscodeState {
  const factory _Failure({required final String message}) = _$FailureImpl;

  String get message;

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$RegisterSavePasscodeStateCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl
    with DiagnosticableTreeMixin
    implements _ServerFailure {
  const _$ServerFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterSavePasscodeState.serverFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegisterSavePasscodeState.serverFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SavePasscodeEntity savePasscodeEntity) success,
    required TResult Function(String message) failure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) serverDown,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(RegistrationEntity registrationEntity)
        completeRegistrationSuccess,
    required TResult Function(String message) completeRegistrationFailure,
    required TResult Function(String message) completeRegistrationServerDown,
  }) {
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult? Function(String message)? failure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? serverDown,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult? Function(String message)? completeRegistrationFailure,
    TResult? Function(String message)? completeRegistrationServerDown,
  }) {
    return serverFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult Function(String message)? failure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? serverDown,
    TResult Function()? completeRegistrationLoading,
    TResult Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult Function(String message)? completeRegistrationFailure,
    TResult Function(String message)? completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationSuccess value)
        completeRegistrationSuccess,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationFailure,
    required TResult Function(_CompleteRegistrationServerDown value)
        completeRegistrationServerDown,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult? Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements RegisterSavePasscodeState {
  const factory _ServerFailure({required final String message}) =
      _$ServerFailureImpl;

  String get message;

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerDownImplCopyWith<$Res> {
  factory _$$ServerDownImplCopyWith(
          _$ServerDownImpl value, $Res Function(_$ServerDownImpl) then) =
      __$$ServerDownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ServerDownImplCopyWithImpl<$Res>
    extends _$RegisterSavePasscodeStateCopyWithImpl<$Res, _$ServerDownImpl>
    implements _$$ServerDownImplCopyWith<$Res> {
  __$$ServerDownImplCopyWithImpl(
      _$ServerDownImpl _value, $Res Function(_$ServerDownImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ServerDownImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerDownImpl with DiagnosticableTreeMixin implements _ServerDown {
  const _$ServerDownImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterSavePasscodeState.serverDown(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterSavePasscodeState.serverDown'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerDownImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerDownImplCopyWith<_$ServerDownImpl> get copyWith =>
      __$$ServerDownImplCopyWithImpl<_$ServerDownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SavePasscodeEntity savePasscodeEntity) success,
    required TResult Function(String message) failure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) serverDown,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(RegistrationEntity registrationEntity)
        completeRegistrationSuccess,
    required TResult Function(String message) completeRegistrationFailure,
    required TResult Function(String message) completeRegistrationServerDown,
  }) {
    return serverDown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult? Function(String message)? failure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? serverDown,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult? Function(String message)? completeRegistrationFailure,
    TResult? Function(String message)? completeRegistrationServerDown,
  }) {
    return serverDown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult Function(String message)? failure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? serverDown,
    TResult Function()? completeRegistrationLoading,
    TResult Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult Function(String message)? completeRegistrationFailure,
    TResult Function(String message)? completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (serverDown != null) {
      return serverDown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationSuccess value)
        completeRegistrationSuccess,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationFailure,
    required TResult Function(_CompleteRegistrationServerDown value)
        completeRegistrationServerDown,
  }) {
    return serverDown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult? Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
  }) {
    return serverDown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (serverDown != null) {
      return serverDown(this);
    }
    return orElse();
  }
}

abstract class _ServerDown implements RegisterSavePasscodeState {
  const factory _ServerDown({required final String message}) = _$ServerDownImpl;

  String get message;

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerDownImplCopyWith<_$ServerDownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteRegistrationLoadingImplCopyWith<$Res> {
  factory _$$CompleteRegistrationLoadingImplCopyWith(
          _$CompleteRegistrationLoadingImpl value,
          $Res Function(_$CompleteRegistrationLoadingImpl) then) =
      __$$CompleteRegistrationLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteRegistrationLoadingImplCopyWithImpl<$Res>
    extends _$RegisterSavePasscodeStateCopyWithImpl<$Res,
        _$CompleteRegistrationLoadingImpl>
    implements _$$CompleteRegistrationLoadingImplCopyWith<$Res> {
  __$$CompleteRegistrationLoadingImplCopyWithImpl(
      _$CompleteRegistrationLoadingImpl _value,
      $Res Function(_$CompleteRegistrationLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CompleteRegistrationLoadingImpl
    with DiagnosticableTreeMixin
    implements _CompleteRegistrationLoading {
  const _$CompleteRegistrationLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterSavePasscodeState.completeRegistrationLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegisterSavePasscodeState.completeRegistrationLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteRegistrationLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SavePasscodeEntity savePasscodeEntity) success,
    required TResult Function(String message) failure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) serverDown,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(RegistrationEntity registrationEntity)
        completeRegistrationSuccess,
    required TResult Function(String message) completeRegistrationFailure,
    required TResult Function(String message) completeRegistrationServerDown,
  }) {
    return completeRegistrationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult? Function(String message)? failure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? serverDown,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult? Function(String message)? completeRegistrationFailure,
    TResult? Function(String message)? completeRegistrationServerDown,
  }) {
    return completeRegistrationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult Function(String message)? failure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? serverDown,
    TResult Function()? completeRegistrationLoading,
    TResult Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult Function(String message)? completeRegistrationFailure,
    TResult Function(String message)? completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (completeRegistrationLoading != null) {
      return completeRegistrationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationSuccess value)
        completeRegistrationSuccess,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationFailure,
    required TResult Function(_CompleteRegistrationServerDown value)
        completeRegistrationServerDown,
  }) {
    return completeRegistrationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult? Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
  }) {
    return completeRegistrationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (completeRegistrationLoading != null) {
      return completeRegistrationLoading(this);
    }
    return orElse();
  }
}

abstract class _CompleteRegistrationLoading
    implements RegisterSavePasscodeState {
  const factory _CompleteRegistrationLoading() =
      _$CompleteRegistrationLoadingImpl;
}

/// @nodoc
abstract class _$$CompleteRegistrationSuccessImplCopyWith<$Res> {
  factory _$$CompleteRegistrationSuccessImplCopyWith(
          _$CompleteRegistrationSuccessImpl value,
          $Res Function(_$CompleteRegistrationSuccessImpl) then) =
      __$$CompleteRegistrationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegistrationEntity registrationEntity});

  $RegistrationEntityCopyWith<$Res> get registrationEntity;
}

/// @nodoc
class __$$CompleteRegistrationSuccessImplCopyWithImpl<$Res>
    extends _$RegisterSavePasscodeStateCopyWithImpl<$Res,
        _$CompleteRegistrationSuccessImpl>
    implements _$$CompleteRegistrationSuccessImplCopyWith<$Res> {
  __$$CompleteRegistrationSuccessImplCopyWithImpl(
      _$CompleteRegistrationSuccessImpl _value,
      $Res Function(_$CompleteRegistrationSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registrationEntity = null,
  }) {
    return _then(_$CompleteRegistrationSuccessImpl(
      registrationEntity: null == registrationEntity
          ? _value.registrationEntity
          : registrationEntity // ignore: cast_nullable_to_non_nullable
              as RegistrationEntity,
    ));
  }

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegistrationEntityCopyWith<$Res> get registrationEntity {
    return $RegistrationEntityCopyWith<$Res>(_value.registrationEntity,
        (value) {
      return _then(_value.copyWith(registrationEntity: value));
    });
  }
}

/// @nodoc

class _$CompleteRegistrationSuccessImpl
    with DiagnosticableTreeMixin
    implements _CompleteRegistrationSuccess {
  const _$CompleteRegistrationSuccessImpl({required this.registrationEntity});

  @override
  final RegistrationEntity registrationEntity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterSavePasscodeState.completeRegistrationSuccess(registrationEntity: $registrationEntity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegisterSavePasscodeState.completeRegistrationSuccess'))
      ..add(DiagnosticsProperty('registrationEntity', registrationEntity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteRegistrationSuccessImpl &&
            (identical(other.registrationEntity, registrationEntity) ||
                other.registrationEntity == registrationEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registrationEntity);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteRegistrationSuccessImplCopyWith<_$CompleteRegistrationSuccessImpl>
      get copyWith => __$$CompleteRegistrationSuccessImplCopyWithImpl<
          _$CompleteRegistrationSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SavePasscodeEntity savePasscodeEntity) success,
    required TResult Function(String message) failure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) serverDown,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(RegistrationEntity registrationEntity)
        completeRegistrationSuccess,
    required TResult Function(String message) completeRegistrationFailure,
    required TResult Function(String message) completeRegistrationServerDown,
  }) {
    return completeRegistrationSuccess(registrationEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult? Function(String message)? failure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? serverDown,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult? Function(String message)? completeRegistrationFailure,
    TResult? Function(String message)? completeRegistrationServerDown,
  }) {
    return completeRegistrationSuccess?.call(registrationEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult Function(String message)? failure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? serverDown,
    TResult Function()? completeRegistrationLoading,
    TResult Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult Function(String message)? completeRegistrationFailure,
    TResult Function(String message)? completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (completeRegistrationSuccess != null) {
      return completeRegistrationSuccess(registrationEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationSuccess value)
        completeRegistrationSuccess,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationFailure,
    required TResult Function(_CompleteRegistrationServerDown value)
        completeRegistrationServerDown,
  }) {
    return completeRegistrationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult? Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
  }) {
    return completeRegistrationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (completeRegistrationSuccess != null) {
      return completeRegistrationSuccess(this);
    }
    return orElse();
  }
}

abstract class _CompleteRegistrationSuccess
    implements RegisterSavePasscodeState {
  const factory _CompleteRegistrationSuccess(
          {required final RegistrationEntity registrationEntity}) =
      _$CompleteRegistrationSuccessImpl;

  RegistrationEntity get registrationEntity;

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompleteRegistrationSuccessImplCopyWith<_$CompleteRegistrationSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteRegistrationFailureImplCopyWith<$Res> {
  factory _$$CompleteRegistrationFailureImplCopyWith(
          _$CompleteRegistrationFailureImpl value,
          $Res Function(_$CompleteRegistrationFailureImpl) then) =
      __$$CompleteRegistrationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CompleteRegistrationFailureImplCopyWithImpl<$Res>
    extends _$RegisterSavePasscodeStateCopyWithImpl<$Res,
        _$CompleteRegistrationFailureImpl>
    implements _$$CompleteRegistrationFailureImplCopyWith<$Res> {
  __$$CompleteRegistrationFailureImplCopyWithImpl(
      _$CompleteRegistrationFailureImpl _value,
      $Res Function(_$CompleteRegistrationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CompleteRegistrationFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompleteRegistrationFailureImpl
    with DiagnosticableTreeMixin
    implements _CompleteRegistrationFailure {
  const _$CompleteRegistrationFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterSavePasscodeState.completeRegistrationFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegisterSavePasscodeState.completeRegistrationFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteRegistrationFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteRegistrationFailureImplCopyWith<_$CompleteRegistrationFailureImpl>
      get copyWith => __$$CompleteRegistrationFailureImplCopyWithImpl<
          _$CompleteRegistrationFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SavePasscodeEntity savePasscodeEntity) success,
    required TResult Function(String message) failure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) serverDown,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(RegistrationEntity registrationEntity)
        completeRegistrationSuccess,
    required TResult Function(String message) completeRegistrationFailure,
    required TResult Function(String message) completeRegistrationServerDown,
  }) {
    return completeRegistrationFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult? Function(String message)? failure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? serverDown,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult? Function(String message)? completeRegistrationFailure,
    TResult? Function(String message)? completeRegistrationServerDown,
  }) {
    return completeRegistrationFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult Function(String message)? failure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? serverDown,
    TResult Function()? completeRegistrationLoading,
    TResult Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult Function(String message)? completeRegistrationFailure,
    TResult Function(String message)? completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (completeRegistrationFailure != null) {
      return completeRegistrationFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationSuccess value)
        completeRegistrationSuccess,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationFailure,
    required TResult Function(_CompleteRegistrationServerDown value)
        completeRegistrationServerDown,
  }) {
    return completeRegistrationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult? Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
  }) {
    return completeRegistrationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (completeRegistrationFailure != null) {
      return completeRegistrationFailure(this);
    }
    return orElse();
  }
}

abstract class _CompleteRegistrationFailure
    implements RegisterSavePasscodeState {
  const factory _CompleteRegistrationFailure({required final String message}) =
      _$CompleteRegistrationFailureImpl;

  String get message;

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompleteRegistrationFailureImplCopyWith<_$CompleteRegistrationFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteRegistrationServerDownImplCopyWith<$Res> {
  factory _$$CompleteRegistrationServerDownImplCopyWith(
          _$CompleteRegistrationServerDownImpl value,
          $Res Function(_$CompleteRegistrationServerDownImpl) then) =
      __$$CompleteRegistrationServerDownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CompleteRegistrationServerDownImplCopyWithImpl<$Res>
    extends _$RegisterSavePasscodeStateCopyWithImpl<$Res,
        _$CompleteRegistrationServerDownImpl>
    implements _$$CompleteRegistrationServerDownImplCopyWith<$Res> {
  __$$CompleteRegistrationServerDownImplCopyWithImpl(
      _$CompleteRegistrationServerDownImpl _value,
      $Res Function(_$CompleteRegistrationServerDownImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CompleteRegistrationServerDownImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CompleteRegistrationServerDownImpl
    with DiagnosticableTreeMixin
    implements _CompleteRegistrationServerDown {
  const _$CompleteRegistrationServerDownImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterSavePasscodeState.completeRegistrationServerDown(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegisterSavePasscodeState.completeRegistrationServerDown'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteRegistrationServerDownImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteRegistrationServerDownImplCopyWith<
          _$CompleteRegistrationServerDownImpl>
      get copyWith => __$$CompleteRegistrationServerDownImplCopyWithImpl<
          _$CompleteRegistrationServerDownImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SavePasscodeEntity savePasscodeEntity) success,
    required TResult Function(String message) failure,
    required TResult Function(String message) serverFailure,
    required TResult Function(String message) serverDown,
    required TResult Function() completeRegistrationLoading,
    required TResult Function(RegistrationEntity registrationEntity)
        completeRegistrationSuccess,
    required TResult Function(String message) completeRegistrationFailure,
    required TResult Function(String message) completeRegistrationServerDown,
  }) {
    return completeRegistrationServerDown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult? Function(String message)? failure,
    TResult? Function(String message)? serverFailure,
    TResult? Function(String message)? serverDown,
    TResult? Function()? completeRegistrationLoading,
    TResult? Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult? Function(String message)? completeRegistrationFailure,
    TResult? Function(String message)? completeRegistrationServerDown,
  }) {
    return completeRegistrationServerDown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SavePasscodeEntity savePasscodeEntity)? success,
    TResult Function(String message)? failure,
    TResult Function(String message)? serverFailure,
    TResult Function(String message)? serverDown,
    TResult Function()? completeRegistrationLoading,
    TResult Function(RegistrationEntity registrationEntity)?
        completeRegistrationSuccess,
    TResult Function(String message)? completeRegistrationFailure,
    TResult Function(String message)? completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (completeRegistrationServerDown != null) {
      return completeRegistrationServerDown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_CompleteRegistrationLoading value)
        completeRegistrationLoading,
    required TResult Function(_CompleteRegistrationSuccess value)
        completeRegistrationSuccess,
    required TResult Function(_CompleteRegistrationFailure value)
        completeRegistrationFailure,
    required TResult Function(_CompleteRegistrationServerDown value)
        completeRegistrationServerDown,
  }) {
    return completeRegistrationServerDown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult? Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult? Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult? Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
  }) {
    return completeRegistrationServerDown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_CompleteRegistrationLoading value)?
        completeRegistrationLoading,
    TResult Function(_CompleteRegistrationSuccess value)?
        completeRegistrationSuccess,
    TResult Function(_CompleteRegistrationFailure value)?
        completeRegistrationFailure,
    TResult Function(_CompleteRegistrationServerDown value)?
        completeRegistrationServerDown,
    required TResult orElse(),
  }) {
    if (completeRegistrationServerDown != null) {
      return completeRegistrationServerDown(this);
    }
    return orElse();
  }
}

abstract class _CompleteRegistrationServerDown
    implements RegisterSavePasscodeState {
  const factory _CompleteRegistrationServerDown(
      {required final String message}) = _$CompleteRegistrationServerDownImpl;

  String get message;

  /// Create a copy of RegisterSavePasscodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompleteRegistrationServerDownImplCopyWith<
          _$CompleteRegistrationServerDownImpl>
      get copyWith => throw _privateConstructorUsedError;
}
