// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_business_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetBusinessDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBusinessTypes,
    required TResult Function() fetchModeOfOperations,
    required TResult Function() fetchTurnovers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBusinessTypes,
    TResult? Function()? fetchModeOfOperations,
    TResult? Function()? fetchTurnovers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBusinessTypes,
    TResult Function()? fetchModeOfOperations,
    TResult Function()? fetchTurnovers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchBusinessTypes value) fetchBusinessTypes,
    required TResult Function(FetchModeOfOperations value)
        fetchModeOfOperations,
    required TResult Function(FetchTurnovers value) fetchTurnovers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBusinessTypes value)? fetchBusinessTypes,
    TResult? Function(FetchModeOfOperations value)? fetchModeOfOperations,
    TResult? Function(FetchTurnovers value)? fetchTurnovers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBusinessTypes value)? fetchBusinessTypes,
    TResult Function(FetchModeOfOperations value)? fetchModeOfOperations,
    TResult Function(FetchTurnovers value)? fetchTurnovers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBusinessDetailsEventCopyWith<$Res> {
  factory $GetBusinessDetailsEventCopyWith(GetBusinessDetailsEvent value,
          $Res Function(GetBusinessDetailsEvent) then) =
      _$GetBusinessDetailsEventCopyWithImpl<$Res, GetBusinessDetailsEvent>;
}

/// @nodoc
class _$GetBusinessDetailsEventCopyWithImpl<$Res,
        $Val extends GetBusinessDetailsEvent>
    implements $GetBusinessDetailsEventCopyWith<$Res> {
  _$GetBusinessDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetBusinessDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchBusinessTypesImplCopyWith<$Res> {
  factory _$$FetchBusinessTypesImplCopyWith(_$FetchBusinessTypesImpl value,
          $Res Function(_$FetchBusinessTypesImpl) then) =
      __$$FetchBusinessTypesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchBusinessTypesImplCopyWithImpl<$Res>
    extends _$GetBusinessDetailsEventCopyWithImpl<$Res,
        _$FetchBusinessTypesImpl>
    implements _$$FetchBusinessTypesImplCopyWith<$Res> {
  __$$FetchBusinessTypesImplCopyWithImpl(_$FetchBusinessTypesImpl _value,
      $Res Function(_$FetchBusinessTypesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetBusinessDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchBusinessTypesImpl implements FetchBusinessTypes {
  const _$FetchBusinessTypesImpl();

  @override
  String toString() {
    return 'GetBusinessDetailsEvent.fetchBusinessTypes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchBusinessTypesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBusinessTypes,
    required TResult Function() fetchModeOfOperations,
    required TResult Function() fetchTurnovers,
  }) {
    return fetchBusinessTypes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBusinessTypes,
    TResult? Function()? fetchModeOfOperations,
    TResult? Function()? fetchTurnovers,
  }) {
    return fetchBusinessTypes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBusinessTypes,
    TResult Function()? fetchModeOfOperations,
    TResult Function()? fetchTurnovers,
    required TResult orElse(),
  }) {
    if (fetchBusinessTypes != null) {
      return fetchBusinessTypes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchBusinessTypes value) fetchBusinessTypes,
    required TResult Function(FetchModeOfOperations value)
        fetchModeOfOperations,
    required TResult Function(FetchTurnovers value) fetchTurnovers,
  }) {
    return fetchBusinessTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBusinessTypes value)? fetchBusinessTypes,
    TResult? Function(FetchModeOfOperations value)? fetchModeOfOperations,
    TResult? Function(FetchTurnovers value)? fetchTurnovers,
  }) {
    return fetchBusinessTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBusinessTypes value)? fetchBusinessTypes,
    TResult Function(FetchModeOfOperations value)? fetchModeOfOperations,
    TResult Function(FetchTurnovers value)? fetchTurnovers,
    required TResult orElse(),
  }) {
    if (fetchBusinessTypes != null) {
      return fetchBusinessTypes(this);
    }
    return orElse();
  }
}

abstract class FetchBusinessTypes implements GetBusinessDetailsEvent {
  const factory FetchBusinessTypes() = _$FetchBusinessTypesImpl;
}

