// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'liveliness_detection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LivelinessDetectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeCamera,
    required TResult Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)
        updateFaceDetection,
    required TResult Function() startCountdown,
    required TResult Function(int countdown) updateCountdown,
    required TResult Function() captureSelfie,
    required TResult Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)
        matchFaces,
    required TResult Function(int width, int height) updateCameraResolution,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeCamera,
    TResult? Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)?
        updateFaceDetection,
    TResult? Function()? startCountdown,
    TResult? Function(int countdown)? updateCountdown,
    TResult? Function()? captureSelfie,
    TResult? Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)?
        matchFaces,
    TResult? Function(int width, int height)? updateCameraResolution,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeCamera,
    TResult Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)?
        updateFaceDetection,
    TResult Function()? startCountdown,
    TResult Function(int countdown)? updateCountdown,
    TResult Function()? captureSelfie,
    TResult Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)?
        matchFaces,
    TResult Function(int width, int height)? updateCameraResolution,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeCamera value) initializeCamera,
    required TResult Function(UpdateFaceDetection value) updateFaceDetection,
    required TResult Function(StartCountdown value) startCountdown,
    required TResult Function(UpdateCountdown value) updateCountdown,
    required TResult Function(CaptureSelfie value) captureSelfie,
    required TResult Function(MatchFacesEvent value) matchFaces,
    required TResult Function(UpdateCameraResolution value)
        updateCameraResolution,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeCamera value)? initializeCamera,
    TResult? Function(UpdateFaceDetection value)? updateFaceDetection,
    TResult? Function(StartCountdown value)? startCountdown,
    TResult? Function(UpdateCountdown value)? updateCountdown,
    TResult? Function(CaptureSelfie value)? captureSelfie,
    TResult? Function(MatchFacesEvent value)? matchFaces,
    TResult? Function(UpdateCameraResolution value)? updateCameraResolution,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeCamera value)? initializeCamera,
    TResult Function(UpdateFaceDetection value)? updateFaceDetection,
    TResult Function(StartCountdown value)? startCountdown,
    TResult Function(UpdateCountdown value)? updateCountdown,
    TResult Function(CaptureSelfie value)? captureSelfie,
    TResult Function(MatchFacesEvent value)? matchFaces,
    TResult Function(UpdateCameraResolution value)? updateCameraResolution,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LivelinessDetectionEventCopyWith<$Res> {
  factory $LivelinessDetectionEventCopyWith(LivelinessDetectionEvent value,
          $Res Function(LivelinessDetectionEvent) then) =
      _$LivelinessDetectionEventCopyWithImpl<$Res, LivelinessDetectionEvent>;
}

/// @nodoc
class _$LivelinessDetectionEventCopyWithImpl<$Res,
        $Val extends LivelinessDetectionEvent>
    implements $LivelinessDetectionEventCopyWith<$Res> {
  _$LivelinessDetectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LivelinessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeCameraImplCopyWith<$Res> {
  factory _$$InitializeCameraImplCopyWith(_$InitializeCameraImpl value,
          $Res Function(_$InitializeCameraImpl) then) =
      __$$InitializeCameraImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeCameraImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionEventCopyWithImpl<$Res, _$InitializeCameraImpl>
    implements _$$InitializeCameraImplCopyWith<$Res> {
  __$$InitializeCameraImplCopyWithImpl(_$InitializeCameraImpl _value,
      $Res Function(_$InitializeCameraImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeCameraImpl implements InitializeCamera {
  const _$InitializeCameraImpl();

  @override
  String toString() {
    return 'LivelinessDetectionEvent.initializeCamera()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeCameraImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeCamera,
    required TResult Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)
        updateFaceDetection,
    required TResult Function() startCountdown,
    required TResult Function(int countdown) updateCountdown,
    required TResult Function() captureSelfie,
    required TResult Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)
        matchFaces,
    required TResult Function(int width, int height) updateCameraResolution,
  }) {
    return initializeCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeCamera,
    TResult? Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)?
        updateFaceDetection,
    TResult? Function()? startCountdown,
    TResult? Function(int countdown)? updateCountdown,
    TResult? Function()? captureSelfie,
    TResult? Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)?
        matchFaces,
    TResult? Function(int width, int height)? updateCameraResolution,
  }) {
    return initializeCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeCamera,
    TResult Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)?
        updateFaceDetection,
    TResult Function()? startCountdown,
    TResult Function(int countdown)? updateCountdown,
    TResult Function()? captureSelfie,
    TResult Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)?
        matchFaces,
    TResult Function(int width, int height)? updateCameraResolution,
    required TResult orElse(),
  }) {
    if (initializeCamera != null) {
      return initializeCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeCamera value) initializeCamera,
    required TResult Function(UpdateFaceDetection value) updateFaceDetection,
    required TResult Function(StartCountdown value) startCountdown,
    required TResult Function(UpdateCountdown value) updateCountdown,
    required TResult Function(CaptureSelfie value) captureSelfie,
    required TResult Function(MatchFacesEvent value) matchFaces,
    required TResult Function(UpdateCameraResolution value)
        updateCameraResolution,
  }) {
    return initializeCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeCamera value)? initializeCamera,
    TResult? Function(UpdateFaceDetection value)? updateFaceDetection,
    TResult? Function(StartCountdown value)? startCountdown,
    TResult? Function(UpdateCountdown value)? updateCountdown,
    TResult? Function(CaptureSelfie value)? captureSelfie,
    TResult? Function(MatchFacesEvent value)? matchFaces,
    TResult? Function(UpdateCameraResolution value)? updateCameraResolution,
  }) {
    return initializeCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeCamera value)? initializeCamera,
    TResult Function(UpdateFaceDetection value)? updateFaceDetection,
    TResult Function(StartCountdown value)? startCountdown,
    TResult Function(UpdateCountdown value)? updateCountdown,
    TResult Function(CaptureSelfie value)? captureSelfie,
    TResult Function(MatchFacesEvent value)? matchFaces,
    TResult Function(UpdateCameraResolution value)? updateCameraResolution,
    required TResult orElse(),
  }) {
    if (initializeCamera != null) {
      return initializeCamera(this);
    }
    return orElse();
  }
}

abstract class InitializeCamera implements LivelinessDetectionEvent {
  const factory InitializeCamera() = _$InitializeCameraImpl;
}

/// @nodoc
abstract class _$$UpdateFaceDetectionImplCopyWith<$Res> {
  factory _$$UpdateFaceDetectionImplCopyWith(_$UpdateFaceDetectionImpl value,
          $Res Function(_$UpdateFaceDetectionImpl) then) =
      __$$UpdateFaceDetectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFaceDetected, bool isBlinking, double? headEulerAngleY});
}

/// @nodoc
class __$$UpdateFaceDetectionImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionEventCopyWithImpl<$Res,
        _$UpdateFaceDetectionImpl>
    implements _$$UpdateFaceDetectionImplCopyWith<$Res> {
  __$$UpdateFaceDetectionImplCopyWithImpl(_$UpdateFaceDetectionImpl _value,
      $Res Function(_$UpdateFaceDetectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFaceDetected = null,
    Object? isBlinking = null,
    Object? headEulerAngleY = freezed,
  }) {
    return _then(_$UpdateFaceDetectionImpl(
      isFaceDetected: null == isFaceDetected
          ? _value.isFaceDetected
          : isFaceDetected // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlinking: null == isBlinking
          ? _value.isBlinking
          : isBlinking // ignore: cast_nullable_to_non_nullable
              as bool,
      headEulerAngleY: freezed == headEulerAngleY
          ? _value.headEulerAngleY
          : headEulerAngleY // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$UpdateFaceDetectionImpl implements UpdateFaceDetection {
  const _$UpdateFaceDetectionImpl(
      {required this.isFaceDetected,
      required this.isBlinking,
      this.headEulerAngleY});

  @override
  final bool isFaceDetected;
  @override
  final bool isBlinking;
  @override
  final double? headEulerAngleY;

  @override
  String toString() {
    return 'LivelinessDetectionEvent.updateFaceDetection(isFaceDetected: $isFaceDetected, isBlinking: $isBlinking, headEulerAngleY: $headEulerAngleY)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFaceDetectionImpl &&
            (identical(other.isFaceDetected, isFaceDetected) ||
                other.isFaceDetected == isFaceDetected) &&
            (identical(other.isBlinking, isBlinking) ||
                other.isBlinking == isBlinking) &&
            (identical(other.headEulerAngleY, headEulerAngleY) ||
                other.headEulerAngleY == headEulerAngleY));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isFaceDetected, isBlinking, headEulerAngleY);

  /// Create a copy of LivelinessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFaceDetectionImplCopyWith<_$UpdateFaceDetectionImpl> get copyWith =>
      __$$UpdateFaceDetectionImplCopyWithImpl<_$UpdateFaceDetectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeCamera,
    required TResult Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)
        updateFaceDetection,
    required TResult Function() startCountdown,
    required TResult Function(int countdown) updateCountdown,
    required TResult Function() captureSelfie,
    required TResult Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)
        matchFaces,
    required TResult Function(int width, int height) updateCameraResolution,
  }) {
    return updateFaceDetection(isFaceDetected, isBlinking, headEulerAngleY);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeCamera,
    TResult? Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)?
        updateFaceDetection,
    TResult? Function()? startCountdown,
    TResult? Function(int countdown)? updateCountdown,
    TResult? Function()? captureSelfie,
    TResult? Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)?
        matchFaces,
    TResult? Function(int width, int height)? updateCameraResolution,
  }) {
    return updateFaceDetection?.call(
        isFaceDetected, isBlinking, headEulerAngleY);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeCamera,
    TResult Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)?
        updateFaceDetection,
    TResult Function()? startCountdown,
    TResult Function(int countdown)? updateCountdown,
    TResult Function()? captureSelfie,
    TResult Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)?
        matchFaces,
    TResult Function(int width, int height)? updateCameraResolution,
    required TResult orElse(),
  }) {
    if (updateFaceDetection != null) {
      return updateFaceDetection(isFaceDetected, isBlinking, headEulerAngleY);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeCamera value) initializeCamera,
    required TResult Function(UpdateFaceDetection value) updateFaceDetection,
    required TResult Function(StartCountdown value) startCountdown,
    required TResult Function(UpdateCountdown value) updateCountdown,
    required TResult Function(CaptureSelfie value) captureSelfie,
    required TResult Function(MatchFacesEvent value) matchFaces,
    required TResult Function(UpdateCameraResolution value)
        updateCameraResolution,
  }) {
    return updateFaceDetection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeCamera value)? initializeCamera,
    TResult? Function(UpdateFaceDetection value)? updateFaceDetection,
    TResult? Function(StartCountdown value)? startCountdown,
    TResult? Function(UpdateCountdown value)? updateCountdown,
    TResult? Function(CaptureSelfie value)? captureSelfie,
    TResult? Function(MatchFacesEvent value)? matchFaces,
    TResult? Function(UpdateCameraResolution value)? updateCameraResolution,
  }) {
    return updateFaceDetection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeCamera value)? initializeCamera,
    TResult Function(UpdateFaceDetection value)? updateFaceDetection,
    TResult Function(StartCountdown value)? startCountdown,
    TResult Function(UpdateCountdown value)? updateCountdown,
    TResult Function(CaptureSelfie value)? captureSelfie,
    TResult Function(MatchFacesEvent value)? matchFaces,
    TResult Function(UpdateCameraResolution value)? updateCameraResolution,
    required TResult orElse(),
  }) {
    if (updateFaceDetection != null) {
      return updateFaceDetection(this);
    }
    return orElse();
  }
}

abstract class UpdateFaceDetection implements LivelinessDetectionEvent {
  const factory UpdateFaceDetection(
      {required final bool isFaceDetected,
      required final bool isBlinking,
      final double? headEulerAngleY}) = _$UpdateFaceDetectionImpl;

  bool get isFaceDetected;
  bool get isBlinking;
  double? get headEulerAngleY;

