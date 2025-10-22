// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'back_image_extraction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BackImageExtractionEvent {
  Uint8List get image => throw _privateConstructorUsedError;
  String get referenceId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List image, String referenceId) captureImage,
    required TResult Function(String referenceId, Uint8List image, String side)
        performBackOcr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List image, String referenceId)? captureImage,
    TResult? Function(String referenceId, Uint8List image, String side)?
        performBackOcr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List image, String referenceId)? captureImage,
    TResult Function(String referenceId, Uint8List image, String side)?
        performBackOcr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CaptureImage value) captureImage,
    required TResult Function(_PerformBackOcr value) performBackOcr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CaptureImage value)? captureImage,
    TResult? Function(_PerformBackOcr value)? performBackOcr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CaptureImage value)? captureImage,
    TResult Function(_PerformBackOcr value)? performBackOcr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BackImageExtractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BackImageExtractionEventCopyWith<BackImageExtractionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackImageExtractionEventCopyWith<$Res> {
  factory $BackImageExtractionEventCopyWith(BackImageExtractionEvent value,
          $Res Function(BackImageExtractionEvent) then) =
      _$BackImageExtractionEventCopyWithImpl<$Res, BackImageExtractionEvent>;
  @useResult
  $Res call({Uint8List image, String referenceId});
}

/// @nodoc
class _$BackImageExtractionEventCopyWithImpl<$Res,
        $Val extends BackImageExtractionEvent>
    implements $BackImageExtractionEventCopyWith<$Res> {
  _$BackImageExtractionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BackImageExtractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? referenceId = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CaptureImageImplCopyWith<$Res>
    implements $BackImageExtractionEventCopyWith<$Res> {
  factory _$$CaptureImageImplCopyWith(
          _$CaptureImageImpl value, $Res Function(_$CaptureImageImpl) then) =
      __$$CaptureImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uint8List image, String referenceId});
}

/// @nodoc
class __$$CaptureImageImplCopyWithImpl<$Res>
    extends _$BackImageExtractionEventCopyWithImpl<$Res, _$CaptureImageImpl>
    implements _$$CaptureImageImplCopyWith<$Res> {
  __$$CaptureImageImplCopyWithImpl(
      _$CaptureImageImpl _value, $Res Function(_$CaptureImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackImageExtractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? referenceId = null,
  }) {
    return _then(_$CaptureImageImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CaptureImageImpl with DiagnosticableTreeMixin implements _CaptureImage {
  const _$CaptureImageImpl({required this.image, required this.referenceId});

  @override
  final Uint8List image;
  @override
  final String referenceId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BackImageExtractionEvent.captureImage(image: $image, referenceId: $referenceId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'BackImageExtractionEvent.captureImage'))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('referenceId', referenceId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaptureImageImpl &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(image), referenceId);

  /// Create a copy of BackImageExtractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CaptureImageImplCopyWith<_$CaptureImageImpl> get copyWith =>
      __$$CaptureImageImplCopyWithImpl<_$CaptureImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List image, String referenceId) captureImage,
    required TResult Function(String referenceId, Uint8List image, String side)
        performBackOcr,
  }) {
    return captureImage(image, referenceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List image, String referenceId)? captureImage,
    TResult? Function(String referenceId, Uint8List image, String side)?
        performBackOcr,
  }) {
    return captureImage?.call(image, referenceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List image, String referenceId)? captureImage,
    TResult Function(String referenceId, Uint8List image, String side)?
        performBackOcr,
    required TResult orElse(),
  }) {
    if (captureImage != null) {
      return captureImage(image, referenceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CaptureImage value) captureImage,
    required TResult Function(_PerformBackOcr value) performBackOcr,
  }) {
    return captureImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CaptureImage value)? captureImage,
    TResult? Function(_PerformBackOcr value)? performBackOcr,
  }) {
    return captureImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CaptureImage value)? captureImage,
    TResult Function(_PerformBackOcr value)? performBackOcr,
    required TResult orElse(),
  }) {
    if (captureImage != null) {
      return captureImage(this);
    }
    return orElse();
  }
}