/// @nodoc
abstract class _$$FetchModeOfOperationsImplCopyWith<$Res> {
  factory _$$FetchModeOfOperationsImplCopyWith(
          _$FetchModeOfOperationsImpl value,
          $Res Function(_$FetchModeOfOperationsImpl) then) =
      __$$FetchModeOfOperationsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchModeOfOperationsImplCopyWithImpl<$Res>
    extends _$GetBusinessDetailsEventCopyWithImpl<$Res,
        _$FetchModeOfOperationsImpl>
    implements _$$FetchModeOfOperationsImplCopyWith<$Res> {
  __$$FetchModeOfOperationsImplCopyWithImpl(_$FetchModeOfOperationsImpl _value,
      $Res Function(_$FetchModeOfOperationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetBusinessDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchModeOfOperationsImpl implements FetchModeOfOperations {
  const _$FetchModeOfOperationsImpl();

  @override
  String toString() {
    return 'GetBusinessDetailsEvent.fetchModeOfOperations()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchModeOfOperationsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBusinessTypes,
    required TResult Function() fetchModeOfOperations,
    required TResult Function() fetchTurnovers,
  }) {
    return fetchModeOfOperations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBusinessTypes,
    TResult? Function()? fetchModeOfOperations,
    TResult? Function()? fetchTurnovers,
  }) {
    return fetchModeOfOperations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBusinessTypes,
    TResult Function()? fetchModeOfOperations,
    TResult Function()? fetchTurnovers,
    required TResult orElse(),
  }) {
    if (fetchModeOfOperations != null) {
      return fetchModeOfOperations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchBusinessTypes value) fetchBusinessTypes,
    required TResult Function(FetchModeOfOperations value)
        fetchModeOfOperations,
    required TResult Function(FetchTurnovers value) fetchTurnovers,
  }) {
    return fetchModeOfOperations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBusinessTypes value)? fetchBusinessTypes,
    TResult? Function(FetchModeOfOperations value)? fetchModeOfOperations,
    TResult? Function(FetchTurnovers value)? fetchTurnovers,
  }) {
    return fetchModeOfOperations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBusinessTypes value)? fetchBusinessTypes,
    TResult Function(FetchModeOfOperations value)? fetchModeOfOperations,
    TResult Function(FetchTurnovers value)? fetchTurnovers,
    required TResult orElse(),
  }) {
    if (fetchModeOfOperations != null) {
      return fetchModeOfOperations(this);
    }
    return orElse();
  }
}

abstract class FetchModeOfOperations implements GetBusinessDetailsEvent {
  const factory FetchModeOfOperations() = _$FetchModeOfOperationsImpl;
}

/// @nodoc
abstract class _$$FetchTurnoversImplCopyWith<$Res> {
  factory _$$FetchTurnoversImplCopyWith(_$FetchTurnoversImpl value,
          $Res Function(_$FetchTurnoversImpl) then) =
      __$$FetchTurnoversImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchTurnoversImplCopyWithImpl<$Res>
    extends _$GetBusinessDetailsEventCopyWithImpl<$Res, _$FetchTurnoversImpl>
    implements _$$FetchTurnoversImplCopyWith<$Res> {
  __$$FetchTurnoversImplCopyWithImpl(
      _$FetchTurnoversImpl _value, $Res Function(_$FetchTurnoversImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetBusinessDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchTurnoversImpl implements FetchTurnovers {
  const _$FetchTurnoversImpl();

  @override
  String toString() {
    return 'GetBusinessDetailsEvent.fetchTurnovers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchTurnoversImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBusinessTypes,
    required TResult Function() fetchModeOfOperations,
    required TResult Function() fetchTurnovers,
  }) {
    return fetchTurnovers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchBusinessTypes,
    TResult? Function()? fetchModeOfOperations,
    TResult? Function()? fetchTurnovers,
  }) {
    return fetchTurnovers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBusinessTypes,
    TResult Function()? fetchModeOfOperations,
    TResult Function()? fetchTurnovers,
    required TResult orElse(),
  }) {
    if (fetchTurnovers != null) {
      return fetchTurnovers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchBusinessTypes value) fetchBusinessTypes,
    required TResult Function(FetchModeOfOperations value)
        fetchModeOfOperations,
    required TResult Function(FetchTurnovers value) fetchTurnovers,
  }) {
    return fetchTurnovers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchBusinessTypes value)? fetchBusinessTypes,
    TResult? Function(FetchModeOfOperations value)? fetchModeOfOperations,
    TResult? Function(FetchTurnovers value)? fetchTurnovers,
  }) {
    return fetchTurnovers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBusinessTypes value)? fetchBusinessTypes,
    TResult Function(FetchModeOfOperations value)? fetchModeOfOperations,
    TResult Function(FetchTurnovers value)? fetchTurnovers,
    required TResult orElse(),
  }) {
    if (fetchTurnovers != null) {
      return fetchTurnovers(this);
    }
    return orElse();
  }
}

abstract class FetchTurnovers implements GetBusinessDetailsEvent {
  const factory FetchTurnovers() = _$FetchTurnoversImpl;
}
