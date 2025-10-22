// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_kyc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterKycEvent {
  RegisterKycRequestModel get request => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterKycRequestModel request)
        initiateRegisterKyc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterKycRequestModel request)? initiateRegisterKyc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterKycRequestModel request)? initiateRegisterKyc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitiateRegisterKyc value) initiateRegisterKyc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitiateRegisterKyc value)? initiateRegisterKyc,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitiateRegisterKyc value)? initiateRegisterKyc,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RegisterKycEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterKycEventCopyWith<RegisterKycEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterKycEventCopyWith<$Res> {
  factory $RegisterKycEventCopyWith(
          RegisterKycEvent value, $Res Function(RegisterKycEvent) then) =
      _$RegisterKycEventCopyWithImpl<$Res, RegisterKycEvent>;
  @useResult
  $Res call({RegisterKycRequestModel request});

  $RegisterKycRequestModelCopyWith<$Res> get request;
}

/// @nodoc
class _$RegisterKycEventCopyWithImpl<$Res, $Val extends RegisterKycEvent>
    implements $RegisterKycEventCopyWith<$Res> {
  _$RegisterKycEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterKycEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RegisterKycRequestModel,
    ) as $Val);
  }

  /// Create a copy of RegisterKycEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegisterKycRequestModelCopyWith<$Res> get request {
    return $RegisterKycRequestModelCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitiateRegisterKycImplCopyWith<$Res>
    implements $RegisterKycEventCopyWith<$Res> {
  factory _$$InitiateRegisterKycImplCopyWith(_$InitiateRegisterKycImpl value,
          $Res Function(_$InitiateRegisterKycImpl) then) =
      __$$InitiateRegisterKycImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterKycRequestModel request});

  @override
  $RegisterKycRequestModelCopyWith<$Res> get request;
}

/// @nodoc
class __$$InitiateRegisterKycImplCopyWithImpl<$Res>
    extends _$RegisterKycEventCopyWithImpl<$Res, _$InitiateRegisterKycImpl>
    implements _$$InitiateRegisterKycImplCopyWith<$Res> {
  __$$InitiateRegisterKycImplCopyWithImpl(_$InitiateRegisterKycImpl _value,
      $Res Function(_$InitiateRegisterKycImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterKycEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$InitiateRegisterKycImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as RegisterKycRequestModel,
    ));
  }
}

/// @nodoc

class _$InitiateRegisterKycImpl implements _InitiateRegisterKyc {
  const _$InitiateRegisterKycImpl({required this.request});

  @override
  final RegisterKycRequestModel request;

  @override
  String toString() {
    return 'RegisterKycEvent.initiateRegisterKyc(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitiateRegisterKycImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of RegisterKycEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitiateRegisterKycImplCopyWith<_$InitiateRegisterKycImpl> get copyWith =>
      __$$InitiateRegisterKycImplCopyWithImpl<_$InitiateRegisterKycImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterKycRequestModel request)
        initiateRegisterKyc,
  }) {
    return initiateRegisterKyc(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterKycRequestModel request)? initiateRegisterKyc,
  }) {
    return initiateRegisterKyc?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterKycRequestModel request)? initiateRegisterKyc,
    required TResult orElse(),
  }) {
    if (initiateRegisterKyc != null) {
      return initiateRegisterKyc(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitiateRegisterKyc value) initiateRegisterKyc,
  }) {
    return initiateRegisterKyc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitiateRegisterKyc value)? initiateRegisterKyc,
  }) {
    return initiateRegisterKyc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitiateRegisterKyc value)? initiateRegisterKyc,
    required TResult orElse(),
  }) {
    if (initiateRegisterKyc != null) {
      return initiateRegisterKyc(this);
    }
    return orElse();
  }
}

abstract class _InitiateRegisterKyc implements RegisterKycEvent {
  const factory _InitiateRegisterKyc(
          {required final RegisterKycRequestModel request}) =
      _$InitiateRegisterKycImpl;

  @override
  RegisterKycRequestModel get request;

  /// Create a copy of RegisterKycEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitiateRegisterKycImplCopyWith<_$InitiateRegisterKycImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterKycState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterKycEntity registerKyc) success,
    required TResult Function(String message) error,
    required TResult Function(String message) serverDown,
    required TResult Function(KycDocumentEntity entity) documentUploaded,
    required TResult Function(KycVerificationEntity entity) kycVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterKycEntity registerKyc)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? serverDown,
    TResult? Function(KycDocumentEntity entity)? documentUploaded,
    TResult? Function(KycVerificationEntity entity)? kycVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterKycEntity registerKyc)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? serverDown,
    TResult Function(KycDocumentEntity entity)? documentUploaded,
    TResult Function(KycVerificationEntity entity)? kycVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_KycDocumentUploaded value) documentUploaded,
    required TResult Function(_KycVerified value) kycVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_KycDocumentUploaded value)? documentUploaded,
    TResult? Function(_KycVerified value)? kycVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_KycDocumentUploaded value)? documentUploaded,
    TResult Function(_KycVerified value)? kycVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterKycStateCopyWith<$Res> {
  factory $RegisterKycStateCopyWith(
          RegisterKycState value, $Res Function(RegisterKycState) then) =
      _$RegisterKycStateCopyWithImpl<$Res, RegisterKycState>;
}