  /// Create a copy of LivelinessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFaceDetectionImplCopyWith<_$UpdateFaceDetectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartCountdownImplCopyWith<$Res> {
  factory _$$StartCountdownImplCopyWith(_$StartCountdownImpl value,
          $Res Function(_$StartCountdownImpl) then) =
      __$$StartCountdownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartCountdownImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionEventCopyWithImpl<$Res, _$StartCountdownImpl>
    implements _$$StartCountdownImplCopyWith<$Res> {
  __$$StartCountdownImplCopyWithImpl(
      _$StartCountdownImpl _value, $Res Function(_$StartCountdownImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartCountdownImpl implements StartCountdown {
  const _$StartCountdownImpl();

  @override
  String toString() {
    return 'LivelinessDetectionEvent.startCountdown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartCountdownImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeCamera,
    required TResult Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)
        updateFaceDetection,
    required TResult Function() startCountdown,
    required TResult Function(int countdown) updateCountdown,
    required TResult Function() captureSelfie,
    required TResult Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)
        matchFaces,
    required TResult Function(int width, int height) updateCameraResolution,
  }) {
    return startCountdown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeCamera,
    TResult? Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)?
        updateFaceDetection,
    TResult? Function()? startCountdown,
    TResult? Function(int countdown)? updateCountdown,
    TResult? Function()? captureSelfie,
    TResult? Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)?
        matchFaces,
    TResult? Function(int width, int height)? updateCameraResolution,
  }) {
    return startCountdown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeCamera,
    TResult Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)?
        updateFaceDetection,
    TResult Function()? startCountdown,
    TResult Function(int countdown)? updateCountdown,
    TResult Function()? captureSelfie,
    TResult Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)?
        matchFaces,
    TResult Function(int width, int height)? updateCameraResolution,
    required TResult orElse(),
  }) {
    if (startCountdown != null) {
      return startCountdown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeCamera value) initializeCamera,
    required TResult Function(UpdateFaceDetection value) updateFaceDetection,
    required TResult Function(StartCountdown value) startCountdown,
    required TResult Function(UpdateCountdown value) updateCountdown,
    required TResult Function(CaptureSelfie value) captureSelfie,
    required TResult Function(MatchFacesEvent value) matchFaces,
    required TResult Function(UpdateCameraResolution value)
        updateCameraResolution,
  }) {
    return startCountdown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeCamera value)? initializeCamera,
    TResult? Function(UpdateFaceDetection value)? updateFaceDetection,
    TResult? Function(StartCountdown value)? startCountdown,
    TResult? Function(UpdateCountdown value)? updateCountdown,
    TResult? Function(CaptureSelfie value)? captureSelfie,
    TResult? Function(MatchFacesEvent value)? matchFaces,
    TResult? Function(UpdateCameraResolution value)? updateCameraResolution,
  }) {
    return startCountdown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeCamera value)? initializeCamera,
    TResult Function(UpdateFaceDetection value)? updateFaceDetection,
    TResult Function(StartCountdown value)? startCountdown,
    TResult Function(UpdateCountdown value)? updateCountdown,
    TResult Function(CaptureSelfie value)? captureSelfie,
    TResult Function(MatchFacesEvent value)? matchFaces,
    TResult Function(UpdateCameraResolution value)? updateCameraResolution,
    required TResult orElse(),
  }) {
    if (startCountdown != null) {
      return startCountdown(this);
    }
    return orElse();
  }
}

abstract class StartCountdown implements LivelinessDetectionEvent {
  const factory StartCountdown() = _$StartCountdownImpl;
}

/// @nodoc
abstract class _$$UpdateCountdownImplCopyWith<$Res> {
  factory _$$UpdateCountdownImplCopyWith(_$UpdateCountdownImpl value,
          $Res Function(_$UpdateCountdownImpl) then) =
      __$$UpdateCountdownImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int countdown});
}

/// @nodoc
class __$$UpdateCountdownImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionEventCopyWithImpl<$Res, _$UpdateCountdownImpl>
    implements _$$UpdateCountdownImplCopyWith<$Res> {
  __$$UpdateCountdownImplCopyWithImpl(
      _$UpdateCountdownImpl _value, $Res Function(_$UpdateCountdownImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countdown = null,
  }) {
    return _then(_$UpdateCountdownImpl(
      countdown: null == countdown
          ? _value.countdown
          : countdown // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCountdownImpl implements UpdateCountdown {
  const _$UpdateCountdownImpl({required this.countdown});

  @override
  final int countdown;

  @override
  String toString() {
    return 'LivelinessDetectionEvent.updateCountdown(countdown: $countdown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCountdownImpl &&
            (identical(other.countdown, countdown) ||
                other.countdown == countdown));
  }

  @override
  int get hashCode => Object.hash(runtimeType, countdown);

  /// Create a copy of LivelinessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCountdownImplCopyWith<_$UpdateCountdownImpl> get copyWith =>
      __$$UpdateCountdownImplCopyWithImpl<_$UpdateCountdownImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeCamera,
    required TResult Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)
        updateFaceDetection,
    required TResult Function() startCountdown,
    required TResult Function(int countdown) updateCountdown,
    required TResult Function() captureSelfie,
    required TResult Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)
        matchFaces,
    required TResult Function(int width, int height) updateCameraResolution,
  }) {
    return updateCountdown(countdown);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeCamera,
    TResult? Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)?
        updateFaceDetection,
    TResult? Function()? startCountdown,
    TResult? Function(int countdown)? updateCountdown,
    TResult? Function()? captureSelfie,
    TResult? Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)?
        matchFaces,
    TResult? Function(int width, int height)? updateCameraResolution,
  }) {
    return updateCountdown?.call(countdown);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeCamera,
    TResult Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)?
        updateFaceDetection,
    TResult Function()? startCountdown,
    TResult Function(int countdown)? updateCountdown,
    TResult Function()? captureSelfie,
    TResult Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)?
        matchFaces,
    TResult Function(int width, int height)? updateCameraResolution,
    required TResult orElse(),
  }) {
    if (updateCountdown != null) {
      return updateCountdown(countdown);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeCamera value) initializeCamera,
    required TResult Function(UpdateFaceDetection value) updateFaceDetection,
    required TResult Function(StartCountdown value) startCountdown,
    required TResult Function(UpdateCountdown value) updateCountdown,
    required TResult Function(CaptureSelfie value) captureSelfie,
    required TResult Function(MatchFacesEvent value) matchFaces,
    required TResult Function(UpdateCameraResolution value)
        updateCameraResolution,
  }) {
    return updateCountdown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeCamera value)? initializeCamera,
    TResult? Function(UpdateFaceDetection value)? updateFaceDetection,
    TResult? Function(StartCountdown value)? startCountdown,
    TResult? Function(UpdateCountdown value)? updateCountdown,
    TResult? Function(CaptureSelfie value)? captureSelfie,
    TResult? Function(MatchFacesEvent value)? matchFaces,
    TResult? Function(UpdateCameraResolution value)? updateCameraResolution,
  }) {
    return updateCountdown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeCamera value)? initializeCamera,
    TResult Function(UpdateFaceDetection value)? updateFaceDetection,
    TResult Function(StartCountdown value)? startCountdown,
    TResult Function(UpdateCountdown value)? updateCountdown,
    TResult Function(CaptureSelfie value)? captureSelfie,
    TResult Function(MatchFacesEvent value)? matchFaces,
    TResult Function(UpdateCameraResolution value)? updateCameraResolution,
    required TResult orElse(),
  }) {
    if (updateCountdown != null) {
      return updateCountdown(this);
    }
    return orElse();
  }
}

abstract class UpdateCountdown implements LivelinessDetectionEvent {
  const factory UpdateCountdown({required final int countdown}) =
      _$UpdateCountdownImpl;

  int get countdown;

  /// Create a copy of LivelinessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCountdownImplCopyWith<_$UpdateCountdownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CaptureSelfieImplCopyWith<$Res> {
  factory _$$CaptureSelfieImplCopyWith(
          _$CaptureSelfieImpl value, $Res Function(_$CaptureSelfieImpl) then) =
      __$$CaptureSelfieImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CaptureSelfieImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionEventCopyWithImpl<$Res, _$CaptureSelfieImpl>
    implements _$$CaptureSelfieImplCopyWith<$Res> {
  __$$CaptureSelfieImplCopyWithImpl(
      _$CaptureSelfieImpl _value, $Res Function(_$CaptureSelfieImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CaptureSelfieImpl implements CaptureSelfie {
  const _$CaptureSelfieImpl();

  @override
  String toString() {
    return 'LivelinessDetectionEvent.captureSelfie()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CaptureSelfieImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeCamera,
    required TResult Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)
        updateFaceDetection,
    required TResult Function() startCountdown,
    required TResult Function(int countdown) updateCountdown,
    required TResult Function() captureSelfie,
    required TResult Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)
        matchFaces,
    required TResult Function(int width, int height) updateCameraResolution,
  }) {
    return captureSelfie();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeCamera,
    TResult? Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)?
        updateFaceDetection,
    TResult? Function()? startCountdown,
    TResult? Function(int countdown)? updateCountdown,
    TResult? Function()? captureSelfie,
    TResult? Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)?
        matchFaces,
    TResult? Function(int width, int height)? updateCameraResolution,
  }) {
    return captureSelfie?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeCamera,
    TResult Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)?
        updateFaceDetection,
    TResult Function()? startCountdown,
    TResult Function(int countdown)? updateCountdown,
    TResult Function()? captureSelfie,
    TResult Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)?
        matchFaces,
    TResult Function(int width, int height)? updateCameraResolution,
    required TResult orElse(),
  }) {
    if (captureSelfie != null) {
      return captureSelfie();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeCamera value) initializeCamera,
    required TResult Function(UpdateFaceDetection value) updateFaceDetection,
    required TResult Function(StartCountdown value) startCountdown,
    required TResult Function(UpdateCountdown value) updateCountdown,
    required TResult Function(CaptureSelfie value) captureSelfie,
    required TResult Function(MatchFacesEvent value) matchFaces,
    required TResult Function(UpdateCameraResolution value)
        updateCameraResolution,
  }) {
    return captureSelfie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeCamera value)? initializeCamera,
    TResult? Function(UpdateFaceDetection value)? updateFaceDetection,
    TResult? Function(StartCountdown value)? startCountdown,
    TResult? Function(UpdateCountdown value)? updateCountdown,
    TResult? Function(CaptureSelfie value)? captureSelfie,
    TResult? Function(MatchFacesEvent value)? matchFaces,
    TResult? Function(UpdateCameraResolution value)? updateCameraResolution,
  }) {
    return captureSelfie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeCamera value)? initializeCamera,
    TResult Function(UpdateFaceDetection value)? updateFaceDetection,
    TResult Function(StartCountdown value)? startCountdown,
    TResult Function(UpdateCountdown value)? updateCountdown,
    TResult Function(CaptureSelfie value)? captureSelfie,
    TResult Function(MatchFacesEvent value)? matchFaces,
    TResult Function(UpdateCameraResolution value)? updateCameraResolution,
    required TResult orElse(),
  }) {
    if (captureSelfie != null) {
      return captureSelfie(this);
    }
    return orElse();
  }
}

abstract class CaptureSelfie implements LivelinessDetectionEvent {
  const factory CaptureSelfie() = _$CaptureSelfieImpl;
}

/// @nodoc
abstract class _$$MatchFacesEventImplCopyWith<$Res> {
  factory _$$MatchFacesEventImplCopyWith(_$MatchFacesEventImpl value,
          $Res Function(_$MatchFacesEventImpl) then) =
      __$$MatchFacesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Uint8List candidateImage, String referenceImageUrl, String refNum});
}

