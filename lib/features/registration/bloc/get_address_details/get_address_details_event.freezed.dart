// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_address_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAddressDetailsEvent {
  int get entityType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int entityType) getAddressTypes,
    required TResult Function(int entityType) getAddressProofs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int entityType)? getAddressTypes,
    TResult? Function(int entityType)? getAddressProofs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int entityType)? getAddressTypes,
    TResult Function(int entityType)? getAddressProofs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAddressTypes value) getAddressTypes,
    required TResult Function(GetAddressProofs value) getAddressProofs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAddressTypes value)? getAddressTypes,
    TResult? Function(GetAddressProofs value)? getAddressProofs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAddressTypes value)? getAddressTypes,
    TResult Function(GetAddressProofs value)? getAddressProofs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GetAddressDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAddressDetailsEventCopyWith<GetAddressDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAddressDetailsEventCopyWith<$Res> {
  factory $GetAddressDetailsEventCopyWith(GetAddressDetailsEvent value,
          $Res Function(GetAddressDetailsEvent) then) =
      _$GetAddressDetailsEventCopyWithImpl<$Res, GetAddressDetailsEvent>;
  @useResult
  $Res call({int entityType});
}

/// @nodoc
class _$GetAddressDetailsEventCopyWithImpl<$Res,
        $Val extends GetAddressDetailsEvent>
    implements $GetAddressDetailsEventCopyWith<$Res> {
  _$GetAddressDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAddressDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityType = null,
  }) {
    return _then(_value.copyWith(
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAddressTypesImplCopyWith<$Res>
    implements $GetAddressDetailsEventCopyWith<$Res> {
  factory _$$GetAddressTypesImplCopyWith(_$GetAddressTypesImpl value,
          $Res Function(_$GetAddressTypesImpl) then) =
      __$$GetAddressTypesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int entityType});
}

/// @nodoc
class __$$GetAddressTypesImplCopyWithImpl<$Res>
    extends _$GetAddressDetailsEventCopyWithImpl<$Res, _$GetAddressTypesImpl>
    implements _$$GetAddressTypesImplCopyWith<$Res> {
  __$$GetAddressTypesImplCopyWithImpl(
      _$GetAddressTypesImpl _value, $Res Function(_$GetAddressTypesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAddressDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityType = null,
  }) {
    return _then(_$GetAddressTypesImpl(
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAddressTypesImpl implements GetAddressTypes {
  const _$GetAddressTypesImpl({required this.entityType});

  @override
  final int entityType;

  @override
  String toString() {
    return 'GetAddressDetailsEvent.getAddressTypes(entityType: $entityType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAddressTypesImpl &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entityType);

  /// Create a copy of GetAddressDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAddressTypesImplCopyWith<_$GetAddressTypesImpl> get copyWith =>
      __$$GetAddressTypesImplCopyWithImpl<_$GetAddressTypesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int entityType) getAddressTypes,
    required TResult Function(int entityType) getAddressProofs,
  }) {
    return getAddressTypes(entityType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int entityType)? getAddressTypes,
    TResult? Function(int entityType)? getAddressProofs,
  }) {
    return getAddressTypes?.call(entityType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int entityType)? getAddressTypes,
    TResult Function(int entityType)? getAddressProofs,
    required TResult orElse(),
  }) {
    if (getAddressTypes != null) {
      return getAddressTypes(entityType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAddressTypes value) getAddressTypes,
    required TResult Function(GetAddressProofs value) getAddressProofs,
  }) {
    return getAddressTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAddressTypes value)? getAddressTypes,
    TResult? Function(GetAddressProofs value)? getAddressProofs,
  }) {
    return getAddressTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAddressTypes value)? getAddressTypes,
    TResult Function(GetAddressProofs value)? getAddressProofs,
    required TResult orElse(),
  }) {
    if (getAddressTypes != null) {
      return getAddressTypes(this);
    }
    return orElse();
  }
}

abstract class GetAddressTypes implements GetAddressDetailsEvent {
  const factory GetAddressTypes({required final int entityType}) =
      _$GetAddressTypesImpl;

  @override
  int get entityType;

  /// Create a copy of GetAddressDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAddressTypesImplCopyWith<_$GetAddressTypesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAddressProofsImplCopyWith<$Res>
    implements $GetAddressDetailsEventCopyWith<$Res> {
  factory _$$GetAddressProofsImplCopyWith(_$GetAddressProofsImpl value,
          $Res Function(_$GetAddressProofsImpl) then) =
      __$$GetAddressProofsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int entityType});
}

/// @nodoc
class __$$GetAddressProofsImplCopyWithImpl<$Res>
    extends _$GetAddressDetailsEventCopyWithImpl<$Res, _$GetAddressProofsImpl>
    implements _$$GetAddressProofsImplCopyWith<$Res> {
  __$$GetAddressProofsImplCopyWithImpl(_$GetAddressProofsImpl _value,
      $Res Function(_$GetAddressProofsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAddressDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entityType = null,
  }) {
    return _then(_$GetAddressProofsImpl(
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAddressProofsImpl implements GetAddressProofs {
  const _$GetAddressProofsImpl({required this.entityType});

  @override
  final int entityType;

  @override
  String toString() {
    return 'GetAddressDetailsEvent.getAddressProofs(entityType: $entityType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAddressProofsImpl &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entityType);

  /// Create a copy of GetAddressDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAddressProofsImplCopyWith<_$GetAddressProofsImpl> get copyWith =>
      __$$GetAddressProofsImplCopyWithImpl<_$GetAddressProofsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int entityType) getAddressTypes,
    required TResult Function(int entityType) getAddressProofs,
  }) {
    return getAddressProofs(entityType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int entityType)? getAddressTypes,
    TResult? Function(int entityType)? getAddressProofs,
  }) {
    return getAddressProofs?.call(entityType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int entityType)? getAddressTypes,
    TResult Function(int entityType)? getAddressProofs,
    required TResult orElse(),
  }) {
    if (getAddressProofs != null) {
      return getAddressProofs(entityType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAddressTypes value) getAddressTypes,
    required TResult Function(GetAddressProofs value) getAddressProofs,
  }) {
    return getAddressProofs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAddressTypes value)? getAddressTypes,
    TResult? Function(GetAddressProofs value)? getAddressProofs,
  }) {
    return getAddressProofs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAddressTypes value)? getAddressTypes,
    TResult Function(GetAddressProofs value)? getAddressProofs,
    required TResult orElse(),
  }) {
    if (getAddressProofs != null) {
      return getAddressProofs(this);
    }
    return orElse();
  }
}

abstract class GetAddressProofs implements GetAddressDetailsEvent {
  const factory GetAddressProofs({required final int entityType}) =
      _$GetAddressProofsImpl;

  @override
  int get entityType;

  /// Create a copy of GetAddressDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAddressProofsImplCopyWith<_$GetAddressProofsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
