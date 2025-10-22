// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'front_image_extraction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FrontImageExtractionEvent {
  Uint8List get image => throw _privateConstructorUsedError;
  String get referenceId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List image, String referenceId) captureImage,
    required TResult Function(String referenceId, Uint8List image, String side)
        performFrontOcr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List image, String referenceId)? captureImage,
    TResult? Function(String referenceId, Uint8List image, String side)?
        performFrontOcr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List image, String referenceId)? captureImage,
    TResult Function(String referenceId, Uint8List image, String side)?
        performFrontOcr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CaptureImage value) captureImage,
    required TResult Function(_PerformFrontOcr value) performFrontOcr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CaptureImage value)? captureImage,
    TResult? Function(_PerformFrontOcr value)? performFrontOcr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CaptureImage value)? captureImage,
    TResult Function(_PerformFrontOcr value)? performFrontOcr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of FrontImageExtractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FrontImageExtractionEventCopyWith<FrontImageExtractionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrontImageExtractionEventCopyWith<$Res> {
  factory $FrontImageExtractionEventCopyWith(FrontImageExtractionEvent value,
          $Res Function(FrontImageExtractionEvent) then) =
      _$FrontImageExtractionEventCopyWithImpl<$Res, FrontImageExtractionEvent>;
  @useResult
  $Res call({Uint8List image, String referenceId});
}

/// @nodoc
class _$FrontImageExtractionEventCopyWithImpl<$Res,
        $Val extends FrontImageExtractionEvent>
    implements $FrontImageExtractionEventCopyWith<$Res> {
  _$FrontImageExtractionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FrontImageExtractionEvent
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
    implements $FrontImageExtractionEventCopyWith<$Res> {
  factory _$$CaptureImageImplCopyWith(
          _$CaptureImageImpl value, $Res Function(_$CaptureImageImpl) then) =
      __$$CaptureImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uint8List image, String referenceId});
}

/// @nodoc
class __$$CaptureImageImplCopyWithImpl<$Res>
    extends _$FrontImageExtractionEventCopyWithImpl<$Res, _$CaptureImageImpl>
    implements _$$CaptureImageImplCopyWith<$Res> {
  __$$CaptureImageImplCopyWithImpl(
      _$CaptureImageImpl _value, $Res Function(_$CaptureImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of FrontImageExtractionEvent
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
    return 'FrontImageExtractionEvent.captureImage(image: $image, referenceId: $referenceId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'FrontImageExtractionEvent.captureImage'))
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

  /// Create a copy of FrontImageExtractionEvent
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
        performFrontOcr,
  }) {
    return captureImage(image, referenceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List image, String referenceId)? captureImage,
    TResult? Function(String referenceId, Uint8List image, String side)?
        performFrontOcr,
  }) {
    return captureImage?.call(image, referenceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List image, String referenceId)? captureImage,
    TResult Function(String referenceId, Uint8List image, String side)?
        performFrontOcr,
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
    required TResult Function(_PerformFrontOcr value) performFrontOcr,
  }) {
    return captureImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CaptureImage value)? captureImage,
    TResult? Function(_PerformFrontOcr value)? performFrontOcr,
  }) {
    return captureImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CaptureImage value)? captureImage,
    TResult Function(_PerformFrontOcr value)? performFrontOcr,
    required TResult orElse(),
  }) {
    if (captureImage != null) {
      return captureImage(this);
    }
    return orElse();
  }
}

abstract class _CaptureImage implements FrontImageExtractionEvent {
  const factory _CaptureImage(
      {required final Uint8List image,
      required final String referenceId}) = _$CaptureImageImpl;

  @override
  Uint8List get image;
  @override
  String get referenceId;

  /// Create a copy of FrontImageExtractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CaptureImageImplCopyWith<_$CaptureImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PerformFrontOcrImplCopyWith<$Res>
    implements $FrontImageExtractionEventCopyWith<$Res> {
  factory _$$PerformFrontOcrImplCopyWith(_$PerformFrontOcrImpl value,
          $Res Function(_$PerformFrontOcrImpl) then) =
      __$$PerformFrontOcrImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String referenceId, Uint8List image, String side});
}