/// @nodoc
class __$$MatchFacesEventImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionEventCopyWithImpl<$Res, _$MatchFacesEventImpl>
    implements _$$MatchFacesEventImplCopyWith<$Res> {
  __$$MatchFacesEventImplCopyWithImpl(
      _$MatchFacesEventImpl _value, $Res Function(_$MatchFacesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? candidateImage = null,
    Object? referenceImageUrl = null,
    Object? refNum = null,
  }) {
    return _then(_$MatchFacesEventImpl(
      candidateImage: null == candidateImage
          ? _value.candidateImage
          : candidateImage // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      referenceImageUrl: null == referenceImageUrl
          ? _value.referenceImageUrl
          : referenceImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      refNum: null == refNum
          ? _value.refNum
          : refNum // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MatchFacesEventImpl implements MatchFacesEvent {
  const _$MatchFacesEventImpl(
      {required this.candidateImage,
      required this.referenceImageUrl,
      required this.refNum});

  @override
  final Uint8List candidateImage;
  @override
  final String referenceImageUrl;
  @override
  final String refNum;

  @override
  String toString() {
    return 'LivelinessDetectionEvent.matchFaces(candidateImage: $candidateImage, referenceImageUrl: $referenceImageUrl, refNum: $refNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchFacesEventImpl &&
            const DeepCollectionEquality()
                .equals(other.candidateImage, candidateImage) &&
            (identical(other.referenceImageUrl, referenceImageUrl) ||
                other.referenceImageUrl == referenceImageUrl) &&
            (identical(other.refNum, refNum) || other.refNum == refNum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(candidateImage),
      referenceImageUrl,
      refNum);

  /// Create a copy of LivelinessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchFacesEventImplCopyWith<_$MatchFacesEventImpl> get copyWith =>
      __$$MatchFacesEventImplCopyWithImpl<_$MatchFacesEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeCamera,
    required TResult Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)
        updateFaceDetection,
    required TResult Function() startCountdown,
    required TResult Function(int countdown) updateCountdown,
    required TResult Function() captureSelfie,
    required TResult Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)
        matchFaces,
    required TResult Function(int width, int height) updateCameraResolution,
  }) {
    return matchFaces(candidateImage, referenceImageUrl, refNum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeCamera,
    TResult? Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)?
        updateFaceDetection,
    TResult? Function()? startCountdown,
    TResult? Function(int countdown)? updateCountdown,
    TResult? Function()? captureSelfie,
    TResult? Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)?
        matchFaces,
    TResult? Function(int width, int height)? updateCameraResolution,
  }) {
    return matchFaces?.call(candidateImage, referenceImageUrl, refNum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeCamera,
    TResult Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)?
        updateFaceDetection,
    TResult Function()? startCountdown,
    TResult Function(int countdown)? updateCountdown,
    TResult Function()? captureSelfie,
    TResult Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)?
        matchFaces,
    TResult Function(int width, int height)? updateCameraResolution,
    required TResult orElse(),
  }) {
    if (matchFaces != null) {
      return matchFaces(candidateImage, referenceImageUrl, refNum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeCamera value) initializeCamera,
    required TResult Function(UpdateFaceDetection value) updateFaceDetection,
    required TResult Function(StartCountdown value) startCountdown,
    required TResult Function(UpdateCountdown value) updateCountdown,
    required TResult Function(CaptureSelfie value) captureSelfie,
    required TResult Function(MatchFacesEvent value) matchFaces,
    required TResult Function(UpdateCameraResolution value)
        updateCameraResolution,
  }) {
    return matchFaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeCamera value)? initializeCamera,
    TResult? Function(UpdateFaceDetection value)? updateFaceDetection,
    TResult? Function(StartCountdown value)? startCountdown,
    TResult? Function(UpdateCountdown value)? updateCountdown,
    TResult? Function(CaptureSelfie value)? captureSelfie,
    TResult? Function(MatchFacesEvent value)? matchFaces,
    TResult? Function(UpdateCameraResolution value)? updateCameraResolution,
  }) {
    return matchFaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeCamera value)? initializeCamera,
    TResult Function(UpdateFaceDetection value)? updateFaceDetection,
    TResult Function(StartCountdown value)? startCountdown,
    TResult Function(UpdateCountdown value)? updateCountdown,
    TResult Function(CaptureSelfie value)? captureSelfie,
    TResult Function(MatchFacesEvent value)? matchFaces,
    TResult Function(UpdateCameraResolution value)? updateCameraResolution,
    required TResult orElse(),
  }) {
    if (matchFaces != null) {
      return matchFaces(this);
    }
    return orElse();
  }
}

abstract class MatchFacesEvent implements LivelinessDetectionEvent {
  const factory MatchFacesEvent(
      {required final Uint8List candidateImage,
      required final String referenceImageUrl,
      required final String refNum}) = _$MatchFacesEventImpl;

  Uint8List get candidateImage;
  String get referenceImageUrl;
  String get refNum;

  /// Create a copy of LivelinessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchFacesEventImplCopyWith<_$MatchFacesEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCameraResolutionImplCopyWith<$Res> {
  factory _$$UpdateCameraResolutionImplCopyWith(
          _$UpdateCameraResolutionImpl value,
          $Res Function(_$UpdateCameraResolutionImpl) then) =
      __$$UpdateCameraResolutionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int width, int height});
}

/// @nodoc
class __$$UpdateCameraResolutionImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionEventCopyWithImpl<$Res,
        _$UpdateCameraResolutionImpl>
    implements _$$UpdateCameraResolutionImplCopyWith<$Res> {
  __$$UpdateCameraResolutionImplCopyWithImpl(
      _$UpdateCameraResolutionImpl _value,
      $Res Function(_$UpdateCameraResolutionImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$UpdateCameraResolutionImpl(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCameraResolutionImpl implements UpdateCameraResolution {
  const _$UpdateCameraResolutionImpl(
      {required this.width, required this.height});

  @override
  final int width;
  @override
  final int height;

  @override
  String toString() {
    return 'LivelinessDetectionEvent.updateCameraResolution(width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCameraResolutionImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  /// Create a copy of LivelinessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCameraResolutionImplCopyWith<_$UpdateCameraResolutionImpl>
      get copyWith => __$$UpdateCameraResolutionImplCopyWithImpl<
          _$UpdateCameraResolutionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeCamera,
    required TResult Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)
        updateFaceDetection,
    required TResult Function() startCountdown,
    required TResult Function(int countdown) updateCountdown,
    required TResult Function() captureSelfie,
    required TResult Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)
        matchFaces,
    required TResult Function(int width, int height) updateCameraResolution,
  }) {
    return updateCameraResolution(width, height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeCamera,
    TResult? Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)?
        updateFaceDetection,
    TResult? Function()? startCountdown,
    TResult? Function(int countdown)? updateCountdown,
    TResult? Function()? captureSelfie,
    TResult? Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)?
        matchFaces,
    TResult? Function(int width, int height)? updateCameraResolution,
  }) {
    return updateCameraResolution?.call(width, height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeCamera,
    TResult Function(
            bool isFaceDetected, bool isBlinking, double? headEulerAngleY)?
        updateFaceDetection,
    TResult Function()? startCountdown,
    TResult Function(int countdown)? updateCountdown,
    TResult Function()? captureSelfie,
    TResult Function(
            Uint8List candidateImage, String referenceImageUrl, String refNum)?
        matchFaces,
    TResult Function(int width, int height)? updateCameraResolution,
    required TResult orElse(),
  }) {
    if (updateCameraResolution != null) {
      return updateCameraResolution(width, height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeCamera value) initializeCamera,
    required TResult Function(UpdateFaceDetection value) updateFaceDetection,
    required TResult Function(StartCountdown value) startCountdown,
    required TResult Function(UpdateCountdown value) updateCountdown,
    required TResult Function(CaptureSelfie value) captureSelfie,
    required TResult Function(MatchFacesEvent value) matchFaces,
    required TResult Function(UpdateCameraResolution value)
        updateCameraResolution,
  }) {
    return updateCameraResolution(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeCamera value)? initializeCamera,
    TResult? Function(UpdateFaceDetection value)? updateFaceDetection,
    TResult? Function(StartCountdown value)? startCountdown,
    TResult? Function(UpdateCountdown value)? updateCountdown,
    TResult? Function(CaptureSelfie value)? captureSelfie,
    TResult? Function(MatchFacesEvent value)? matchFaces,
    TResult? Function(UpdateCameraResolution value)? updateCameraResolution,
  }) {
    return updateCameraResolution?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeCamera value)? initializeCamera,
    TResult Function(UpdateFaceDetection value)? updateFaceDetection,
    TResult Function(StartCountdown value)? startCountdown,
    TResult Function(UpdateCountdown value)? updateCountdown,
    TResult Function(CaptureSelfie value)? captureSelfie,
    TResult Function(MatchFacesEvent value)? matchFaces,
    TResult Function(UpdateCameraResolution value)? updateCameraResolution,
    required TResult orElse(),
  }) {
    if (updateCameraResolution != null) {
      return updateCameraResolution(this);
    }
    return orElse();
  }
}

abstract class UpdateCameraResolution implements LivelinessDetectionEvent {
  const factory UpdateCameraResolution(
      {required final int width,
      required final int height}) = _$UpdateCameraResolutionImpl;

  int get width;
  int get height;

  /// Create a copy of LivelinessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCameraResolutionImplCopyWith<_$UpdateCameraResolutionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LivelinessDetectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        initialized,
    required TResult Function(String message) error,
    required TResult Function() verificationSuccess,
    required TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        countdownInProgress,
    required TResult Function(Uint8List selfieImage) selfieCapture,
    required TResult Function() faceMatchInitial,
    required TResult Function() faceMatchLoading,
    required TResult Function(FaceMatchEntity entity, Uint8List selfieImage)
        faceMatchSuccess,
    required TResult Function(String message, Uint8List selfieImage)
        faceMatchFailure,
    required TResult Function(String message) faceMatchServerDownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult? Function(String message)? error,
    TResult? Function()? verificationSuccess,
    TResult? Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult? Function(Uint8List selfieImage)? selfieCapture,
    TResult? Function()? faceMatchInitial,
    TResult? Function()? faceMatchLoading,
    TResult? Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult? Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult? Function(String message)? faceMatchServerDownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult Function(String message)? error,
    TResult Function()? verificationSuccess,
    TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult Function(Uint8List selfieImage)? selfieCapture,
    TResult Function()? faceMatchInitial,
    TResult Function()? faceMatchLoading,
    TResult Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult Function(String message)? faceMatchServerDownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraInitial value) initial,
    required TResult Function(CameraInitialized value) initialized,
    required TResult Function(CameraError value) error,
    required TResult Function(LivelinessVerificationSuccess value)
        verificationSuccess,
    required TResult Function(LivelinessCountdown value) countdownInProgress,
    required TResult Function(LivelinessSelfieCapture value) selfieCapture,
    required TResult Function(FaceMatchInitial value) faceMatchInitial,
    required TResult Function(FaceMatchLoading value) faceMatchLoading,
    required TResult Function(FaceMatchSuccess value) faceMatchSuccess,
    required TResult Function(FaceMatchFailure value) faceMatchFailure,
    required TResult Function(FaceMatchServerDownError value)
        faceMatchServerDownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraInitial value)? initial,
    TResult? Function(CameraInitialized value)? initialized,
    TResult? Function(CameraError value)? error,
    TResult? Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult? Function(LivelinessCountdown value)? countdownInProgress,
    TResult? Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult? Function(FaceMatchInitial value)? faceMatchInitial,
    TResult? Function(FaceMatchLoading value)? faceMatchLoading,
    TResult? Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult? Function(FaceMatchFailure value)? faceMatchFailure,
    TResult? Function(FaceMatchServerDownError value)? faceMatchServerDownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraInitial value)? initial,
    TResult Function(CameraInitialized value)? initialized,
    TResult Function(CameraError value)? error,
    TResult Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult Function(LivelinessCountdown value)? countdownInProgress,
    TResult Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult Function(FaceMatchInitial value)? faceMatchInitial,
    TResult Function(FaceMatchLoading value)? faceMatchLoading,
    TResult Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult Function(FaceMatchFailure value)? faceMatchFailure,
    TResult Function(FaceMatchServerDownError value)? faceMatchServerDownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LivelinessDetectionStateCopyWith<$Res> {
  factory $LivelinessDetectionStateCopyWith(LivelinessDetectionState value,
          $Res Function(LivelinessDetectionState) then) =
      _$LivelinessDetectionStateCopyWithImpl<$Res, LivelinessDetectionState>;
}

