// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_type_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerTypeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCustomerTypes,
    required TResult Function() fetchAccountTypes,
    required TResult Function(int accountTypeId, int customerTypeId)
        getAccountSubTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCustomerTypes,
    TResult? Function()? fetchAccountTypes,
    TResult? Function(int accountTypeId, int customerTypeId)?
        getAccountSubTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCustomerTypes,
    TResult Function()? fetchAccountTypes,
    TResult Function(int accountTypeId, int customerTypeId)? getAccountSubTypes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCustomerTypes value) fetchCustomerTypes,
    required TResult Function(FetchAccountTypesEvent value) fetchAccountTypes,
    required TResult Function(GetAccountSubTypesEvent value) getAccountSubTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCustomerTypes value)? fetchCustomerTypes,
    TResult? Function(FetchAccountTypesEvent value)? fetchAccountTypes,
    TResult? Function(GetAccountSubTypesEvent value)? getAccountSubTypes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCustomerTypes value)? fetchCustomerTypes,
    TResult Function(FetchAccountTypesEvent value)? fetchAccountTypes,
    TResult Function(GetAccountSubTypesEvent value)? getAccountSubTypes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerTypeEventCopyWith<$Res> {
  factory $CustomerTypeEventCopyWith(
          CustomerTypeEvent value, $Res Function(CustomerTypeEvent) then) =
      _$CustomerTypeEventCopyWithImpl<$Res, CustomerTypeEvent>;
}

/// @nodoc
class _$CustomerTypeEventCopyWithImpl<$Res, $Val extends CustomerTypeEvent>
    implements $CustomerTypeEventCopyWith<$Res> {
  _$CustomerTypeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerTypeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchCustomerTypesImplCopyWith<$Res> {
  factory _$$FetchCustomerTypesImplCopyWith(_$FetchCustomerTypesImpl value,
          $Res Function(_$FetchCustomerTypesImpl) then) =
      __$$FetchCustomerTypesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchCustomerTypesImplCopyWithImpl<$Res>
    extends _$CustomerTypeEventCopyWithImpl<$Res, _$FetchCustomerTypesImpl>
    implements _$$FetchCustomerTypesImplCopyWith<$Res> {
  __$$FetchCustomerTypesImplCopyWithImpl(_$FetchCustomerTypesImpl _value,
      $Res Function(_$FetchCustomerTypesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerTypeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchCustomerTypesImpl implements FetchCustomerTypes {
  const _$FetchCustomerTypesImpl();

  @override
  String toString() {
    return 'CustomerTypeEvent.fetchCustomerTypes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchCustomerTypesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCustomerTypes,
    required TResult Function() fetchAccountTypes,
    required TResult Function(int accountTypeId, int customerTypeId)
        getAccountSubTypes,
  }) {
    return fetchCustomerTypes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCustomerTypes,
    TResult? Function()? fetchAccountTypes,
    TResult? Function(int accountTypeId, int customerTypeId)?
        getAccountSubTypes,
  }) {
    return fetchCustomerTypes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCustomerTypes,
    TResult Function()? fetchAccountTypes,
    TResult Function(int accountTypeId, int customerTypeId)? getAccountSubTypes,
    required TResult orElse(),
  }) {
    if (fetchCustomerTypes != null) {
      return fetchCustomerTypes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCustomerTypes value) fetchCustomerTypes,
    required TResult Function(FetchAccountTypesEvent value) fetchAccountTypes,
    required TResult Function(GetAccountSubTypesEvent value) getAccountSubTypes,
  }) {
    return fetchCustomerTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCustomerTypes value)? fetchCustomerTypes,
    TResult? Function(FetchAccountTypesEvent value)? fetchAccountTypes,
    TResult? Function(GetAccountSubTypesEvent value)? getAccountSubTypes,
  }) {
    return fetchCustomerTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCustomerTypes value)? fetchCustomerTypes,
    TResult Function(FetchAccountTypesEvent value)? fetchAccountTypes,
    TResult Function(GetAccountSubTypesEvent value)? getAccountSubTypes,
    required TResult orElse(),
  }) {
    if (fetchCustomerTypes != null) {
      return fetchCustomerTypes(this);
    }
    return orElse();
  }
}

abstract class FetchCustomerTypes implements CustomerTypeEvent {
  const factory FetchCustomerTypes() = _$FetchCustomerTypesImpl;
}

/// @nodoc
abstract class _$$FetchAccountTypesEventImplCopyWith<$Res> {
  factory _$$FetchAccountTypesEventImplCopyWith(
          _$FetchAccountTypesEventImpl value,
          $Res Function(_$FetchAccountTypesEventImpl) then) =
      __$$FetchAccountTypesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAccountTypesEventImplCopyWithImpl<$Res>
    extends _$CustomerTypeEventCopyWithImpl<$Res, _$FetchAccountTypesEventImpl>
    implements _$$FetchAccountTypesEventImplCopyWith<$Res> {
  __$$FetchAccountTypesEventImplCopyWithImpl(
      _$FetchAccountTypesEventImpl _value,
      $Res Function(_$FetchAccountTypesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerTypeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAccountTypesEventImpl implements FetchAccountTypesEvent {
  const _$FetchAccountTypesEventImpl();

  @override
  String toString() {
    return 'CustomerTypeEvent.fetchAccountTypes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAccountTypesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCustomerTypes,
    required TResult Function() fetchAccountTypes,
    required TResult Function(int accountTypeId, int customerTypeId)
        getAccountSubTypes,
  }) {
    return fetchAccountTypes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCustomerTypes,
    TResult? Function()? fetchAccountTypes,
    TResult? Function(int accountTypeId, int customerTypeId)?
        getAccountSubTypes,
  }) {
    return fetchAccountTypes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCustomerTypes,
    TResult Function()? fetchAccountTypes,
    TResult Function(int accountTypeId, int customerTypeId)? getAccountSubTypes,
    required TResult orElse(),
  }) {
    if (fetchAccountTypes != null) {
      return fetchAccountTypes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCustomerTypes value) fetchCustomerTypes,
    required TResult Function(FetchAccountTypesEvent value) fetchAccountTypes,
    required TResult Function(GetAccountSubTypesEvent value) getAccountSubTypes,
  }) {
    return fetchAccountTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCustomerTypes value)? fetchCustomerTypes,
    TResult? Function(FetchAccountTypesEvent value)? fetchAccountTypes,
    TResult? Function(GetAccountSubTypesEvent value)? getAccountSubTypes,
  }) {
    return fetchAccountTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCustomerTypes value)? fetchCustomerTypes,
    TResult Function(FetchAccountTypesEvent value)? fetchAccountTypes,
    TResult Function(GetAccountSubTypesEvent value)? getAccountSubTypes,
    required TResult orElse(),
  }) {
    if (fetchAccountTypes != null) {
      return fetchAccountTypes(this);
    }
    return orElse();
  }
}