/// @nodoc
class __$$PerformFrontOcrImplCopyWithImpl<$Res>
    extends _$FrontImageExtractionEventCopyWithImpl<$Res, _$PerformFrontOcrImpl>
    implements _$$PerformFrontOcrImplCopyWith<$Res> {
  __$$PerformFrontOcrImplCopyWithImpl(
      _$PerformFrontOcrImpl _value, $Res Function(_$PerformFrontOcrImpl) _then)
      : super(_value, _then);

  /// Create a copy of FrontImageExtractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceId = null,
    Object? image = null,
    Object? side = null,
  }) {
    return _then(_$PerformFrontOcrImpl(
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

class _$PerformFrontOcrImpl
    with DiagnosticableTreeMixin
    implements _PerformFrontOcr {
  const _$PerformFrontOcrImpl(
      {required this.referenceId, required this.image, required this.side});

  @override
  final String referenceId;
  @override
  final Uint8List image;
  @override
  final String side;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FrontImageExtractionEvent.performFrontOcr(referenceId: $referenceId, image: $image, side: $side)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FrontImageExtractionEvent.performFrontOcr'))
      ..add(DiagnosticsProperty('referenceId', referenceId))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('side', side));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformFrontOcrImpl &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.side, side) || other.side == side));
  }

  @override
  int get hashCode => Object.hash(runtimeType, referenceId,
      const DeepCollectionEquality().hash(image), side);

  /// Create a copy of FrontImageExtractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformFrontOcrImplCopyWith<_$PerformFrontOcrImpl> get copyWith =>
      __$$PerformFrontOcrImplCopyWithImpl<_$PerformFrontOcrImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uint8List image, String referenceId) captureImage,
    required TResult Function(String referenceId, Uint8List image, String side)
        performFrontOcr,
  }) {
    return performFrontOcr(referenceId, image, side);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List image, String referenceId)? captureImage,
    TResult? Function(String referenceId, Uint8List image, String side)?
        performFrontOcr,
  }) {
    return performFrontOcr?.call(referenceId, image, side);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List image, String referenceId)? captureImage,
    TResult Function(String referenceId, Uint8List image, String side)?
        performFrontOcr,
    required TResult orElse(),
  }) {
    if (performFrontOcr != null) {
      return performFrontOcr(referenceId, image, side);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CaptureImage value) captureImage,
    required TResult Function(_PerformFrontOcr value) performFrontOcr,
  }) {
    return performFrontOcr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CaptureImage value)? captureImage,
    TResult? Function(_PerformFrontOcr value)? performFrontOcr,
  }) {
    return performFrontOcr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CaptureImage value)? captureImage,
    TResult Function(_PerformFrontOcr value)? performFrontOcr,
    required TResult orElse(),
  }) {
    if (performFrontOcr != null) {
      return performFrontOcr(this);
    }
    return orElse();
  }
}

abstract class _PerformFrontOcr implements FrontImageExtractionEvent {
  const factory _PerformFrontOcr(
      {required final String referenceId,
      required final Uint8List image,
      required final String side}) = _$PerformFrontOcrImpl;

  @override
  String get referenceId;
  @override
  Uint8List get image;
  String get side;