/// @nodoc
class _$RegisterKycStateCopyWithImpl<$Res, $Val extends RegisterKycState>
    implements $RegisterKycStateCopyWith<$Res> {
  _$RegisterKycStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterKycState
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
    extends _$RegisterKycStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RegisterKycState.initial()';
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
    required TResult Function(RegisterKycEntity registerKyc) success,
    required TResult Function(String message) error,
    required TResult Function(String message) serverDown,
    required TResult Function(KycDocumentEntity entity) documentUploaded,
    required TResult Function(KycVerificationEntity entity) kycVerified,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterKycEntity registerKyc)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? serverDown,
    TResult? Function(KycDocumentEntity entity)? documentUploaded,
    TResult? Function(KycVerificationEntity entity)? kycVerified,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterKycEntity registerKyc)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? serverDown,
    TResult Function(KycDocumentEntity entity)? documentUploaded,
    TResult Function(KycVerificationEntity entity)? kycVerified,
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
    required TResult Function(_Error value) error,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_KycDocumentUploaded value) documentUploaded,
    required TResult Function(_KycVerified value) kycVerified,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_KycDocumentUploaded value)? documentUploaded,
    TResult? Function(_KycVerified value)? kycVerified,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_KycDocumentUploaded value)? documentUploaded,
    TResult Function(_KycVerified value)? kycVerified,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegisterKycState {
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
    extends _$RegisterKycStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'RegisterKycState.loading()';
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
    required TResult Function(RegisterKycEntity registerKyc) success,
    required TResult Function(String message) error,
    required TResult Function(String message) serverDown,
    required TResult Function(KycDocumentEntity entity) documentUploaded,
    required TResult Function(KycVerificationEntity entity) kycVerified,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterKycEntity registerKyc)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? serverDown,
    TResult? Function(KycDocumentEntity entity)? documentUploaded,
    TResult? Function(KycVerificationEntity entity)? kycVerified,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterKycEntity registerKyc)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? serverDown,
    TResult Function(KycDocumentEntity entity)? documentUploaded,
    TResult Function(KycVerificationEntity entity)? kycVerified,
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
    required TResult Function(_Error value) error,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_KycDocumentUploaded value) documentUploaded,
    required TResult Function(_KycVerified value) kycVerified,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_KycDocumentUploaded value)? documentUploaded,
    TResult? Function(_KycVerified value)? kycVerified,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_KycDocumentUploaded value)? documentUploaded,
    TResult Function(_KycVerified value)? kycVerified,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RegisterKycState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterKycEntity registerKyc});

  $RegisterKycEntityCopyWith<$Res> get registerKyc;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$RegisterKycStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerKyc = null,
  }) {
    return _then(_$SuccessImpl(
      registerKyc: null == registerKyc
          ? _value.registerKyc
          : registerKyc // ignore: cast_nullable_to_non_nullable
              as RegisterKycEntity,
    ));
  }

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegisterKycEntityCopyWith<$Res> get registerKyc {
    return $RegisterKycEntityCopyWith<$Res>(_value.registerKyc, (value) {
      return _then(_value.copyWith(registerKyc: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required this.registerKyc});

  @override
  final RegisterKycEntity registerKyc;

  @override
  String toString() {
    return 'RegisterKycState.success(registerKyc: $registerKyc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.registerKyc, registerKyc) ||
                other.registerKyc == registerKyc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerKyc);

  /// Create a copy of RegisterKycState
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
    required TResult Function(RegisterKycEntity registerKyc) success,
    required TResult Function(String message) error,
    required TResult Function(String message) serverDown,
    required TResult Function(KycDocumentEntity entity) documentUploaded,
    required TResult Function(KycVerificationEntity entity) kycVerified,
  }) {
    return success(registerKyc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterKycEntity registerKyc)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? serverDown,
    TResult? Function(KycDocumentEntity entity)? documentUploaded,
    TResult? Function(KycVerificationEntity entity)? kycVerified,
  }) {
    return success?.call(registerKyc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterKycEntity registerKyc)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? serverDown,
    TResult Function(KycDocumentEntity entity)? documentUploaded,
    TResult Function(KycVerificationEntity entity)? kycVerified,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(registerKyc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_KycDocumentUploaded value) documentUploaded,
    required TResult Function(_KycVerified value) kycVerified,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_KycDocumentUploaded value)? documentUploaded,
    TResult? Function(_KycVerified value)? kycVerified,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_KycDocumentUploaded value)? documentUploaded,
    TResult Function(_KycVerified value)? kycVerified,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements RegisterKycState {
  const factory _Success({required final RegisterKycEntity registerKyc}) =
      _$SuccessImpl;

  RegisterKycEntity get registerKyc;

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RegisterKycStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterKycState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterKycEntity registerKyc) success,
    required TResult Function(String message) error,
    required TResult Function(String message) serverDown,
    required TResult Function(KycDocumentEntity entity) documentUploaded,
    required TResult Function(KycVerificationEntity entity) kycVerified,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterKycEntity registerKyc)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? serverDown,
    TResult? Function(KycDocumentEntity entity)? documentUploaded,
    TResult? Function(KycVerificationEntity entity)? kycVerified,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterKycEntity registerKyc)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? serverDown,
    TResult Function(KycDocumentEntity entity)? documentUploaded,
    TResult Function(KycVerificationEntity entity)? kycVerified,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_KycDocumentUploaded value) documentUploaded,
    required TResult Function(_KycVerified value) kycVerified,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_KycDocumentUploaded value)? documentUploaded,
    TResult? Function(_KycVerified value)? kycVerified,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_KycDocumentUploaded value)? documentUploaded,
    TResult Function(_KycVerified value)? kycVerified,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RegisterKycState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
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
    extends _$RegisterKycStateCopyWithImpl<$Res, _$ServerDownImpl>
    implements _$$ServerDownImplCopyWith<$Res> {
  __$$ServerDownImplCopyWithImpl(
      _$ServerDownImpl _value, $Res Function(_$ServerDownImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterKycState
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

class _$ServerDownImpl implements _ServerDown {
  const _$ServerDownImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterKycState.serverDown(message: $message)';
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

  /// Create a copy of RegisterKycState
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
    required TResult Function(RegisterKycEntity registerKyc) success,
    required TResult Function(String message) error,
    required TResult Function(String message) serverDown,
    required TResult Function(KycDocumentEntity entity) documentUploaded,
    required TResult Function(KycVerificationEntity entity) kycVerified,
  }) {
    return serverDown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterKycEntity registerKyc)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? serverDown,
    TResult? Function(KycDocumentEntity entity)? documentUploaded,
    TResult? Function(KycVerificationEntity entity)? kycVerified,
  }) {
    return serverDown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterKycEntity registerKyc)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? serverDown,
    TResult Function(KycDocumentEntity entity)? documentUploaded,
    TResult Function(KycVerificationEntity entity)? kycVerified,
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
    required TResult Function(_Error value) error,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_KycDocumentUploaded value) documentUploaded,
    required TResult Function(_KycVerified value) kycVerified,
  }) {
    return serverDown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_KycDocumentUploaded value)? documentUploaded,
    TResult? Function(_KycVerified value)? kycVerified,
  }) {
    return serverDown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_KycDocumentUploaded value)? documentUploaded,
    TResult Function(_KycVerified value)? kycVerified,
    required TResult orElse(),
  }) {
    if (serverDown != null) {
      return serverDown(this);
    }
    return orElse();
  }
}