abstract class FetchAccountTypesEvent implements CustomerTypeEvent {
  const factory FetchAccountTypesEvent() = _$FetchAccountTypesEventImpl;
}

/// @nodoc
abstract class _$$GetAccountSubTypesEventImplCopyWith<$Res> {
  factory _$$GetAccountSubTypesEventImplCopyWith(
          _$GetAccountSubTypesEventImpl value,
          $Res Function(_$GetAccountSubTypesEventImpl) then) =
      __$$GetAccountSubTypesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int accountTypeId, int customerTypeId});
}

/// @nodoc
class __$$GetAccountSubTypesEventImplCopyWithImpl<$Res>
    extends _$CustomerTypeEventCopyWithImpl<$Res, _$GetAccountSubTypesEventImpl>
    implements _$$GetAccountSubTypesEventImplCopyWith<$Res> {
  __$$GetAccountSubTypesEventImplCopyWithImpl(
      _$GetAccountSubTypesEventImpl _value,
      $Res Function(_$GetAccountSubTypesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerTypeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountTypeId = null,
    Object? customerTypeId = null,
  }) {
    return _then(_$GetAccountSubTypesEventImpl(
      accountTypeId: null == accountTypeId
          ? _value.accountTypeId
          : accountTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      customerTypeId: null == customerTypeId
          ? _value.customerTypeId
          : customerTypeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAccountSubTypesEventImpl implements GetAccountSubTypesEvent {
  const _$GetAccountSubTypesEventImpl(
      {required this.accountTypeId, required this.customerTypeId});

  @override
  final int accountTypeId;
  @override
  final int customerTypeId;

  @override
  String toString() {
    return 'CustomerTypeEvent.getAccountSubTypes(accountTypeId: $accountTypeId, customerTypeId: $customerTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccountSubTypesEventImpl &&
            (identical(other.accountTypeId, accountTypeId) ||
                other.accountTypeId == accountTypeId) &&
            (identical(other.customerTypeId, customerTypeId) ||
                other.customerTypeId == customerTypeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountTypeId, customerTypeId);

  /// Create a copy of CustomerTypeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAccountSubTypesEventImplCopyWith<_$GetAccountSubTypesEventImpl>
      get copyWith => __$$GetAccountSubTypesEventImplCopyWithImpl<
          _$GetAccountSubTypesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchCustomerTypes,
    required TResult Function() fetchAccountTypes,
    required TResult Function(int accountTypeId, int customerTypeId)
        getAccountSubTypes,
  }) {
    return getAccountSubTypes(accountTypeId, customerTypeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchCustomerTypes,
    TResult? Function()? fetchAccountTypes,
    TResult? Function(int accountTypeId, int customerTypeId)?
        getAccountSubTypes,
  }) {
    return getAccountSubTypes?.call(accountTypeId, customerTypeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchCustomerTypes,
    TResult Function()? fetchAccountTypes,
    TResult Function(int accountTypeId, int customerTypeId)? getAccountSubTypes,
    required TResult orElse(),
  }) {
    if (getAccountSubTypes != null) {
      return getAccountSubTypes(accountTypeId, customerTypeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchCustomerTypes value) fetchCustomerTypes,
    required TResult Function(FetchAccountTypesEvent value) fetchAccountTypes,
    required TResult Function(GetAccountSubTypesEvent value) getAccountSubTypes,
  }) {
    return getAccountSubTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchCustomerTypes value)? fetchCustomerTypes,
    TResult? Function(FetchAccountTypesEvent value)? fetchAccountTypes,
    TResult? Function(GetAccountSubTypesEvent value)? getAccountSubTypes,
  }) {
    return getAccountSubTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchCustomerTypes value)? fetchCustomerTypes,
    TResult Function(FetchAccountTypesEvent value)? fetchAccountTypes,
    TResult Function(GetAccountSubTypesEvent value)? getAccountSubTypes,
    required TResult orElse(),
  }) {
    if (getAccountSubTypes != null) {
      return getAccountSubTypes(this);
    }
    return orElse();
  }
}

abstract class GetAccountSubTypesEvent implements CustomerTypeEvent {
  const factory GetAccountSubTypesEvent(
      {required final int accountTypeId,
      required final int customerTypeId}) = _$GetAccountSubTypesEventImpl;

  int get accountTypeId;
  int get customerTypeId;

  /// Create a copy of CustomerTypeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAccountSubTypesEventImplCopyWith<_$GetAccountSubTypesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