  /// Create a copy of FrontImageExtractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PerformFrontOcrImplCopyWith<_$PerformFrontOcrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FrontImageExtractionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)
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
    TResult? Function(OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)?
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
    TResult Function(OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)?
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
abstract class $FrontImageExtractionStateCopyWith<$Res> {
  factory $FrontImageExtractionStateCopyWith(FrontImageExtractionState value,
          $Res Function(FrontImageExtractionState) then) =
      _$FrontImageExtractionStateCopyWithImpl<$Res, FrontImageExtractionState>;
}

/// @nodoc
class _$FrontImageExtractionStateCopyWithImpl<$Res,
        $Val extends FrontImageExtractionState>
    implements $FrontImageExtractionStateCopyWith<$Res> {
  _$FrontImageExtractionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FrontImageExtractionState
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
    extends _$FrontImageExtractionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FrontImageExtractionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FrontImageExtractionState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FrontImageExtractionState.initial'));
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
            OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)
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
    TResult? Function(OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)?
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
    TResult Function(OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)?
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

abstract class _Initial implements FrontImageExtractionState {
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
    extends _$FrontImageExtractionStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FrontImageExtractionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FrontImageExtractionState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FrontImageExtractionState.loading'));
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
            OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)
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
    TResult? Function(OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)?
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
    TResult Function(OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)?
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

abstract class _Loading implements FrontImageExtractionState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OcrFrontEntity ocrFrontEntity, Uint8List capturedImage});

  $OcrFrontEntityCopyWith<$Res> get ocrFrontEntity;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$FrontImageExtractionStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of FrontImageExtractionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ocrFrontEntity = null,
    Object? capturedImage = null,
  }) {
    return _then(_$SuccessImpl(
      ocrFrontEntity: null == ocrFrontEntity
          ? _value.ocrFrontEntity
          : ocrFrontEntity // ignore: cast_nullable_to_non_nullable
              as OcrFrontEntity,
      capturedImage: null == capturedImage
          ? _value.capturedImage
          : capturedImage // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }

  /// Create a copy of FrontImageExtractionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OcrFrontEntityCopyWith<$Res> get ocrFrontEntity {
    return $OcrFrontEntityCopyWith<$Res>(_value.ocrFrontEntity, (value) {
      return _then(_value.copyWith(ocrFrontEntity: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl with DiagnosticableTreeMixin implements _Success {
  const _$SuccessImpl(
      {required this.ocrFrontEntity, required this.capturedImage});

  @override
  final OcrFrontEntity ocrFrontEntity;
  @override
  final Uint8List capturedImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FrontImageExtractionState.success(ocrFrontEntity: $ocrFrontEntity, capturedImage: $capturedImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FrontImageExtractionState.success'))
      ..add(DiagnosticsProperty('ocrFrontEntity', ocrFrontEntity))
      ..add(DiagnosticsProperty('capturedImage', capturedImage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.ocrFrontEntity, ocrFrontEntity) ||
                other.ocrFrontEntity == ocrFrontEntity) &&
            const DeepCollectionEquality()
                .equals(other.capturedImage, capturedImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ocrFrontEntity,
      const DeepCollectionEquality().hash(capturedImage));

  /// Create a copy of FrontImageExtractionState
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
            OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)
        success,
    required TResult Function(String message) error,
    required TResult Function(String message) serverDown,
    required TResult Function(Uint8List capturedImage) imageCaptured,
  }) {
    return success(ocrFrontEntity, capturedImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)?
        success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? serverDown,
    TResult? Function(Uint8List capturedImage)? imageCaptured,
  }) {
    return success?.call(ocrFrontEntity, capturedImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)?
        success,
    TResult Function(String message)? error,
    TResult Function(String message)? serverDown,
    TResult Function(Uint8List capturedImage)? imageCaptured,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(ocrFrontEntity, capturedImage);
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

abstract class _Success implements FrontImageExtractionState {
  const factory _Success(
      {required final OcrFrontEntity ocrFrontEntity,
      required final Uint8List capturedImage}) = _$SuccessImpl;

  OcrFrontEntity get ocrFrontEntity;
  Uint8List get capturedImage;

  /// Create a copy of FrontImageExtractionState
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
    extends _$FrontImageExtractionStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of FrontImageExtractionState
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
    return 'FrontImageExtractionState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FrontImageExtractionState.error'))
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

  /// Create a copy of FrontImageExtractionState
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
            OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)
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
    TResult? Function(OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)?
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
    TResult Function(OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)?
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

abstract class _Error implements FrontImageExtractionState {
  const factory _Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of FrontImageExtractionState
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
    extends _$FrontImageExtractionStateCopyWithImpl<$Res, _$ServerDownImpl>
    implements _$$ServerDownImplCopyWith<$Res> {
  __$$ServerDownImplCopyWithImpl(
      _$ServerDownImpl _value, $Res Function(_$ServerDownImpl) _then)
      : super(_value, _then);

  /// Create a copy of FrontImageExtractionState
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
    return 'FrontImageExtractionState.serverDown(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FrontImageExtractionState.serverDown'))
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

  /// Create a copy of FrontImageExtractionState
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
            OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)
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
    TResult? Function(OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)?
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
    TResult Function(OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)?
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

abstract class _ServerDown implements FrontImageExtractionState {
  const factory _ServerDown({required final String message}) = _$ServerDownImpl;

  String get message;

  /// Create a copy of FrontImageExtractionState
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
    extends _$FrontImageExtractionStateCopyWithImpl<$Res, _$ImageCapturedImpl>
    implements _$$ImageCapturedImplCopyWith<$Res> {
  __$$ImageCapturedImplCopyWithImpl(
      _$ImageCapturedImpl _value, $Res Function(_$ImageCapturedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FrontImageExtractionState
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
    return 'FrontImageExtractionState.imageCaptured(capturedImage: $capturedImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FrontImageExtractionState.imageCaptured'))
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

  /// Create a copy of FrontImageExtractionState
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
            OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)
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
    TResult? Function(OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)?
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
    TResult Function(OcrFrontEntity ocrFrontEntity, Uint8List capturedImage)?
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

abstract class _ImageCaptured implements FrontImageExtractionState {
  const factory _ImageCaptured({required final Uint8List capturedImage}) =
      _$ImageCapturedImpl;

  Uint8List get capturedImage;

  /// Create a copy of FrontImageExtractionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageCapturedImplCopyWith<_$ImageCapturedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