/// @nodoc
class _$LivelinessDetectionStateCopyWithImpl<$Res,
        $Val extends LivelinessDetectionState>
    implements $LivelinessDetectionStateCopyWith<$Res> {
  _$LivelinessDetectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CameraInitialImplCopyWith<$Res> {
  factory _$$CameraInitialImplCopyWith(
          _$CameraInitialImpl value, $Res Function(_$CameraInitialImpl) then) =
      __$$CameraInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CameraInitialImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionStateCopyWithImpl<$Res, _$CameraInitialImpl>
    implements _$$CameraInitialImplCopyWith<$Res> {
  __$$CameraInitialImplCopyWithImpl(
      _$CameraInitialImpl _value, $Res Function(_$CameraInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CameraInitialImpl implements CameraInitial {
  const _$CameraInitialImpl();

  @override
  String toString() {
    return 'LivelinessDetectionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CameraInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        initialized,
    required TResult Function(String message) error,
    required TResult Function() verificationSuccess,
    required TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        countdownInProgress,
    required TResult Function(Uint8List selfieImage) selfieCapture,
    required TResult Function() faceMatchInitial,
    required TResult Function() faceMatchLoading,
    required TResult Function(FaceMatchEntity entity, Uint8List selfieImage)
        faceMatchSuccess,
    required TResult Function(String message, Uint8List selfieImage)
        faceMatchFailure,
    required TResult Function(String message) faceMatchServerDownError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult? Function(String message)? error,
    TResult? Function()? verificationSuccess,
    TResult? Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult? Function(Uint8List selfieImage)? selfieCapture,
    TResult? Function()? faceMatchInitial,
    TResult? Function()? faceMatchLoading,
    TResult? Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult? Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult? Function(String message)? faceMatchServerDownError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult Function(String message)? error,
    TResult Function()? verificationSuccess,
    TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult Function(Uint8List selfieImage)? selfieCapture,
    TResult Function()? faceMatchInitial,
    TResult Function()? faceMatchLoading,
    TResult Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult Function(String message)? faceMatchServerDownError,
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
    required TResult Function(CameraInitial value) initial,
    required TResult Function(CameraInitialized value) initialized,
    required TResult Function(CameraError value) error,
    required TResult Function(LivelinessVerificationSuccess value)
        verificationSuccess,
    required TResult Function(LivelinessCountdown value) countdownInProgress,
    required TResult Function(LivelinessSelfieCapture value) selfieCapture,
    required TResult Function(FaceMatchInitial value) faceMatchInitial,
    required TResult Function(FaceMatchLoading value) faceMatchLoading,
    required TResult Function(FaceMatchSuccess value) faceMatchSuccess,
    required TResult Function(FaceMatchFailure value) faceMatchFailure,
    required TResult Function(FaceMatchServerDownError value)
        faceMatchServerDownError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraInitial value)? initial,
    TResult? Function(CameraInitialized value)? initialized,
    TResult? Function(CameraError value)? error,
    TResult? Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult? Function(LivelinessCountdown value)? countdownInProgress,
    TResult? Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult? Function(FaceMatchInitial value)? faceMatchInitial,
    TResult? Function(FaceMatchLoading value)? faceMatchLoading,
    TResult? Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult? Function(FaceMatchFailure value)? faceMatchFailure,
    TResult? Function(FaceMatchServerDownError value)? faceMatchServerDownError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraInitial value)? initial,
    TResult Function(CameraInitialized value)? initialized,
    TResult Function(CameraError value)? error,
    TResult Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult Function(LivelinessCountdown value)? countdownInProgress,
    TResult Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult Function(FaceMatchInitial value)? faceMatchInitial,
    TResult Function(FaceMatchLoading value)? faceMatchLoading,
    TResult Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult Function(FaceMatchFailure value)? faceMatchFailure,
    TResult Function(FaceMatchServerDownError value)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CameraInitial implements LivelinessDetectionState {
  const factory CameraInitial() = _$CameraInitialImpl;
}

/// @nodoc
abstract class _$$CameraInitializedImplCopyWith<$Res> {
  factory _$$CameraInitializedImplCopyWith(_$CameraInitializedImpl value,
          $Res Function(_$CameraInitializedImpl) then) =
      __$$CameraInitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int textureId,
      bool isFaceDetected,
      bool isBlinking,
      bool hasCompletedBlinking,
      bool hasCompletedRightMovement,
      bool hasCompletedLeftMovement,
      bool isVerificationCompleted,
      int width,
      int height});
}

/// @nodoc
class __$$CameraInitializedImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionStateCopyWithImpl<$Res,
        _$CameraInitializedImpl>
    implements _$$CameraInitializedImplCopyWith<$Res> {
  __$$CameraInitializedImplCopyWithImpl(_$CameraInitializedImpl _value,
      $Res Function(_$CameraInitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textureId = null,
    Object? isFaceDetected = null,
    Object? isBlinking = null,
    Object? hasCompletedBlinking = null,
    Object? hasCompletedRightMovement = null,
    Object? hasCompletedLeftMovement = null,
    Object? isVerificationCompleted = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$CameraInitializedImpl(
      textureId: null == textureId
          ? _value.textureId
          : textureId // ignore: cast_nullable_to_non_nullable
              as int,
      isFaceDetected: null == isFaceDetected
          ? _value.isFaceDetected
          : isFaceDetected // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlinking: null == isBlinking
          ? _value.isBlinking
          : isBlinking // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCompletedBlinking: null == hasCompletedBlinking
          ? _value.hasCompletedBlinking
          : hasCompletedBlinking // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCompletedRightMovement: null == hasCompletedRightMovement
          ? _value.hasCompletedRightMovement
          : hasCompletedRightMovement // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCompletedLeftMovement: null == hasCompletedLeftMovement
          ? _value.hasCompletedLeftMovement
          : hasCompletedLeftMovement // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerificationCompleted: null == isVerificationCompleted
          ? _value.isVerificationCompleted
          : isVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CameraInitializedImpl implements CameraInitialized {
  const _$CameraInitializedImpl(
      {this.textureId = 0,
      this.isFaceDetected = false,
      this.isBlinking = false,
      this.hasCompletedBlinking = false,
      this.hasCompletedRightMovement = false,
      this.hasCompletedLeftMovement = false,
      this.isVerificationCompleted = false,
      this.width = 1080,
      this.height = 1350});

  @override
  @JsonKey()
  final int textureId;
  @override
  @JsonKey()
  final bool isFaceDetected;
  @override
  @JsonKey()
  final bool isBlinking;
  @override
  @JsonKey()
  final bool hasCompletedBlinking;
  @override
  @JsonKey()
  final bool hasCompletedRightMovement;
  @override
  @JsonKey()
  final bool hasCompletedLeftMovement;
  @override
  @JsonKey()
  final bool isVerificationCompleted;
  @override
  @JsonKey()
  final int width;
  @override
  @JsonKey()
  final int height;

  @override
  String toString() {
    return 'LivelinessDetectionState.initialized(textureId: $textureId, isFaceDetected: $isFaceDetected, isBlinking: $isBlinking, hasCompletedBlinking: $hasCompletedBlinking, hasCompletedRightMovement: $hasCompletedRightMovement, hasCompletedLeftMovement: $hasCompletedLeftMovement, isVerificationCompleted: $isVerificationCompleted, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraInitializedImpl &&
            (identical(other.textureId, textureId) ||
                other.textureId == textureId) &&
            (identical(other.isFaceDetected, isFaceDetected) ||
                other.isFaceDetected == isFaceDetected) &&
            (identical(other.isBlinking, isBlinking) ||
                other.isBlinking == isBlinking) &&
            (identical(other.hasCompletedBlinking, hasCompletedBlinking) ||
                other.hasCompletedBlinking == hasCompletedBlinking) &&
            (identical(other.hasCompletedRightMovement,
                    hasCompletedRightMovement) ||
                other.hasCompletedRightMovement == hasCompletedRightMovement) &&
            (identical(
                    other.hasCompletedLeftMovement, hasCompletedLeftMovement) ||
                other.hasCompletedLeftMovement == hasCompletedLeftMovement) &&
            (identical(
                    other.isVerificationCompleted, isVerificationCompleted) ||
                other.isVerificationCompleted == isVerificationCompleted) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      textureId,
      isFaceDetected,
      isBlinking,
      hasCompletedBlinking,
      hasCompletedRightMovement,
      hasCompletedLeftMovement,
      isVerificationCompleted,
      width,
      height);

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraInitializedImplCopyWith<_$CameraInitializedImpl> get copyWith =>
      __$$CameraInitializedImplCopyWithImpl<_$CameraInitializedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        initialized,
    required TResult Function(String message) error,
    required TResult Function() verificationSuccess,
    required TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        countdownInProgress,
    required TResult Function(Uint8List selfieImage) selfieCapture,
    required TResult Function() faceMatchInitial,
    required TResult Function() faceMatchLoading,
    required TResult Function(FaceMatchEntity entity, Uint8List selfieImage)
        faceMatchSuccess,
    required TResult Function(String message, Uint8List selfieImage)
        faceMatchFailure,
    required TResult Function(String message) faceMatchServerDownError,
  }) {
    return initialized(
        textureId,
        isFaceDetected,
        isBlinking,
        hasCompletedBlinking,
        hasCompletedRightMovement,
        hasCompletedLeftMovement,
        isVerificationCompleted,
        width,
        height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult? Function(String message)? error,
    TResult? Function()? verificationSuccess,
    TResult? Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult? Function(Uint8List selfieImage)? selfieCapture,
    TResult? Function()? faceMatchInitial,
    TResult? Function()? faceMatchLoading,
    TResult? Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult? Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult? Function(String message)? faceMatchServerDownError,
  }) {
    return initialized?.call(
        textureId,
        isFaceDetected,
        isBlinking,
        hasCompletedBlinking,
        hasCompletedRightMovement,
        hasCompletedLeftMovement,
        isVerificationCompleted,
        width,
        height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult Function(String message)? error,
    TResult Function()? verificationSuccess,
    TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult Function(Uint8List selfieImage)? selfieCapture,
    TResult Function()? faceMatchInitial,
    TResult Function()? faceMatchLoading,
    TResult Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult Function(String message)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(
          textureId,
          isFaceDetected,
          isBlinking,
          hasCompletedBlinking,
          hasCompletedRightMovement,
          hasCompletedLeftMovement,
          isVerificationCompleted,
          width,
          height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraInitial value) initial,
    required TResult Function(CameraInitialized value) initialized,
    required TResult Function(CameraError value) error,
    required TResult Function(LivelinessVerificationSuccess value)
        verificationSuccess,
    required TResult Function(LivelinessCountdown value) countdownInProgress,
    required TResult Function(LivelinessSelfieCapture value) selfieCapture,
    required TResult Function(FaceMatchInitial value) faceMatchInitial,
    required TResult Function(FaceMatchLoading value) faceMatchLoading,
    required TResult Function(FaceMatchSuccess value) faceMatchSuccess,
    required TResult Function(FaceMatchFailure value) faceMatchFailure,
    required TResult Function(FaceMatchServerDownError value)
        faceMatchServerDownError,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraInitial value)? initial,
    TResult? Function(CameraInitialized value)? initialized,
    TResult? Function(CameraError value)? error,
    TResult? Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult? Function(LivelinessCountdown value)? countdownInProgress,
    TResult? Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult? Function(FaceMatchInitial value)? faceMatchInitial,
    TResult? Function(FaceMatchLoading value)? faceMatchLoading,
    TResult? Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult? Function(FaceMatchFailure value)? faceMatchFailure,
    TResult? Function(FaceMatchServerDownError value)? faceMatchServerDownError,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraInitial value)? initial,
    TResult Function(CameraInitialized value)? initialized,
    TResult Function(CameraError value)? error,
    TResult Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult Function(LivelinessCountdown value)? countdownInProgress,
    TResult Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult Function(FaceMatchInitial value)? faceMatchInitial,
    TResult Function(FaceMatchLoading value)? faceMatchLoading,
    TResult Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult Function(FaceMatchFailure value)? faceMatchFailure,
    TResult Function(FaceMatchServerDownError value)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class CameraInitialized implements LivelinessDetectionState {
  const factory CameraInitialized(
      {final int textureId,
      final bool isFaceDetected,
      final bool isBlinking,
      final bool hasCompletedBlinking,
      final bool hasCompletedRightMovement,
      final bool hasCompletedLeftMovement,
      final bool isVerificationCompleted,
      final int width,
      final int height}) = _$CameraInitializedImpl;

  int get textureId;
  bool get isFaceDetected;
  bool get isBlinking;
  bool get hasCompletedBlinking;
  bool get hasCompletedRightMovement;
  bool get hasCompletedLeftMovement;
  bool get isVerificationCompleted;
  int get width;
  int get height;

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraInitializedImplCopyWith<_$CameraInitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CameraErrorImplCopyWith<$Res> {
  factory _$$CameraErrorImplCopyWith(
          _$CameraErrorImpl value, $Res Function(_$CameraErrorImpl) then) =
      __$$CameraErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CameraErrorImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionStateCopyWithImpl<$Res, _$CameraErrorImpl>
    implements _$$CameraErrorImplCopyWith<$Res> {
  __$$CameraErrorImplCopyWithImpl(
      _$CameraErrorImpl _value, $Res Function(_$CameraErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CameraErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CameraErrorImpl implements CameraError {
  const _$CameraErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LivelinessDetectionState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraErrorImplCopyWith<_$CameraErrorImpl> get copyWith =>
      __$$CameraErrorImplCopyWithImpl<_$CameraErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        initialized,
    required TResult Function(String message) error,
    required TResult Function() verificationSuccess,
    required TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        countdownInProgress,
    required TResult Function(Uint8List selfieImage) selfieCapture,
    required TResult Function() faceMatchInitial,
    required TResult Function() faceMatchLoading,
    required TResult Function(FaceMatchEntity entity, Uint8List selfieImage)
        faceMatchSuccess,
    required TResult Function(String message, Uint8List selfieImage)
        faceMatchFailure,
    required TResult Function(String message) faceMatchServerDownError,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult? Function(String message)? error,
    TResult? Function()? verificationSuccess,
    TResult? Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult? Function(Uint8List selfieImage)? selfieCapture,
    TResult? Function()? faceMatchInitial,
    TResult? Function()? faceMatchLoading,
    TResult? Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult? Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult? Function(String message)? faceMatchServerDownError,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult Function(String message)? error,
    TResult Function()? verificationSuccess,
    TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult Function(Uint8List selfieImage)? selfieCapture,
    TResult Function()? faceMatchInitial,
    TResult Function()? faceMatchLoading,
    TResult Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult Function(String message)? faceMatchServerDownError,
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
    required TResult Function(CameraInitial value) initial,
    required TResult Function(CameraInitialized value) initialized,
    required TResult Function(CameraError value) error,
    required TResult Function(LivelinessVerificationSuccess value)
        verificationSuccess,
    required TResult Function(LivelinessCountdown value) countdownInProgress,
    required TResult Function(LivelinessSelfieCapture value) selfieCapture,
    required TResult Function(FaceMatchInitial value) faceMatchInitial,
    required TResult Function(FaceMatchLoading value) faceMatchLoading,
    required TResult Function(FaceMatchSuccess value) faceMatchSuccess,
    required TResult Function(FaceMatchFailure value) faceMatchFailure,
    required TResult Function(FaceMatchServerDownError value)
        faceMatchServerDownError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraInitial value)? initial,
    TResult? Function(CameraInitialized value)? initialized,
    TResult? Function(CameraError value)? error,
    TResult? Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult? Function(LivelinessCountdown value)? countdownInProgress,
    TResult? Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult? Function(FaceMatchInitial value)? faceMatchInitial,
    TResult? Function(FaceMatchLoading value)? faceMatchLoading,
    TResult? Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult? Function(FaceMatchFailure value)? faceMatchFailure,
    TResult? Function(FaceMatchServerDownError value)? faceMatchServerDownError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraInitial value)? initial,
    TResult Function(CameraInitialized value)? initialized,
    TResult Function(CameraError value)? error,
    TResult Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult Function(LivelinessCountdown value)? countdownInProgress,
    TResult Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult Function(FaceMatchInitial value)? faceMatchInitial,
    TResult Function(FaceMatchLoading value)? faceMatchLoading,
    TResult Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult Function(FaceMatchFailure value)? faceMatchFailure,
    TResult Function(FaceMatchServerDownError value)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CameraError implements LivelinessDetectionState {
  const factory CameraError({required final String message}) =
      _$CameraErrorImpl;

  String get message;

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraErrorImplCopyWith<_$CameraErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LivelinessVerificationSuccessImplCopyWith<$Res> {
  factory _$$LivelinessVerificationSuccessImplCopyWith(
          _$LivelinessVerificationSuccessImpl value,
          $Res Function(_$LivelinessVerificationSuccessImpl) then) =
      __$$LivelinessVerificationSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LivelinessVerificationSuccessImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionStateCopyWithImpl<$Res,
        _$LivelinessVerificationSuccessImpl>
    implements _$$LivelinessVerificationSuccessImplCopyWith<$Res> {
  __$$LivelinessVerificationSuccessImplCopyWithImpl(
      _$LivelinessVerificationSuccessImpl _value,
      $Res Function(_$LivelinessVerificationSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LivelinessVerificationSuccessImpl
    implements LivelinessVerificationSuccess {
  const _$LivelinessVerificationSuccessImpl();

  @override
  String toString() {
    return 'LivelinessDetectionState.verificationSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LivelinessVerificationSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        initialized,
    required TResult Function(String message) error,
    required TResult Function() verificationSuccess,
    required TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        countdownInProgress,
    required TResult Function(Uint8List selfieImage) selfieCapture,
    required TResult Function() faceMatchInitial,
    required TResult Function() faceMatchLoading,
    required TResult Function(FaceMatchEntity entity, Uint8List selfieImage)
        faceMatchSuccess,
    required TResult Function(String message, Uint8List selfieImage)
        faceMatchFailure,
    required TResult Function(String message) faceMatchServerDownError,
  }) {
    return verificationSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult? Function(String message)? error,
    TResult? Function()? verificationSuccess,
    TResult? Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult? Function(Uint8List selfieImage)? selfieCapture,
    TResult? Function()? faceMatchInitial,
    TResult? Function()? faceMatchLoading,
    TResult? Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult? Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult? Function(String message)? faceMatchServerDownError,
  }) {
    return verificationSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult Function(String message)? error,
    TResult Function()? verificationSuccess,
    TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult Function(Uint8List selfieImage)? selfieCapture,
    TResult Function()? faceMatchInitial,
    TResult Function()? faceMatchLoading,
    TResult Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult Function(String message)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (verificationSuccess != null) {
      return verificationSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraInitial value) initial,
    required TResult Function(CameraInitialized value) initialized,
    required TResult Function(CameraError value) error,
    required TResult Function(LivelinessVerificationSuccess value)
        verificationSuccess,
    required TResult Function(LivelinessCountdown value) countdownInProgress,
    required TResult Function(LivelinessSelfieCapture value) selfieCapture,
    required TResult Function(FaceMatchInitial value) faceMatchInitial,
    required TResult Function(FaceMatchLoading value) faceMatchLoading,
    required TResult Function(FaceMatchSuccess value) faceMatchSuccess,
    required TResult Function(FaceMatchFailure value) faceMatchFailure,
    required TResult Function(FaceMatchServerDownError value)
        faceMatchServerDownError,
  }) {
    return verificationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraInitial value)? initial,
    TResult? Function(CameraInitialized value)? initialized,
    TResult? Function(CameraError value)? error,
    TResult? Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult? Function(LivelinessCountdown value)? countdownInProgress,
    TResult? Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult? Function(FaceMatchInitial value)? faceMatchInitial,
    TResult? Function(FaceMatchLoading value)? faceMatchLoading,
    TResult? Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult? Function(FaceMatchFailure value)? faceMatchFailure,
    TResult? Function(FaceMatchServerDownError value)? faceMatchServerDownError,
  }) {
    return verificationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraInitial value)? initial,
    TResult Function(CameraInitialized value)? initialized,
    TResult Function(CameraError value)? error,
    TResult Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult Function(LivelinessCountdown value)? countdownInProgress,
    TResult Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult Function(FaceMatchInitial value)? faceMatchInitial,
    TResult Function(FaceMatchLoading value)? faceMatchLoading,
    TResult Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult Function(FaceMatchFailure value)? faceMatchFailure,
    TResult Function(FaceMatchServerDownError value)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (verificationSuccess != null) {
      return verificationSuccess(this);
    }
    return orElse();
  }
}

abstract class LivelinessVerificationSuccess
    implements LivelinessDetectionState {
  const factory LivelinessVerificationSuccess() =
      _$LivelinessVerificationSuccessImpl;
}

/// @nodoc
abstract class _$$LivelinessCountdownImplCopyWith<$Res> {
  factory _$$LivelinessCountdownImplCopyWith(_$LivelinessCountdownImpl value,
          $Res Function(_$LivelinessCountdownImpl) then) =
      __$$LivelinessCountdownImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int countdown,
      int textureId,
      bool isFaceDetected,
      bool isBlinking,
      bool hasCompletedBlinking,
      bool hasCompletedRightMovement,
      bool hasCompletedLeftMovement,
      bool isVerificationCompleted,
      int width,
      int height});
}

/// @nodoc
class __$$LivelinessCountdownImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionStateCopyWithImpl<$Res,
        _$LivelinessCountdownImpl>
    implements _$$LivelinessCountdownImplCopyWith<$Res> {
  __$$LivelinessCountdownImplCopyWithImpl(_$LivelinessCountdownImpl _value,
      $Res Function(_$LivelinessCountdownImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countdown = null,
    Object? textureId = null,
    Object? isFaceDetected = null,
    Object? isBlinking = null,
    Object? hasCompletedBlinking = null,
    Object? hasCompletedRightMovement = null,
    Object? hasCompletedLeftMovement = null,
    Object? isVerificationCompleted = null,
    Object? width = null,
    Object? height = null,
  }) {
    return _then(_$LivelinessCountdownImpl(
      countdown: null == countdown
          ? _value.countdown
          : countdown // ignore: cast_nullable_to_non_nullable
              as int,
      textureId: null == textureId
          ? _value.textureId
          : textureId // ignore: cast_nullable_to_non_nullable
              as int,
      isFaceDetected: null == isFaceDetected
          ? _value.isFaceDetected
          : isFaceDetected // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlinking: null == isBlinking
          ? _value.isBlinking
          : isBlinking // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCompletedBlinking: null == hasCompletedBlinking
          ? _value.hasCompletedBlinking
          : hasCompletedBlinking // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCompletedRightMovement: null == hasCompletedRightMovement
          ? _value.hasCompletedRightMovement
          : hasCompletedRightMovement // ignore: cast_nullable_to_non_nullable
              as bool,
      hasCompletedLeftMovement: null == hasCompletedLeftMovement
          ? _value.hasCompletedLeftMovement
          : hasCompletedLeftMovement // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerificationCompleted: null == isVerificationCompleted
          ? _value.isVerificationCompleted
          : isVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LivelinessCountdownImpl implements LivelinessCountdown {
  const _$LivelinessCountdownImpl(
      {required this.countdown,
      required this.textureId,
      required this.isFaceDetected,
      required this.isBlinking,
      required this.hasCompletedBlinking,
      required this.hasCompletedRightMovement,
      required this.hasCompletedLeftMovement,
      required this.isVerificationCompleted,
      required this.width,
      required this.height});

  @override
  final int countdown;
  @override
  final int textureId;
  @override
  final bool isFaceDetected;
  @override
  final bool isBlinking;
  @override
  final bool hasCompletedBlinking;
  @override
  final bool hasCompletedRightMovement;
  @override
  final bool hasCompletedLeftMovement;
  @override
  final bool isVerificationCompleted;
  @override
  final int width;
  @override
  final int height;

  @override
  String toString() {
    return 'LivelinessDetectionState.countdownInProgress(countdown: $countdown, textureId: $textureId, isFaceDetected: $isFaceDetected, isBlinking: $isBlinking, hasCompletedBlinking: $hasCompletedBlinking, hasCompletedRightMovement: $hasCompletedRightMovement, hasCompletedLeftMovement: $hasCompletedLeftMovement, isVerificationCompleted: $isVerificationCompleted, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LivelinessCountdownImpl &&
            (identical(other.countdown, countdown) ||
                other.countdown == countdown) &&
            (identical(other.textureId, textureId) ||
                other.textureId == textureId) &&
            (identical(other.isFaceDetected, isFaceDetected) ||
                other.isFaceDetected == isFaceDetected) &&
            (identical(other.isBlinking, isBlinking) ||
                other.isBlinking == isBlinking) &&
            (identical(other.hasCompletedBlinking, hasCompletedBlinking) ||
                other.hasCompletedBlinking == hasCompletedBlinking) &&
            (identical(other.hasCompletedRightMovement,
                    hasCompletedRightMovement) ||
                other.hasCompletedRightMovement == hasCompletedRightMovement) &&
            (identical(
                    other.hasCompletedLeftMovement, hasCompletedLeftMovement) ||
                other.hasCompletedLeftMovement == hasCompletedLeftMovement) &&
            (identical(
                    other.isVerificationCompleted, isVerificationCompleted) ||
                other.isVerificationCompleted == isVerificationCompleted) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      countdown,
      textureId,
      isFaceDetected,
      isBlinking,
      hasCompletedBlinking,
      hasCompletedRightMovement,
      hasCompletedLeftMovement,
      isVerificationCompleted,
      width,
      height);

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LivelinessCountdownImplCopyWith<_$LivelinessCountdownImpl> get copyWith =>
      __$$LivelinessCountdownImplCopyWithImpl<_$LivelinessCountdownImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        initialized,
    required TResult Function(String message) error,
    required TResult Function() verificationSuccess,
    required TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        countdownInProgress,
    required TResult Function(Uint8List selfieImage) selfieCapture,
    required TResult Function() faceMatchInitial,
    required TResult Function() faceMatchLoading,
    required TResult Function(FaceMatchEntity entity, Uint8List selfieImage)
        faceMatchSuccess,
    required TResult Function(String message, Uint8List selfieImage)
        faceMatchFailure,
    required TResult Function(String message) faceMatchServerDownError,
  }) {
    return countdownInProgress(
        countdown,
        textureId,
        isFaceDetected,
        isBlinking,
        hasCompletedBlinking,
        hasCompletedRightMovement,
        hasCompletedLeftMovement,
        isVerificationCompleted,
        width,
        height);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult? Function(String message)? error,
    TResult? Function()? verificationSuccess,
    TResult? Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult? Function(Uint8List selfieImage)? selfieCapture,
    TResult? Function()? faceMatchInitial,
    TResult? Function()? faceMatchLoading,
    TResult? Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult? Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult? Function(String message)? faceMatchServerDownError,
  }) {
    return countdownInProgress?.call(
        countdown,
        textureId,
        isFaceDetected,
        isBlinking,
        hasCompletedBlinking,
        hasCompletedRightMovement,
        hasCompletedLeftMovement,
        isVerificationCompleted,
        width,
        height);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult Function(String message)? error,
    TResult Function()? verificationSuccess,
    TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult Function(Uint8List selfieImage)? selfieCapture,
    TResult Function()? faceMatchInitial,
    TResult Function()? faceMatchLoading,
    TResult Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult Function(String message)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (countdownInProgress != null) {
      return countdownInProgress(
          countdown,
          textureId,
          isFaceDetected,
          isBlinking,
          hasCompletedBlinking,
          hasCompletedRightMovement,
          hasCompletedLeftMovement,
          isVerificationCompleted,
          width,
          height);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraInitial value) initial,
    required TResult Function(CameraInitialized value) initialized,
    required TResult Function(CameraError value) error,
    required TResult Function(LivelinessVerificationSuccess value)
        verificationSuccess,
    required TResult Function(LivelinessCountdown value) countdownInProgress,
    required TResult Function(LivelinessSelfieCapture value) selfieCapture,
    required TResult Function(FaceMatchInitial value) faceMatchInitial,
    required TResult Function(FaceMatchLoading value) faceMatchLoading,
    required TResult Function(FaceMatchSuccess value) faceMatchSuccess,
    required TResult Function(FaceMatchFailure value) faceMatchFailure,
    required TResult Function(FaceMatchServerDownError value)
        faceMatchServerDownError,
  }) {
    return countdownInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraInitial value)? initial,
    TResult? Function(CameraInitialized value)? initialized,
    TResult? Function(CameraError value)? error,
    TResult? Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult? Function(LivelinessCountdown value)? countdownInProgress,
    TResult? Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult? Function(FaceMatchInitial value)? faceMatchInitial,
    TResult? Function(FaceMatchLoading value)? faceMatchLoading,
    TResult? Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult? Function(FaceMatchFailure value)? faceMatchFailure,
    TResult? Function(FaceMatchServerDownError value)? faceMatchServerDownError,
  }) {
    return countdownInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraInitial value)? initial,
    TResult Function(CameraInitialized value)? initialized,
    TResult Function(CameraError value)? error,
    TResult Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult Function(LivelinessCountdown value)? countdownInProgress,
    TResult Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult Function(FaceMatchInitial value)? faceMatchInitial,
    TResult Function(FaceMatchLoading value)? faceMatchLoading,
    TResult Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult Function(FaceMatchFailure value)? faceMatchFailure,
    TResult Function(FaceMatchServerDownError value)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (countdownInProgress != null) {
      return countdownInProgress(this);
    }
    return orElse();
  }
}

abstract class LivelinessCountdown implements LivelinessDetectionState {
  const factory LivelinessCountdown(
      {required final int countdown,
      required final int textureId,
      required final bool isFaceDetected,
      required final bool isBlinking,
      required final bool hasCompletedBlinking,
      required final bool hasCompletedRightMovement,
      required final bool hasCompletedLeftMovement,
      required final bool isVerificationCompleted,
      required final int width,
      required final int height}) = _$LivelinessCountdownImpl;

  int get countdown;
  int get textureId;
  bool get isFaceDetected;
  bool get isBlinking;
  bool get hasCompletedBlinking;
  bool get hasCompletedRightMovement;
  bool get hasCompletedLeftMovement;
  bool get isVerificationCompleted;
  int get width;
  int get height;

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LivelinessCountdownImplCopyWith<_$LivelinessCountdownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LivelinessSelfieCaptureImplCopyWith<$Res> {
  factory _$$LivelinessSelfieCaptureImplCopyWith(
          _$LivelinessSelfieCaptureImpl value,
          $Res Function(_$LivelinessSelfieCaptureImpl) then) =
      __$$LivelinessSelfieCaptureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List selfieImage});
}

/// @nodoc
class __$$LivelinessSelfieCaptureImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionStateCopyWithImpl<$Res,
        _$LivelinessSelfieCaptureImpl>
    implements _$$LivelinessSelfieCaptureImplCopyWith<$Res> {
  __$$LivelinessSelfieCaptureImplCopyWithImpl(
      _$LivelinessSelfieCaptureImpl _value,
      $Res Function(_$LivelinessSelfieCaptureImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selfieImage = null,
  }) {
    return _then(_$LivelinessSelfieCaptureImpl(
      selfieImage: null == selfieImage
          ? _value.selfieImage
          : selfieImage // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$LivelinessSelfieCaptureImpl implements LivelinessSelfieCapture {
  const _$LivelinessSelfieCaptureImpl({required this.selfieImage});

  @override
  final Uint8List selfieImage;

  @override
  String toString() {
    return 'LivelinessDetectionState.selfieCapture(selfieImage: $selfieImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LivelinessSelfieCaptureImpl &&
            const DeepCollectionEquality()
                .equals(other.selfieImage, selfieImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selfieImage));

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LivelinessSelfieCaptureImplCopyWith<_$LivelinessSelfieCaptureImpl>
      get copyWith => __$$LivelinessSelfieCaptureImplCopyWithImpl<
          _$LivelinessSelfieCaptureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        initialized,
    required TResult Function(String message) error,
    required TResult Function() verificationSuccess,
    required TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        countdownInProgress,
    required TResult Function(Uint8List selfieImage) selfieCapture,
    required TResult Function() faceMatchInitial,
    required TResult Function() faceMatchLoading,
    required TResult Function(FaceMatchEntity entity, Uint8List selfieImage)
        faceMatchSuccess,
    required TResult Function(String message, Uint8List selfieImage)
        faceMatchFailure,
    required TResult Function(String message) faceMatchServerDownError,
  }) {
    return selfieCapture(selfieImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult? Function(String message)? error,
    TResult? Function()? verificationSuccess,
    TResult? Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult? Function(Uint8List selfieImage)? selfieCapture,
    TResult? Function()? faceMatchInitial,
    TResult? Function()? faceMatchLoading,
    TResult? Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult? Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult? Function(String message)? faceMatchServerDownError,
  }) {
    return selfieCapture?.call(selfieImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult Function(String message)? error,
    TResult Function()? verificationSuccess,
    TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult Function(Uint8List selfieImage)? selfieCapture,
    TResult Function()? faceMatchInitial,
    TResult Function()? faceMatchLoading,
    TResult Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult Function(String message)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (selfieCapture != null) {
      return selfieCapture(selfieImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraInitial value) initial,
    required TResult Function(CameraInitialized value) initialized,
    required TResult Function(CameraError value) error,
    required TResult Function(LivelinessVerificationSuccess value)
        verificationSuccess,
    required TResult Function(LivelinessCountdown value) countdownInProgress,
    required TResult Function(LivelinessSelfieCapture value) selfieCapture,
    required TResult Function(FaceMatchInitial value) faceMatchInitial,
    required TResult Function(FaceMatchLoading value) faceMatchLoading,
    required TResult Function(FaceMatchSuccess value) faceMatchSuccess,
    required TResult Function(FaceMatchFailure value) faceMatchFailure,
    required TResult Function(FaceMatchServerDownError value)
        faceMatchServerDownError,
  }) {
    return selfieCapture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraInitial value)? initial,
    TResult? Function(CameraInitialized value)? initialized,
    TResult? Function(CameraError value)? error,
    TResult? Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult? Function(LivelinessCountdown value)? countdownInProgress,
    TResult? Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult? Function(FaceMatchInitial value)? faceMatchInitial,
    TResult? Function(FaceMatchLoading value)? faceMatchLoading,
    TResult? Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult? Function(FaceMatchFailure value)? faceMatchFailure,
    TResult? Function(FaceMatchServerDownError value)? faceMatchServerDownError,
  }) {
    return selfieCapture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraInitial value)? initial,
    TResult Function(CameraInitialized value)? initialized,
    TResult Function(CameraError value)? error,
    TResult Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult Function(LivelinessCountdown value)? countdownInProgress,
    TResult Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult Function(FaceMatchInitial value)? faceMatchInitial,
    TResult Function(FaceMatchLoading value)? faceMatchLoading,
    TResult Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult Function(FaceMatchFailure value)? faceMatchFailure,
    TResult Function(FaceMatchServerDownError value)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (selfieCapture != null) {
      return selfieCapture(this);
    }
    return orElse();
  }
}

abstract class LivelinessSelfieCapture implements LivelinessDetectionState {
  const factory LivelinessSelfieCapture(
      {required final Uint8List selfieImage}) = _$LivelinessSelfieCaptureImpl;

  Uint8List get selfieImage;

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LivelinessSelfieCaptureImplCopyWith<_$LivelinessSelfieCaptureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FaceMatchInitialImplCopyWith<$Res> {
  factory _$$FaceMatchInitialImplCopyWith(_$FaceMatchInitialImpl value,
          $Res Function(_$FaceMatchInitialImpl) then) =
      __$$FaceMatchInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FaceMatchInitialImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionStateCopyWithImpl<$Res, _$FaceMatchInitialImpl>
    implements _$$FaceMatchInitialImplCopyWith<$Res> {
  __$$FaceMatchInitialImplCopyWithImpl(_$FaceMatchInitialImpl _value,
      $Res Function(_$FaceMatchInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FaceMatchInitialImpl implements FaceMatchInitial {
  const _$FaceMatchInitialImpl();

  @override
  String toString() {
    return 'LivelinessDetectionState.faceMatchInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FaceMatchInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        initialized,
    required TResult Function(String message) error,
    required TResult Function() verificationSuccess,
    required TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        countdownInProgress,
    required TResult Function(Uint8List selfieImage) selfieCapture,
    required TResult Function() faceMatchInitial,
    required TResult Function() faceMatchLoading,
    required TResult Function(FaceMatchEntity entity, Uint8List selfieImage)
        faceMatchSuccess,
    required TResult Function(String message, Uint8List selfieImage)
        faceMatchFailure,
    required TResult Function(String message) faceMatchServerDownError,
  }) {
    return faceMatchInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult? Function(String message)? error,
    TResult? Function()? verificationSuccess,
    TResult? Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult? Function(Uint8List selfieImage)? selfieCapture,
    TResult? Function()? faceMatchInitial,
    TResult? Function()? faceMatchLoading,
    TResult? Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult? Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult? Function(String message)? faceMatchServerDownError,
  }) {
    return faceMatchInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult Function(String message)? error,
    TResult Function()? verificationSuccess,
    TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult Function(Uint8List selfieImage)? selfieCapture,
    TResult Function()? faceMatchInitial,
    TResult Function()? faceMatchLoading,
    TResult Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult Function(String message)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (faceMatchInitial != null) {
      return faceMatchInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraInitial value) initial,
    required TResult Function(CameraInitialized value) initialized,
    required TResult Function(CameraError value) error,
    required TResult Function(LivelinessVerificationSuccess value)
        verificationSuccess,
    required TResult Function(LivelinessCountdown value) countdownInProgress,
    required TResult Function(LivelinessSelfieCapture value) selfieCapture,
    required TResult Function(FaceMatchInitial value) faceMatchInitial,
    required TResult Function(FaceMatchLoading value) faceMatchLoading,
    required TResult Function(FaceMatchSuccess value) faceMatchSuccess,
    required TResult Function(FaceMatchFailure value) faceMatchFailure,
    required TResult Function(FaceMatchServerDownError value)
        faceMatchServerDownError,
  }) {
    return faceMatchInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraInitial value)? initial,
    TResult? Function(CameraInitialized value)? initialized,
    TResult? Function(CameraError value)? error,
    TResult? Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult? Function(LivelinessCountdown value)? countdownInProgress,
    TResult? Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult? Function(FaceMatchInitial value)? faceMatchInitial,
    TResult? Function(FaceMatchLoading value)? faceMatchLoading,
    TResult? Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult? Function(FaceMatchFailure value)? faceMatchFailure,
    TResult? Function(FaceMatchServerDownError value)? faceMatchServerDownError,
  }) {
    return faceMatchInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraInitial value)? initial,
    TResult Function(CameraInitialized value)? initialized,
    TResult Function(CameraError value)? error,
    TResult Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult Function(LivelinessCountdown value)? countdownInProgress,
    TResult Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult Function(FaceMatchInitial value)? faceMatchInitial,
    TResult Function(FaceMatchLoading value)? faceMatchLoading,
    TResult Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult Function(FaceMatchFailure value)? faceMatchFailure,
    TResult Function(FaceMatchServerDownError value)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (faceMatchInitial != null) {
      return faceMatchInitial(this);
    }
    return orElse();
  }
}

abstract class FaceMatchInitial implements LivelinessDetectionState {
  const factory FaceMatchInitial() = _$FaceMatchInitialImpl;
}

/// @nodoc
abstract class _$$FaceMatchLoadingImplCopyWith<$Res> {
  factory _$$FaceMatchLoadingImplCopyWith(_$FaceMatchLoadingImpl value,
          $Res Function(_$FaceMatchLoadingImpl) then) =
      __$$FaceMatchLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FaceMatchLoadingImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionStateCopyWithImpl<$Res, _$FaceMatchLoadingImpl>
    implements _$$FaceMatchLoadingImplCopyWith<$Res> {
  __$$FaceMatchLoadingImplCopyWithImpl(_$FaceMatchLoadingImpl _value,
      $Res Function(_$FaceMatchLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FaceMatchLoadingImpl implements FaceMatchLoading {
  const _$FaceMatchLoadingImpl();

  @override
  String toString() {
    return 'LivelinessDetectionState.faceMatchLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FaceMatchLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        initialized,
    required TResult Function(String message) error,
    required TResult Function() verificationSuccess,
    required TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        countdownInProgress,
    required TResult Function(Uint8List selfieImage) selfieCapture,
    required TResult Function() faceMatchInitial,
    required TResult Function() faceMatchLoading,
    required TResult Function(FaceMatchEntity entity, Uint8List selfieImage)
        faceMatchSuccess,
    required TResult Function(String message, Uint8List selfieImage)
        faceMatchFailure,
    required TResult Function(String message) faceMatchServerDownError,
  }) {
    return faceMatchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult? Function(String message)? error,
    TResult? Function()? verificationSuccess,
    TResult? Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult? Function(Uint8List selfieImage)? selfieCapture,
    TResult? Function()? faceMatchInitial,
    TResult? Function()? faceMatchLoading,
    TResult? Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult? Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult? Function(String message)? faceMatchServerDownError,
  }) {
    return faceMatchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult Function(String message)? error,
    TResult Function()? verificationSuccess,
    TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult Function(Uint8List selfieImage)? selfieCapture,
    TResult Function()? faceMatchInitial,
    TResult Function()? faceMatchLoading,
    TResult Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult Function(String message)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (faceMatchLoading != null) {
      return faceMatchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraInitial value) initial,
    required TResult Function(CameraInitialized value) initialized,
    required TResult Function(CameraError value) error,
    required TResult Function(LivelinessVerificationSuccess value)
        verificationSuccess,
    required TResult Function(LivelinessCountdown value) countdownInProgress,
    required TResult Function(LivelinessSelfieCapture value) selfieCapture,
    required TResult Function(FaceMatchInitial value) faceMatchInitial,
    required TResult Function(FaceMatchLoading value) faceMatchLoading,
    required TResult Function(FaceMatchSuccess value) faceMatchSuccess,
    required TResult Function(FaceMatchFailure value) faceMatchFailure,
    required TResult Function(FaceMatchServerDownError value)
        faceMatchServerDownError,
  }) {
    return faceMatchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraInitial value)? initial,
    TResult? Function(CameraInitialized value)? initialized,
    TResult? Function(CameraError value)? error,
    TResult? Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult? Function(LivelinessCountdown value)? countdownInProgress,
    TResult? Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult? Function(FaceMatchInitial value)? faceMatchInitial,
    TResult? Function(FaceMatchLoading value)? faceMatchLoading,
    TResult? Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult? Function(FaceMatchFailure value)? faceMatchFailure,
    TResult? Function(FaceMatchServerDownError value)? faceMatchServerDownError,
  }) {
    return faceMatchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraInitial value)? initial,
    TResult Function(CameraInitialized value)? initialized,
    TResult Function(CameraError value)? error,
    TResult Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult Function(LivelinessCountdown value)? countdownInProgress,
    TResult Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult Function(FaceMatchInitial value)? faceMatchInitial,
    TResult Function(FaceMatchLoading value)? faceMatchLoading,
    TResult Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult Function(FaceMatchFailure value)? faceMatchFailure,
    TResult Function(FaceMatchServerDownError value)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (faceMatchLoading != null) {
      return faceMatchLoading(this);
    }
    return orElse();
  }
}