abstract class _CaptureImage implements BackImageExtractionEvent {
  const factory _CaptureImage(
      {required final Uint8List image,
      required final String referenceId}) = _$CaptureImageImpl;

  @override
  Uint8List get image;
  @override
  String get referenceId;

  /// Create a copy of BackImageExtractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CaptureImageImplCopyWith<_$CaptureImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PerformBackOcrImplCopyWith<$Res>
    implements $BackImageExtractionEventCopyWith<$Res> {
  factory _$$PerformBackOcrImplCopyWith(_$PerformBackOcrImpl value,
          $Res Function(_$PerformBackOcrImpl) then) =
      __$$PerformBackOcrImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String referenceId, Uint8List image, String side});
}

/// @nodoc
class __$$PerformBackOcrImplCopyWithImpl<$Res>
    extends _$BackImageExtractionEventCopyWithImpl<$Res, _$PerformBackOcrImpl>
    implements _$$PerformBackOcrImplCopyWith<$Res> {
  __$$PerformBackOcrImplCopyWithImpl(
      _$PerformBackOcrImpl _value, $Res Function(_$PerformBackOcrImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackImageExtractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceId = null,
    Object? image = null,
    Object? side = null,
  }) {
    return _then(_$PerformBackOcrImpl(
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      side: null == side
          ? _value.side
          : side // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PerformBackOcrImpl
    with DiagnosticableTreeMixin
    implements _PerformBackOcr {
  const _$PerformBackOcrImpl(
      {required this.referenceId, required this.image, required this.side});

  @override
  final String referenceId;
  @override
  final Uint8List image;
  @override
  final String side;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BackImageExtractionEvent.performBackOcr(referenceId: $referenceId, image: $image, side: $side)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'BackImageExtractionEvent.performBackOcr'))
      ..add(DiagnosticsProperty('referenceId', referenceId))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('side', side));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformBackOcrImpl &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.side, side) || other.side == side));
  }

  @override
  int get hashCode => Object.hash(runtimeType, referenceId,
      const DeepCollectionEquality().hash(image), side);

  /// Create a copy of BackImageExtractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformBackOcrImplCopyWith<_$PerformBackOcrImpl> get copyWith =>
      __$$PerformBackOcrImplCopyWithImpl<_$PerformBackOcrImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List image, String referenceId) captureImage,
    required TResult Function(String referenceId, Uint8List image, String side)
        performBackOcr,
  }) {
    return performBackOcr(referenceId, image, side);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List image, String referenceId)? captureImage,
    TResult? Function(String referenceId, Uint8List image, String side)?
        performBackOcr,
  }) {
    return performBackOcr?.call(referenceId, image, side);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List image, String referenceId)? captureImage,
    TResult Function(String referenceId, Uint8List image, String side)?
        performBackOcr,
    required TResult orElse(),
  }) {
    if (performBackOcr != null) {
      return performBackOcr(referenceId, image, side);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CaptureImage value) captureImage,
    required TResult Function(_PerformBackOcr value) performBackOcr,
  }) {
    return performBackOcr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CaptureImage value)? captureImage,
    TResult? Function(_PerformBackOcr value)? performBackOcr,
  }) {
    return performBackOcr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CaptureImage value)? captureImage,
    TResult Function(_PerformBackOcr value)? performBackOcr,
    required TResult orElse(),
  }) {
    if (performBackOcr != null) {
      return performBackOcr(this);
    }
    return orElse();
  }
}

abstract class _PerformBackOcr implements BackImageExtractionEvent {
  const factory _PerformBackOcr(
      {required final String referenceId,
      required final Uint8List image,
      required final String side}) = _$PerformBackOcrImpl;

  @override
  String get referenceId;
  @override
  Uint8List get image;
  String get side;