abstract class _ServerDown implements RegisterKycState {
  const factory _ServerDown({required final String message}) = _$ServerDownImpl;

  String get message;

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerDownImplCopyWith<_$ServerDownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KycDocumentUploadedImplCopyWith<$Res> {
  factory _$$KycDocumentUploadedImplCopyWith(_$KycDocumentUploadedImpl value,
          $Res Function(_$KycDocumentUploadedImpl) then) =
      __$$KycDocumentUploadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KycDocumentEntity entity});

  $KycDocumentEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$KycDocumentUploadedImplCopyWithImpl<$Res>
    extends _$RegisterKycStateCopyWithImpl<$Res, _$KycDocumentUploadedImpl>
    implements _$$KycDocumentUploadedImplCopyWith<$Res> {
  __$$KycDocumentUploadedImplCopyWithImpl(_$KycDocumentUploadedImpl _value,
      $Res Function(_$KycDocumentUploadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$KycDocumentUploadedImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as KycDocumentEntity,
    ));
  }

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KycDocumentEntityCopyWith<$Res> get entity {
    return $KycDocumentEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$KycDocumentUploadedImpl implements _KycDocumentUploaded {
  const _$KycDocumentUploadedImpl({required this.entity});

  @override
  final KycDocumentEntity entity;

  @override
  String toString() {
    return 'RegisterKycState.documentUploaded(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycDocumentUploadedImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycDocumentUploadedImplCopyWith<_$KycDocumentUploadedImpl> get copyWith =>
      __$$KycDocumentUploadedImplCopyWithImpl<_$KycDocumentUploadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterKycEntity registerKyc) success,
    required TResult Function(String message) error,
    required TResult Function(String message) serverDown,
    required TResult Function(KycDocumentEntity entity) documentUploaded,
    required TResult Function(KycVerificationEntity entity) kycVerified,
  }) {
    return documentUploaded(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterKycEntity registerKyc)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? serverDown,
    TResult? Function(KycDocumentEntity entity)? documentUploaded,
    TResult? Function(KycVerificationEntity entity)? kycVerified,
  }) {
    return documentUploaded?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterKycEntity registerKyc)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? serverDown,
    TResult Function(KycDocumentEntity entity)? documentUploaded,
    TResult Function(KycVerificationEntity entity)? kycVerified,
    required TResult orElse(),
  }) {
    if (documentUploaded != null) {
      return documentUploaded(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_KycDocumentUploaded value) documentUploaded,
    required TResult Function(_KycVerified value) kycVerified,
  }) {
    return documentUploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_KycDocumentUploaded value)? documentUploaded,
    TResult? Function(_KycVerified value)? kycVerified,
  }) {
    return documentUploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_KycDocumentUploaded value)? documentUploaded,
    TResult Function(_KycVerified value)? kycVerified,
    required TResult orElse(),
  }) {
    if (documentUploaded != null) {
      return documentUploaded(this);
    }
    return orElse();
  }
}