abstract class FaceMatchLoading implements LivelinessDetectionState {
  const factory FaceMatchLoading() = _$FaceMatchLoadingImpl;
}

/// @nodoc
abstract class _$$FaceMatchSuccessImplCopyWith<$Res> {
  factory _$$FaceMatchSuccessImplCopyWith(_$FaceMatchSuccessImpl value,
          $Res Function(_$FaceMatchSuccessImpl) then) =
      __$$FaceMatchSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FaceMatchEntity entity, Uint8List selfieImage});

  $FaceMatchEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$FaceMatchSuccessImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionStateCopyWithImpl<$Res, _$FaceMatchSuccessImpl>
    implements _$$FaceMatchSuccessImplCopyWith<$Res> {
  __$$FaceMatchSuccessImplCopyWithImpl(_$FaceMatchSuccessImpl _value,
      $Res Function(_$FaceMatchSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? selfieImage = null,
  }) {
    return _then(_$FaceMatchSuccessImpl(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as FaceMatchEntity,
      selfieImage: null == selfieImage
          ? _value.selfieImage
          : selfieImage // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FaceMatchEntityCopyWith<$Res> get entity {
    return $FaceMatchEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$FaceMatchSuccessImpl implements FaceMatchSuccess {
  const _$FaceMatchSuccessImpl(
      {required this.entity, required this.selfieImage});

  @override
  final FaceMatchEntity entity;
  @override
  final Uint8List selfieImage;

  @override
  String toString() {
    return 'LivelinessDetectionState.faceMatchSuccess(entity: $entity, selfieImage: $selfieImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaceMatchSuccessImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            const DeepCollectionEquality()
                .equals(other.selfieImage, selfieImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, entity, const DeepCollectionEquality().hash(selfieImage));

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaceMatchSuccessImplCopyWith<_$FaceMatchSuccessImpl> get copyWith =>
      __$$FaceMatchSuccessImplCopyWithImpl<_$FaceMatchSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        initialized,
    required TResult Function(String message) error,
    required TResult Function() verificationSuccess,
    required TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        countdownInProgress,
    required TResult Function(Uint8List selfieImage) selfieCapture,
    required TResult Function() faceMatchInitial,
    required TResult Function() faceMatchLoading,
    required TResult Function(FaceMatchEntity entity, Uint8List selfieImage)
        faceMatchSuccess,
    required TResult Function(String message, Uint8List selfieImage)
        faceMatchFailure,
    required TResult Function(String message) faceMatchServerDownError,
  }) {
    return faceMatchSuccess(entity, selfieImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult? Function(String message)? error,
    TResult? Function()? verificationSuccess,
    TResult? Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult? Function(Uint8List selfieImage)? selfieCapture,
    TResult? Function()? faceMatchInitial,
    TResult? Function()? faceMatchLoading,
    TResult? Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult? Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult? Function(String message)? faceMatchServerDownError,
  }) {
    return faceMatchSuccess?.call(entity, selfieImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult Function(String message)? error,
    TResult Function()? verificationSuccess,
    TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult Function(Uint8List selfieImage)? selfieCapture,
    TResult Function()? faceMatchInitial,
    TResult Function()? faceMatchLoading,
    TResult Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult Function(String message)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (faceMatchSuccess != null) {
      return faceMatchSuccess(entity, selfieImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraInitial value) initial,
    required TResult Function(CameraInitialized value) initialized,
    required TResult Function(CameraError value) error,
    required TResult Function(LivelinessVerificationSuccess value)
        verificationSuccess,
    required TResult Function(LivelinessCountdown value) countdownInProgress,
    required TResult Function(LivelinessSelfieCapture value) selfieCapture,
    required TResult Function(FaceMatchInitial value) faceMatchInitial,
    required TResult Function(FaceMatchLoading value) faceMatchLoading,
    required TResult Function(FaceMatchSuccess value) faceMatchSuccess,
    required TResult Function(FaceMatchFailure value) faceMatchFailure,
    required TResult Function(FaceMatchServerDownError value)
        faceMatchServerDownError,
  }) {
    return faceMatchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraInitial value)? initial,
    TResult? Function(CameraInitialized value)? initialized,
    TResult? Function(CameraError value)? error,
    TResult? Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult? Function(LivelinessCountdown value)? countdownInProgress,
    TResult? Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult? Function(FaceMatchInitial value)? faceMatchInitial,
    TResult? Function(FaceMatchLoading value)? faceMatchLoading,
    TResult? Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult? Function(FaceMatchFailure value)? faceMatchFailure,
    TResult? Function(FaceMatchServerDownError value)? faceMatchServerDownError,
  }) {
    return faceMatchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraInitial value)? initial,
    TResult Function(CameraInitialized value)? initialized,
    TResult Function(CameraError value)? error,
    TResult Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult Function(LivelinessCountdown value)? countdownInProgress,
    TResult Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult Function(FaceMatchInitial value)? faceMatchInitial,
    TResult Function(FaceMatchLoading value)? faceMatchLoading,
    TResult Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult Function(FaceMatchFailure value)? faceMatchFailure,
    TResult Function(FaceMatchServerDownError value)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (faceMatchSuccess != null) {
      return faceMatchSuccess(this);
    }
    return orElse();
  }
}

abstract class FaceMatchSuccess implements LivelinessDetectionState {
  const factory FaceMatchSuccess(
      {required final FaceMatchEntity entity,
      required final Uint8List selfieImage}) = _$FaceMatchSuccessImpl;

  FaceMatchEntity get entity;
  Uint8List get selfieImage;

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaceMatchSuccessImplCopyWith<_$FaceMatchSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FaceMatchFailureImplCopyWith<$Res> {
  factory _$$FaceMatchFailureImplCopyWith(_$FaceMatchFailureImpl value,
          $Res Function(_$FaceMatchFailureImpl) then) =
      __$$FaceMatchFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, Uint8List selfieImage});
}

