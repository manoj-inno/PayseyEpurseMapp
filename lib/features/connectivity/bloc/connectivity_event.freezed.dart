// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeConnectivity value) initialize,
    required TResult Function(ConnectivityConnectedEvent value) connected,
    required TResult Function(ConnectivityDisconnectedEvent value) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeConnectivity value)? initialize,
    TResult? Function(ConnectivityConnectedEvent value)? connected,
    TResult? Function(ConnectivityDisconnectedEvent value)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeConnectivity value)? initialize,
    TResult Function(ConnectivityConnectedEvent value)? connected,
    TResult Function(ConnectivityDisconnectedEvent value)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityEventCopyWith<$Res> {
  factory $ConnectivityEventCopyWith(
          ConnectivityEvent value, $Res Function(ConnectivityEvent) then) =
      _$ConnectivityEventCopyWithImpl<$Res, ConnectivityEvent>;
}

/// @nodoc
class _$ConnectivityEventCopyWithImpl<$Res, $Val extends ConnectivityEvent>
    implements $ConnectivityEventCopyWith<$Res> {
  _$ConnectivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConnectivityEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeConnectivityImplCopyWith<$Res> {
  factory _$$InitializeConnectivityImplCopyWith(
          _$InitializeConnectivityImpl value,
          $Res Function(_$InitializeConnectivityImpl) then) =
      __$$InitializeConnectivityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeConnectivityImplCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res, _$InitializeConnectivityImpl>
    implements _$$InitializeConnectivityImplCopyWith<$Res> {
  __$$InitializeConnectivityImplCopyWithImpl(
      _$InitializeConnectivityImpl _value,
      $Res Function(_$InitializeConnectivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectivityEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeConnectivityImpl implements InitializeConnectivity {
  const _$InitializeConnectivityImpl();

  @override
  String toString() {
    return 'ConnectivityEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeConnectivityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeConnectivity value) initialize,
    required TResult Function(ConnectivityConnectedEvent value) connected,
    required TResult Function(ConnectivityDisconnectedEvent value) disconnected,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeConnectivity value)? initialize,
    TResult? Function(ConnectivityConnectedEvent value)? connected,
    TResult? Function(ConnectivityDisconnectedEvent value)? disconnected,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeConnectivity value)? initialize,
    TResult Function(ConnectivityConnectedEvent value)? connected,
    TResult Function(ConnectivityDisconnectedEvent value)? disconnected,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class InitializeConnectivity implements ConnectivityEvent {
  const factory InitializeConnectivity() = _$InitializeConnectivityImpl;
}

/// @nodoc
abstract class _$$ConnectivityConnectedEventImplCopyWith<$Res> {
  factory _$$ConnectivityConnectedEventImplCopyWith(
          _$ConnectivityConnectedEventImpl value,
          $Res Function(_$ConnectivityConnectedEventImpl) then) =
      __$$ConnectivityConnectedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectivityConnectedEventImplCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res,
        _$ConnectivityConnectedEventImpl>
    implements _$$ConnectivityConnectedEventImplCopyWith<$Res> {
  __$$ConnectivityConnectedEventImplCopyWithImpl(
      _$ConnectivityConnectedEventImpl _value,
      $Res Function(_$ConnectivityConnectedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectivityEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectivityConnectedEventImpl implements ConnectivityConnectedEvent {
  const _$ConnectivityConnectedEventImpl();

  @override
  String toString() {
    return 'ConnectivityEvent.connected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityConnectedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeConnectivity value) initialize,
    required TResult Function(ConnectivityConnectedEvent value) connected,
    required TResult Function(ConnectivityDisconnectedEvent value) disconnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeConnectivity value)? initialize,
    TResult? Function(ConnectivityConnectedEvent value)? connected,
    TResult? Function(ConnectivityDisconnectedEvent value)? disconnected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeConnectivity value)? initialize,
    TResult Function(ConnectivityConnectedEvent value)? connected,
    TResult Function(ConnectivityDisconnectedEvent value)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class ConnectivityConnectedEvent implements ConnectivityEvent {
  const factory ConnectivityConnectedEvent() = _$ConnectivityConnectedEventImpl;
}

/// @nodoc
abstract class _$$ConnectivityDisconnectedEventImplCopyWith<$Res> {
  factory _$$ConnectivityDisconnectedEventImplCopyWith(
          _$ConnectivityDisconnectedEventImpl value,
          $Res Function(_$ConnectivityDisconnectedEventImpl) then) =
      __$$ConnectivityDisconnectedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectivityDisconnectedEventImplCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res,
        _$ConnectivityDisconnectedEventImpl>
    implements _$$ConnectivityDisconnectedEventImplCopyWith<$Res> {
  __$$ConnectivityDisconnectedEventImplCopyWithImpl(
      _$ConnectivityDisconnectedEventImpl _value,
      $Res Function(_$ConnectivityDisconnectedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectivityEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectivityDisconnectedEventImpl
    implements ConnectivityDisconnectedEvent {
  const _$ConnectivityDisconnectedEventImpl();

  @override
  String toString() {
    return 'ConnectivityEvent.disconnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityDisconnectedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeConnectivity value) initialize,
    required TResult Function(ConnectivityConnectedEvent value) connected,
    required TResult Function(ConnectivityDisconnectedEvent value) disconnected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeConnectivity value)? initialize,
    TResult? Function(ConnectivityConnectedEvent value)? connected,
    TResult? Function(ConnectivityDisconnectedEvent value)? disconnected,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeConnectivity value)? initialize,
    TResult Function(ConnectivityConnectedEvent value)? connected,
    TResult Function(ConnectivityDisconnectedEvent value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class ConnectivityDisconnectedEvent implements ConnectivityEvent {
  const factory ConnectivityDisconnectedEvent() =
      _$ConnectivityDisconnectedEventImpl;
}
