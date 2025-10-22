// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectivityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectivityInitial value) initial,
    required TResult Function(ConnectivityConnected value) connected,
    required TResult Function(ConnectivityDisconnected value) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityInitial value)? initial,
    TResult? Function(ConnectivityConnected value)? connected,
    TResult? Function(ConnectivityDisconnected value)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityInitial value)? initial,
    TResult Function(ConnectivityConnected value)? connected,
    TResult Function(ConnectivityDisconnected value)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res, ConnectivityState>;
}

/// @nodoc
class _$ConnectivityStateCopyWithImpl<$Res, $Val extends ConnectivityState>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConnectivityState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ConnectivityInitialImplCopyWith<$Res> {
  factory _$$ConnectivityInitialImplCopyWith(_$ConnectivityInitialImpl value,
          $Res Function(_$ConnectivityInitialImpl) then) =
      __$$ConnectivityInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectivityInitialImplCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$ConnectivityInitialImpl>
    implements _$$ConnectivityInitialImplCopyWith<$Res> {
  __$$ConnectivityInitialImplCopyWithImpl(_$ConnectivityInitialImpl _value,
      $Res Function(_$ConnectivityInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectivityState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectivityInitialImpl implements ConnectivityInitial {
  const _$ConnectivityInitialImpl();

  @override
  String toString() {
    return 'ConnectivityState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
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
    required TResult Function(ConnectivityInitial value) initial,
    required TResult Function(ConnectivityConnected value) connected,
    required TResult Function(ConnectivityDisconnected value) disconnected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityInitial value)? initial,
    TResult? Function(ConnectivityConnected value)? connected,
    TResult? Function(ConnectivityDisconnected value)? disconnected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityInitial value)? initial,
    TResult Function(ConnectivityConnected value)? connected,
    TResult Function(ConnectivityDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ConnectivityInitial implements ConnectivityState {
  const factory ConnectivityInitial() = _$ConnectivityInitialImpl;
}

/// @nodoc
abstract class _$$ConnectivityConnectedImplCopyWith<$Res> {
  factory _$$ConnectivityConnectedImplCopyWith(
          _$ConnectivityConnectedImpl value,
          $Res Function(_$ConnectivityConnectedImpl) then) =
      __$$ConnectivityConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectivityConnectedImplCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$ConnectivityConnectedImpl>
    implements _$$ConnectivityConnectedImplCopyWith<$Res> {
  __$$ConnectivityConnectedImplCopyWithImpl(_$ConnectivityConnectedImpl _value,
      $Res Function(_$ConnectivityConnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectivityState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectivityConnectedImpl implements ConnectivityConnected {
  const _$ConnectivityConnectedImpl();

  @override
  String toString() {
    return 'ConnectivityState.connected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(ConnectivityInitial value) initial,
    required TResult Function(ConnectivityConnected value) connected,
    required TResult Function(ConnectivityDisconnected value) disconnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityInitial value)? initial,
    TResult? Function(ConnectivityConnected value)? connected,
    TResult? Function(ConnectivityDisconnected value)? disconnected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityInitial value)? initial,
    TResult Function(ConnectivityConnected value)? connected,
    TResult Function(ConnectivityDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class ConnectivityConnected implements ConnectivityState {
  const factory ConnectivityConnected() = _$ConnectivityConnectedImpl;
}

/// @nodoc
abstract class _$$ConnectivityDisconnectedImplCopyWith<$Res> {
  factory _$$ConnectivityDisconnectedImplCopyWith(
          _$ConnectivityDisconnectedImpl value,
          $Res Function(_$ConnectivityDisconnectedImpl) then) =
      __$$ConnectivityDisconnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectivityDisconnectedImplCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res,
        _$ConnectivityDisconnectedImpl>
    implements _$$ConnectivityDisconnectedImplCopyWith<$Res> {
  __$$ConnectivityDisconnectedImplCopyWithImpl(
      _$ConnectivityDisconnectedImpl _value,
      $Res Function(_$ConnectivityDisconnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnectivityState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectivityDisconnectedImpl implements ConnectivityDisconnected {
  const _$ConnectivityDisconnectedImpl();

  @override
  String toString() {
    return 'ConnectivityState.disconnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityDisconnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(ConnectivityInitial value) initial,
    required TResult Function(ConnectivityConnected value) connected,
    required TResult Function(ConnectivityDisconnected value) disconnected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConnectivityInitial value)? initial,
    TResult? Function(ConnectivityConnected value)? connected,
    TResult? Function(ConnectivityDisconnected value)? disconnected,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectivityInitial value)? initial,
    TResult Function(ConnectivityConnected value)? connected,
    TResult Function(ConnectivityDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class ConnectivityDisconnected implements ConnectivityState {
  const factory ConnectivityDisconnected() = _$ConnectivityDisconnectedImpl;
}