/// @nodoc
class __$$FaceMatchFailureImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionStateCopyWithImpl<$Res, _$FaceMatchFailureImpl>
    implements _$$FaceMatchFailureImplCopyWith<$Res> {
  __$$FaceMatchFailureImplCopyWithImpl(_$FaceMatchFailureImpl _value,
      $Res Function(_$FaceMatchFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? selfieImage = null,
  }) {
    return _then(_$FaceMatchFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      selfieImage: null == selfieImage
          ? _value.selfieImage
          : selfieImage // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$FaceMatchFailureImpl implements FaceMatchFailure {
  const _$FaceMatchFailureImpl(
      {required this.message, required this.selfieImage});

  @override
  final String message;
  @override
  final Uint8List selfieImage;

  @override
  String toString() {
    return 'LivelinessDetectionState.faceMatchFailure(message: $message, selfieImage: $selfieImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaceMatchFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other.selfieImage, selfieImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(selfieImage));

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaceMatchFailureImplCopyWith<_$FaceMatchFailureImpl> get copyWith =>
      __$$FaceMatchFailureImplCopyWithImpl<_$FaceMatchFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        initialized,
    required TResult Function(String message) error,
    required TResult Function() verificationSuccess,
    required TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        countdownInProgress,
    required TResult Function(Uint8List selfieImage) selfieCapture,
    required TResult Function() faceMatchInitial,
    required TResult Function() faceMatchLoading,
    required TResult Function(FaceMatchEntity entity, Uint8List selfieImage)
        faceMatchSuccess,
    required TResult Function(String message, Uint8List selfieImage)
        faceMatchFailure,
    required TResult Function(String message) faceMatchServerDownError,
  }) {
    return faceMatchFailure(message, selfieImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult? Function(String message)? error,
    TResult? Function()? verificationSuccess,
    TResult? Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult? Function(Uint8List selfieImage)? selfieCapture,
    TResult? Function()? faceMatchInitial,
    TResult? Function()? faceMatchLoading,
    TResult? Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult? Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult? Function(String message)? faceMatchServerDownError,
  }) {
    return faceMatchFailure?.call(message, selfieImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult Function(String message)? error,
    TResult Function()? verificationSuccess,
    TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult Function(Uint8List selfieImage)? selfieCapture,
    TResult Function()? faceMatchInitial,
    TResult Function()? faceMatchLoading,
    TResult Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult Function(String message)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (faceMatchFailure != null) {
      return faceMatchFailure(message, selfieImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraInitial value) initial,
    required TResult Function(CameraInitialized value) initialized,
    required TResult Function(CameraError value) error,
    required TResult Function(LivelinessVerificationSuccess value)
        verificationSuccess,
    required TResult Function(LivelinessCountdown value) countdownInProgress,
    required TResult Function(LivelinessSelfieCapture value) selfieCapture,
    required TResult Function(FaceMatchInitial value) faceMatchInitial,
    required TResult Function(FaceMatchLoading value) faceMatchLoading,
    required TResult Function(FaceMatchSuccess value) faceMatchSuccess,
    required TResult Function(FaceMatchFailure value) faceMatchFailure,
    required TResult Function(FaceMatchServerDownError value)
        faceMatchServerDownError,
  }) {
    return faceMatchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraInitial value)? initial,
    TResult? Function(CameraInitialized value)? initialized,
    TResult? Function(CameraError value)? error,
    TResult? Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult? Function(LivelinessCountdown value)? countdownInProgress,
    TResult? Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult? Function(FaceMatchInitial value)? faceMatchInitial,
    TResult? Function(FaceMatchLoading value)? faceMatchLoading,
    TResult? Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult? Function(FaceMatchFailure value)? faceMatchFailure,
    TResult? Function(FaceMatchServerDownError value)? faceMatchServerDownError,
  }) {
    return faceMatchFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraInitial value)? initial,
    TResult Function(CameraInitialized value)? initialized,
    TResult Function(CameraError value)? error,
    TResult Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult Function(LivelinessCountdown value)? countdownInProgress,
    TResult Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult Function(FaceMatchInitial value)? faceMatchInitial,
    TResult Function(FaceMatchLoading value)? faceMatchLoading,
    TResult Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult Function(FaceMatchFailure value)? faceMatchFailure,
    TResult Function(FaceMatchServerDownError value)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (faceMatchFailure != null) {
      return faceMatchFailure(this);
    }
    return orElse();
  }
}