  /// Create a copy of BackImageExtractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PerformBackOcrImplCopyWith<_$PerformBackOcrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BackImageExtractionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            OcrBackEntity ocrBackEntity, Uint8List capturedImage)
        success,
    required TResult Function(String message) error,
    required TResult Function(String message) serverDown,
    required TResult Function(Uint8List capturedImage) imageCaptured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OcrBackEntity ocrBackEntity, Uint8List capturedImage)?
        success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? serverDown,
    TResult? Function(Uint8List capturedImage)? imageCaptured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OcrBackEntity ocrBackEntity, Uint8List capturedImage)?
        success,
    TResult Function(String message)? error,
    TResult Function(String message)? serverDown,
    TResult Function(Uint8List capturedImage)? imageCaptured,
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
    required TResult Function(_ImageCaptured value) imageCaptured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_ImageCaptured value)? imageCaptured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackImageExtractionStateCopyWith<$Res> {
  factory $BackImageExtractionStateCopyWith(BackImageExtractionState value,
          $Res Function(BackImageExtractionState) then) =
      _$BackImageExtractionStateCopyWithImpl<$Res, BackImageExtractionState>;
}

/// @nodoc
class _$BackImageExtractionStateCopyWithImpl<$Res,
        $Val extends BackImageExtractionState>
    implements $BackImageExtractionStateCopyWith<$Res> {
  _$BackImageExtractionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BackImageExtractionState
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
    extends _$BackImageExtractionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackImageExtractionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BackImageExtractionState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BackImageExtractionState.initial'));
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
    required TResult Function(
            OcrBackEntity ocrBackEntity, Uint8List capturedImage)
        success,
    required TResult Function(String message) error,
    required TResult Function(String message) serverDown,
    required TResult Function(Uint8List capturedImage) imageCaptured,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OcrBackEntity ocrBackEntity, Uint8List capturedImage)?
        success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? serverDown,
    TResult? Function(Uint8List capturedImage)? imageCaptured,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OcrBackEntity ocrBackEntity, Uint8List capturedImage)?
        success,
    TResult Function(String message)? error,
    TResult Function(String message)? serverDown,
    TResult Function(Uint8List capturedImage)? imageCaptured,
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
    required TResult Function(_ImageCaptured value) imageCaptured,
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
    TResult? Function(_ImageCaptured value)? imageCaptured,
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
    TResult Function(_ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BackImageExtractionState {
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
    extends _$BackImageExtractionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackImageExtractionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BackImageExtractionState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BackImageExtractionState.loading'));
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
    required TResult Function(
            OcrBackEntity ocrBackEntity, Uint8List capturedImage)
        success,
    required TResult Function(String message) error,
    required TResult Function(String message) serverDown,
    required TResult Function(Uint8List capturedImage) imageCaptured,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OcrBackEntity ocrBackEntity, Uint8List capturedImage)?
        success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? serverDown,
    TResult? Function(Uint8List capturedImage)? imageCaptured,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OcrBackEntity ocrBackEntity, Uint8List capturedImage)?
        success,
    TResult Function(String message)? error,
    TResult Function(String message)? serverDown,
    TResult Function(Uint8List capturedImage)? imageCaptured,
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
    required TResult Function(_ImageCaptured value) imageCaptured,
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
    TResult? Function(_ImageCaptured value)? imageCaptured,
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
    TResult Function(_ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BackImageExtractionState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OcrBackEntity ocrBackEntity, Uint8List capturedImage});

  $OcrBackEntityCopyWith<$Res> get ocrBackEntity;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$BackImageExtractionStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackImageExtractionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ocrBackEntity = null,
    Object? capturedImage = null,
  }) {
    return _then(_$SuccessImpl(
      ocrBackEntity: null == ocrBackEntity
          ? _value.ocrBackEntity
          : ocrBackEntity // ignore: cast_nullable_to_non_nullable
              as OcrBackEntity,
      capturedImage: null == capturedImage
          ? _value.capturedImage
          : capturedImage // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }

  /// Create a copy of BackImageExtractionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OcrBackEntityCopyWith<$Res> get ocrBackEntity {
    return $OcrBackEntityCopyWith<$Res>(_value.ocrBackEntity, (value) {
      return _then(_value.copyWith(ocrBackEntity: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl with DiagnosticableTreeMixin implements _Success {
  const _$SuccessImpl(
      {required this.ocrBackEntity, required this.capturedImage});

  @override
  final OcrBackEntity ocrBackEntity;
  @override
  final Uint8List capturedImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BackImageExtractionState.success(ocrBackEntity: $ocrBackEntity, capturedImage: $capturedImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BackImageExtractionState.success'))
      ..add(DiagnosticsProperty('ocrBackEntity', ocrBackEntity))
      ..add(DiagnosticsProperty('capturedImage', capturedImage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.ocrBackEntity, ocrBackEntity) ||
                other.ocrBackEntity == ocrBackEntity) &&
            const DeepCollectionEquality()
                .equals(other.capturedImage, capturedImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ocrBackEntity,
      const DeepCollectionEquality().hash(capturedImage));

  /// Create a copy of BackImageExtractionState
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
    required TResult Function(
            OcrBackEntity ocrBackEntity, Uint8List capturedImage)
        success,
    required TResult Function(String message) error,
    required TResult Function(String message) serverDown,
    required TResult Function(Uint8List capturedImage) imageCaptured,
  }) {
    return success(ocrBackEntity, capturedImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OcrBackEntity ocrBackEntity, Uint8List capturedImage)?
        success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? serverDown,
    TResult? Function(Uint8List capturedImage)? imageCaptured,
  }) {
    return success?.call(ocrBackEntity, capturedImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OcrBackEntity ocrBackEntity, Uint8List capturedImage)?
        success,
    TResult Function(String message)? error,
    TResult Function(String message)? serverDown,
    TResult Function(Uint8List capturedImage)? imageCaptured,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(ocrBackEntity, capturedImage);
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
    required TResult Function(_ImageCaptured value) imageCaptured,
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
    TResult? Function(_ImageCaptured value)? imageCaptured,
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
    TResult Function(_ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements BackImageExtractionState {
  const factory _Success(
      {required final OcrBackEntity ocrBackEntity,
      required final Uint8List capturedImage}) = _$SuccessImpl;

  OcrBackEntity get ocrBackEntity;
  Uint8List get capturedImage;

  /// Create a copy of BackImageExtractionState
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
    extends _$BackImageExtractionStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackImageExtractionState
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

class _$ErrorImpl with DiagnosticableTreeMixin implements _Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BackImageExtractionState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BackImageExtractionState.error'))
      ..add(DiagnosticsProperty('message', message));
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

  /// Create a copy of BackImageExtractionState
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
    required TResult Function(
            OcrBackEntity ocrBackEntity, Uint8List capturedImage)
        success,
    required TResult Function(String message) error,
    required TResult Function(String message) serverDown,
    required TResult Function(Uint8List capturedImage) imageCaptured,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OcrBackEntity ocrBackEntity, Uint8List capturedImage)?
        success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? serverDown,
    TResult? Function(Uint8List capturedImage)? imageCaptured,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OcrBackEntity ocrBackEntity, Uint8List capturedImage)?
        success,
    TResult Function(String message)? error,
    TResult Function(String message)? serverDown,
    TResult Function(Uint8List capturedImage)? imageCaptured,
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
    required TResult Function(_ImageCaptured value) imageCaptured,
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
    TResult? Function(_ImageCaptured value)? imageCaptured,
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
    TResult Function(_ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements BackImageExtractionState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of BackImageExtractionState
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
    extends _$BackImageExtractionStateCopyWithImpl<$Res, _$ServerDownImpl>
    implements _$$ServerDownImplCopyWith<$Res> {
  __$$ServerDownImplCopyWithImpl(
      _$ServerDownImpl _value, $Res Function(_$ServerDownImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackImageExtractionState
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
    return 'BackImageExtractionState.serverDown(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BackImageExtractionState.serverDown'))
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

  /// Create a copy of BackImageExtractionState
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
    required TResult Function(
            OcrBackEntity ocrBackEntity, Uint8List capturedImage)
        success,
    required TResult Function(String message) error,
    required TResult Function(String message) serverDown,
    required TResult Function(Uint8List capturedImage) imageCaptured,
  }) {
    return serverDown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OcrBackEntity ocrBackEntity, Uint8List capturedImage)?
        success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? serverDown,
    TResult? Function(Uint8List capturedImage)? imageCaptured,
  }) {
    return serverDown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OcrBackEntity ocrBackEntity, Uint8List capturedImage)?
        success,
    TResult Function(String message)? error,
    TResult Function(String message)? serverDown,
    TResult Function(Uint8List capturedImage)? imageCaptured,
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
    required TResult Function(_ImageCaptured value) imageCaptured,
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
    TResult? Function(_ImageCaptured value)? imageCaptured,
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
    TResult Function(_ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) {
    if (serverDown != null) {
      return serverDown(this);
    }
    return orElse();
  }
}

abstract class _ServerDown implements BackImageExtractionState {
  const factory _ServerDown({required final String message}) = _$ServerDownImpl;

  String get message;

  /// Create a copy of BackImageExtractionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerDownImplCopyWith<_$ServerDownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageCapturedImplCopyWith<$Res> {
  factory _$$ImageCapturedImplCopyWith(
          _$ImageCapturedImpl value, $Res Function(_$ImageCapturedImpl) then) =
      __$$ImageCapturedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List capturedImage});
}

/// @nodoc
class __$$ImageCapturedImplCopyWithImpl<$Res>
    extends _$BackImageExtractionStateCopyWithImpl<$Res, _$ImageCapturedImpl>
    implements _$$ImageCapturedImplCopyWith<$Res> {
  __$$ImageCapturedImplCopyWithImpl(
      _$ImageCapturedImpl _value, $Res Function(_$ImageCapturedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BackImageExtractionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? capturedImage = null,
  }) {
    return _then(_$ImageCapturedImpl(
      capturedImage: null == capturedImage
          ? _value.capturedImage
          : capturedImage // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$ImageCapturedImpl
    with DiagnosticableTreeMixin
    implements _ImageCaptured {
  const _$ImageCapturedImpl({required this.capturedImage});

  @override
  final Uint8List capturedImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BackImageExtractionState.imageCaptured(capturedImage: $capturedImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'BackImageExtractionState.imageCaptured'))
      ..add(DiagnosticsProperty('capturedImage', capturedImage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageCapturedImpl &&
            const DeepCollectionEquality()
                .equals(other.capturedImage, capturedImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(capturedImage));

  /// Create a copy of BackImageExtractionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageCapturedImplCopyWith<_$ImageCapturedImpl> get copyWith =>
      __$$ImageCapturedImplCopyWithImpl<_$ImageCapturedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            OcrBackEntity ocrBackEntity, Uint8List capturedImage)
        success,
    required TResult Function(String message) error,
    required TResult Function(String message) serverDown,
    required TResult Function(Uint8List capturedImage) imageCaptured,
  }) {
    return imageCaptured(capturedImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OcrBackEntity ocrBackEntity, Uint8List capturedImage)?
        success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? serverDown,
    TResult? Function(Uint8List capturedImage)? imageCaptured,
  }) {
    return imageCaptured?.call(capturedImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OcrBackEntity ocrBackEntity, Uint8List capturedImage)?
        success,
    TResult Function(String message)? error,
    TResult Function(String message)? serverDown,
    TResult Function(Uint8List capturedImage)? imageCaptured,
    required TResult orElse(),
  }) {
    if (imageCaptured != null) {
      return imageCaptured(capturedImage);
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
    required TResult Function(_ImageCaptured value) imageCaptured,
  }) {
    return imageCaptured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ServerDown value)? serverDown,
    TResult? Function(_ImageCaptured value)? imageCaptured,
  }) {
    return imageCaptured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ServerDown value)? serverDown,
    TResult Function(_ImageCaptured value)? imageCaptured,
    required TResult orElse(),
  }) {
    if (imageCaptured != null) {
      return imageCaptured(this);
    }
    return orElse();
  }
}

abstract class _ImageCaptured implements BackImageExtractionState {
  const factory _ImageCaptured({required final Uint8List capturedImage}) =
      _$ImageCapturedImpl;

  Uint8List get capturedImage;

  /// Create a copy of BackImageExtractionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageCapturedImplCopyWith<_$ImageCapturedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