abstract class _KycDocumentUploaded implements RegisterKycState {
  const factory _KycDocumentUploaded(
      {required final KycDocumentEntity entity}) = _$KycDocumentUploadedImpl;

  KycDocumentEntity get entity;

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycDocumentUploadedImplCopyWith<_$KycDocumentUploadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KycVerifiedImplCopyWith<$Res> {
  factory _$$KycVerifiedImplCopyWith(
          _$KycVerifiedImpl value, $Res Function(_$KycVerifiedImpl) then) =
      __$$KycVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KycVerificationEntity entity});

  $KycVerificationEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$KycVerifiedImplCopyWithImpl<$Res>
    extends _$RegisterKycStateCopyWithImpl<$Res, _$KycVerifiedImpl>
    implements _$$KycVerifiedImplCopyWith<$Res> {
  __$$KycVerifiedImplCopyWithImpl(
      _$KycVerifiedImpl _value, $Res Function(_$KycVerifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$KycVerifiedImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as KycVerificationEntity,
    ));
  }

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KycVerificationEntityCopyWith<$Res> get entity {
    return $KycVerificationEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$KycVerifiedImpl implements _KycVerified {
  const _$KycVerifiedImpl({required this.entity});

  @override
  final KycVerificationEntity entity;

  @override
  String toString() {
    return 'RegisterKycState.kycVerified(entity: $entity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycVerifiedImpl &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycVerifiedImplCopyWith<_$KycVerifiedImpl> get copyWith =>
      __$$KycVerifiedImplCopyWithImpl<_$KycVerifiedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RegisterKycEntity registerKyc) success,
    required TResult Function(String message) error,
    required TResult Function(String message) serverDown,
    required TResult Function(KycDocumentEntity entity) documentUploaded,
    required TResult Function(KycVerificationEntity entity) kycVerified,
  }) {
    return kycVerified(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RegisterKycEntity registerKyc)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? serverDown,
    TResult? Function(KycDocumentEntity entity)? documentUploaded,
    TResult? Function(KycVerificationEntity entity)? kycVerified,
  }) {
    return kycVerified?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RegisterKycEntity registerKyc)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? serverDown,
    TResult Function(KycDocumentEntity entity)? documentUploaded,
    TResult Function(KycVerificationEntity entity)? kycVerified,
    required TResult orElse(),
  }) {
    if (kycVerified != null) {
      return kycVerified(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_ServerDown value) serverDown,
    required TResult Function(_KycDocumentUploaded value) documentUploaded,
    required TResult Function(_KycVerified value) kycVerified,
  }) {
    return kycVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_KycDocumentUploaded value)? documentUploaded,
    TResult? Function(_KycVerified value)? kycVerified,
  }) {
    return kycVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_KycDocumentUploaded value)? documentUploaded,
    TResult Function(_KycVerified value)? kycVerified,
    required TResult orElse(),
  }) {
    if (kycVerified != null) {
      return kycVerified(this);
    }
    return orElse();
  }
}

abstract class _KycVerified implements RegisterKycState {
  const factory _KycVerified({required final KycVerificationEntity entity}) =
      _$KycVerifiedImpl;

  KycVerificationEntity get entity;

  /// Create a copy of RegisterKycState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycVerifiedImplCopyWith<_$KycVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