abstract class FaceMatchFailure implements LivelinessDetectionState {
  const factory FaceMatchFailure(
      {required final String message,
      required final Uint8List selfieImage}) = _$FaceMatchFailureImpl;

  String get message;
  Uint8List get selfieImage;

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaceMatchFailureImplCopyWith<_$FaceMatchFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FaceMatchServerDownErrorImplCopyWith<$Res> {
  factory _$$FaceMatchServerDownErrorImplCopyWith(
          _$FaceMatchServerDownErrorImpl value,
          $Res Function(_$FaceMatchServerDownErrorImpl) then) =
      __$$FaceMatchServerDownErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FaceMatchServerDownErrorImplCopyWithImpl<$Res>
    extends _$LivelinessDetectionStateCopyWithImpl<$Res,
        _$FaceMatchServerDownErrorImpl>
    implements _$$FaceMatchServerDownErrorImplCopyWith<$Res> {
  __$$FaceMatchServerDownErrorImplCopyWithImpl(
      _$FaceMatchServerDownErrorImpl _value,
      $Res Function(_$FaceMatchServerDownErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FaceMatchServerDownErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FaceMatchServerDownErrorImpl implements FaceMatchServerDownError {
  const _$FaceMatchServerDownErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LivelinessDetectionState.faceMatchServerDownError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaceMatchServerDownErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaceMatchServerDownErrorImplCopyWith<_$FaceMatchServerDownErrorImpl>
      get copyWith => __$$FaceMatchServerDownErrorImplCopyWithImpl<
          _$FaceMatchServerDownErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        initialized,
    required TResult Function(String message) error,
    required TResult Function() verificationSuccess,
    required TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)
        countdownInProgress,
    required TResult Function(Uint8List selfieImage) selfieCapture,
    required TResult Function() faceMatchInitial,
    required TResult Function() faceMatchLoading,
    required TResult Function(FaceMatchEntity entity, Uint8List selfieImage)
        faceMatchSuccess,
    required TResult Function(String message, Uint8List selfieImage)
        faceMatchFailure,
    required TResult Function(String message) faceMatchServerDownError,
  }) {
    return faceMatchServerDownError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult? Function(String message)? error,
    TResult? Function()? verificationSuccess,
    TResult? Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult? Function(Uint8List selfieImage)? selfieCapture,
    TResult? Function()? faceMatchInitial,
    TResult? Function()? faceMatchLoading,
    TResult? Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult? Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult? Function(String message)? faceMatchServerDownError,
  }) {
    return faceMatchServerDownError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        initialized,
    TResult Function(String message)? error,
    TResult Function()? verificationSuccess,
    TResult Function(
            int countdown,
            int textureId,
            bool isFaceDetected,
            bool isBlinking,
            bool hasCompletedBlinking,
            bool hasCompletedRightMovement,
            bool hasCompletedLeftMovement,
            bool isVerificationCompleted,
            int width,
            int height)?
        countdownInProgress,
    TResult Function(Uint8List selfieImage)? selfieCapture,
    TResult Function()? faceMatchInitial,
    TResult Function()? faceMatchLoading,
    TResult Function(FaceMatchEntity entity, Uint8List selfieImage)?
        faceMatchSuccess,
    TResult Function(String message, Uint8List selfieImage)? faceMatchFailure,
    TResult Function(String message)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (faceMatchServerDownError != null) {
      return faceMatchServerDownError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CameraInitial value) initial,
    required TResult Function(CameraInitialized value) initialized,
    required TResult Function(CameraError value) error,
    required TResult Function(LivelinessVerificationSuccess value)
        verificationSuccess,
    required TResult Function(LivelinessCountdown value) countdownInProgress,
    required TResult Function(LivelinessSelfieCapture value) selfieCapture,
    required TResult Function(FaceMatchInitial value) faceMatchInitial,
    required TResult Function(FaceMatchLoading value) faceMatchLoading,
    required TResult Function(FaceMatchSuccess value) faceMatchSuccess,
    required TResult Function(FaceMatchFailure value) faceMatchFailure,
    required TResult Function(FaceMatchServerDownError value)
        faceMatchServerDownError,
  }) {
    return faceMatchServerDownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CameraInitial value)? initial,
    TResult? Function(CameraInitialized value)? initialized,
    TResult? Function(CameraError value)? error,
    TResult? Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult? Function(LivelinessCountdown value)? countdownInProgress,
    TResult? Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult? Function(FaceMatchInitial value)? faceMatchInitial,
    TResult? Function(FaceMatchLoading value)? faceMatchLoading,
    TResult? Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult? Function(FaceMatchFailure value)? faceMatchFailure,
    TResult? Function(FaceMatchServerDownError value)? faceMatchServerDownError,
  }) {
    return faceMatchServerDownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CameraInitial value)? initial,
    TResult Function(CameraInitialized value)? initialized,
    TResult Function(CameraError value)? error,
    TResult Function(LivelinessVerificationSuccess value)? verificationSuccess,
    TResult Function(LivelinessCountdown value)? countdownInProgress,
    TResult Function(LivelinessSelfieCapture value)? selfieCapture,
    TResult Function(FaceMatchInitial value)? faceMatchInitial,
    TResult Function(FaceMatchLoading value)? faceMatchLoading,
    TResult Function(FaceMatchSuccess value)? faceMatchSuccess,
    TResult Function(FaceMatchFailure value)? faceMatchFailure,
    TResult Function(FaceMatchServerDownError value)? faceMatchServerDownError,
    required TResult orElse(),
  }) {
    if (faceMatchServerDownError != null) {
      return faceMatchServerDownError(this);
    }
    return orElse();
  }
}

abstract class FaceMatchServerDownError implements LivelinessDetectionState {
  const factory FaceMatchServerDownError({required final String message}) =
      _$FaceMatchServerDownErrorImpl;

  String get message;

  /// Create a copy of LivelinessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaceMatchServerDownErrorImplCopyWith<_$FaceMatchServerDownErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
