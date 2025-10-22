// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_pep_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetPepDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PepEntity> pepOptions,
            List<RelationshipEntity> relationships,
            List<PepTypeEntity> pepTypes)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<PepEntity> pepOptions,
            List<RelationshipEntity> relationships,
            List<PepTypeEntity> pepTypes)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<PepEntity> pepOptions,
            List<RelationshipEntity> relationships,
            List<PepTypeEntity> pepTypes)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPepDetailsInitial value) initial,
    required TResult Function(GetPepDetailsLoading value) loading,
    required TResult Function(GetPepDetailsLoaded value) loaded,
    required TResult Function(GetPepDetailsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPepDetailsInitial value)? initial,
    TResult? Function(GetPepDetailsLoading value)? loading,
    TResult? Function(GetPepDetailsLoaded value)? loaded,
    TResult? Function(GetPepDetailsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPepDetailsInitial value)? initial,
    TResult Function(GetPepDetailsLoading value)? loading,
    TResult Function(GetPepDetailsLoaded value)? loaded,
    TResult Function(GetPepDetailsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPepDetailsStateCopyWith<$Res> {
  factory $GetPepDetailsStateCopyWith(
          GetPepDetailsState value, $Res Function(GetPepDetailsState) then) =
      _$GetPepDetailsStateCopyWithImpl<$Res, GetPepDetailsState>;
}

/// @nodoc
class _$GetPepDetailsStateCopyWithImpl<$Res, $Val extends GetPepDetailsState>
    implements $GetPepDetailsStateCopyWith<$Res> {
  _$GetPepDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPepDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPepDetailsInitialImplCopyWith<$Res> {
  factory _$$GetPepDetailsInitialImplCopyWith(_$GetPepDetailsInitialImpl value,
          $Res Function(_$GetPepDetailsInitialImpl) then) =
      __$$GetPepDetailsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPepDetailsInitialImplCopyWithImpl<$Res>
    extends _$GetPepDetailsStateCopyWithImpl<$Res, _$GetPepDetailsInitialImpl>
    implements _$$GetPepDetailsInitialImplCopyWith<$Res> {
  __$$GetPepDetailsInitialImplCopyWithImpl(_$GetPepDetailsInitialImpl _value,
      $Res Function(_$GetPepDetailsInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPepDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPepDetailsInitialImpl implements GetPepDetailsInitial {
  const _$GetPepDetailsInitialImpl();

  @override
  String toString() {
    return 'GetPepDetailsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPepDetailsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PepEntity> pepOptions,
            List<RelationshipEntity> relationships,
            List<PepTypeEntity> pepTypes)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<PepEntity> pepOptions,
            List<RelationshipEntity> relationships,
            List<PepTypeEntity> pepTypes)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<PepEntity> pepOptions,
            List<RelationshipEntity> relationships,
            List<PepTypeEntity> pepTypes)?
        loaded,
    TResult Function(String message)? error,
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
    required TResult Function(GetPepDetailsInitial value) initial,
    required TResult Function(GetPepDetailsLoading value) loading,
    required TResult Function(GetPepDetailsLoaded value) loaded,
    required TResult Function(GetPepDetailsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPepDetailsInitial value)? initial,
    TResult? Function(GetPepDetailsLoading value)? loading,
    TResult? Function(GetPepDetailsLoaded value)? loaded,
    TResult? Function(GetPepDetailsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPepDetailsInitial value)? initial,
    TResult Function(GetPepDetailsLoading value)? loading,
    TResult Function(GetPepDetailsLoaded value)? loaded,
    TResult Function(GetPepDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GetPepDetailsInitial implements GetPepDetailsState {
  const factory GetPepDetailsInitial() = _$GetPepDetailsInitialImpl;
}

/// @nodoc
abstract class _$$GetPepDetailsLoadingImplCopyWith<$Res> {
  factory _$$GetPepDetailsLoadingImplCopyWith(_$GetPepDetailsLoadingImpl value,
          $Res Function(_$GetPepDetailsLoadingImpl) then) =
      __$$GetPepDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPepDetailsLoadingImplCopyWithImpl<$Res>
    extends _$GetPepDetailsStateCopyWithImpl<$Res, _$GetPepDetailsLoadingImpl>
    implements _$$GetPepDetailsLoadingImplCopyWith<$Res> {
  __$$GetPepDetailsLoadingImplCopyWithImpl(_$GetPepDetailsLoadingImpl _value,
      $Res Function(_$GetPepDetailsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPepDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPepDetailsLoadingImpl implements GetPepDetailsLoading {
  const _$GetPepDetailsLoadingImpl();

  @override
  String toString() {
    return 'GetPepDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPepDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PepEntity> pepOptions,
            List<RelationshipEntity> relationships,
            List<PepTypeEntity> pepTypes)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<PepEntity> pepOptions,
            List<RelationshipEntity> relationships,
            List<PepTypeEntity> pepTypes)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<PepEntity> pepOptions,
            List<RelationshipEntity> relationships,
            List<PepTypeEntity> pepTypes)?
        loaded,
    TResult Function(String message)? error,
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
    required TResult Function(GetPepDetailsInitial value) initial,
    required TResult Function(GetPepDetailsLoading value) loading,
    required TResult Function(GetPepDetailsLoaded value) loaded,
    required TResult Function(GetPepDetailsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPepDetailsInitial value)? initial,
    TResult? Function(GetPepDetailsLoading value)? loading,
    TResult? Function(GetPepDetailsLoaded value)? loaded,
    TResult? Function(GetPepDetailsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPepDetailsInitial value)? initial,
    TResult Function(GetPepDetailsLoading value)? loading,
    TResult Function(GetPepDetailsLoaded value)? loaded,
    TResult Function(GetPepDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetPepDetailsLoading implements GetPepDetailsState {
  const factory GetPepDetailsLoading() = _$GetPepDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$GetPepDetailsLoadedImplCopyWith<$Res> {
  factory _$$GetPepDetailsLoadedImplCopyWith(_$GetPepDetailsLoadedImpl value,
          $Res Function(_$GetPepDetailsLoadedImpl) then) =
      __$$GetPepDetailsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<PepEntity> pepOptions,
      List<RelationshipEntity> relationships,
      List<PepTypeEntity> pepTypes});
}

/// @nodoc
class __$$GetPepDetailsLoadedImplCopyWithImpl<$Res>
    extends _$GetPepDetailsStateCopyWithImpl<$Res, _$GetPepDetailsLoadedImpl>
    implements _$$GetPepDetailsLoadedImplCopyWith<$Res> {
  __$$GetPepDetailsLoadedImplCopyWithImpl(_$GetPepDetailsLoadedImpl _value,
      $Res Function(_$GetPepDetailsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPepDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pepOptions = null,
    Object? relationships = null,
    Object? pepTypes = null,
  }) {
    return _then(_$GetPepDetailsLoadedImpl(
      pepOptions: null == pepOptions
          ? _value._pepOptions
          : pepOptions // ignore: cast_nullable_to_non_nullable
              as List<PepEntity>,
      relationships: null == relationships
          ? _value._relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as List<RelationshipEntity>,
      pepTypes: null == pepTypes
          ? _value._pepTypes
          : pepTypes // ignore: cast_nullable_to_non_nullable
              as List<PepTypeEntity>,
    ));
  }
}

/// @nodoc

class _$GetPepDetailsLoadedImpl implements GetPepDetailsLoaded {
  const _$GetPepDetailsLoadedImpl(
      {required final List<PepEntity> pepOptions,
      required final List<RelationshipEntity> relationships,
      required final List<PepTypeEntity> pepTypes})
      : _pepOptions = pepOptions,
        _relationships = relationships,
        _pepTypes = pepTypes;

  final List<PepEntity> _pepOptions;
  @override
  List<PepEntity> get pepOptions {
    if (_pepOptions is EqualUnmodifiableListView) return _pepOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pepOptions);
  }

  final List<RelationshipEntity> _relationships;
  @override
  List<RelationshipEntity> get relationships {
    if (_relationships is EqualUnmodifiableListView) return _relationships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relationships);
  }

  final List<PepTypeEntity> _pepTypes;
  @override
  List<PepTypeEntity> get pepTypes {
    if (_pepTypes is EqualUnmodifiableListView) return _pepTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pepTypes);
  }

  @override
  String toString() {
    return 'GetPepDetailsState.loaded(pepOptions: $pepOptions, relationships: $relationships, pepTypes: $pepTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPepDetailsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._pepOptions, _pepOptions) &&
            const DeepCollectionEquality()
                .equals(other._relationships, _relationships) &&
            const DeepCollectionEquality().equals(other._pepTypes, _pepTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pepOptions),
      const DeepCollectionEquality().hash(_relationships),
      const DeepCollectionEquality().hash(_pepTypes));

  /// Create a copy of GetPepDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPepDetailsLoadedImplCopyWith<_$GetPepDetailsLoadedImpl> get copyWith =>
      __$$GetPepDetailsLoadedImplCopyWithImpl<_$GetPepDetailsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PepEntity> pepOptions,
            List<RelationshipEntity> relationships,
            List<PepTypeEntity> pepTypes)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(pepOptions, relationships, pepTypes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<PepEntity> pepOptions,
            List<RelationshipEntity> relationships,
            List<PepTypeEntity> pepTypes)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(pepOptions, relationships, pepTypes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<PepEntity> pepOptions,
            List<RelationshipEntity> relationships,
            List<PepTypeEntity> pepTypes)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(pepOptions, relationships, pepTypes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPepDetailsInitial value) initial,
    required TResult Function(GetPepDetailsLoading value) loading,
    required TResult Function(GetPepDetailsLoaded value) loaded,
    required TResult Function(GetPepDetailsError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPepDetailsInitial value)? initial,
    TResult? Function(GetPepDetailsLoading value)? loading,
    TResult? Function(GetPepDetailsLoaded value)? loaded,
    TResult? Function(GetPepDetailsError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPepDetailsInitial value)? initial,
    TResult Function(GetPepDetailsLoading value)? loading,
    TResult Function(GetPepDetailsLoaded value)? loaded,
    TResult Function(GetPepDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class GetPepDetailsLoaded implements GetPepDetailsState {
  const factory GetPepDetailsLoaded(
      {required final List<PepEntity> pepOptions,
      required final List<RelationshipEntity> relationships,
      required final List<PepTypeEntity> pepTypes}) = _$GetPepDetailsLoadedImpl;

  List<PepEntity> get pepOptions;
  List<RelationshipEntity> get relationships;
  List<PepTypeEntity> get pepTypes;

  /// Create a copy of GetPepDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPepDetailsLoadedImplCopyWith<_$GetPepDetailsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPepDetailsErrorImplCopyWith<$Res> {
  factory _$$GetPepDetailsErrorImplCopyWith(_$GetPepDetailsErrorImpl value,
          $Res Function(_$GetPepDetailsErrorImpl) then) =
      __$$GetPepDetailsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetPepDetailsErrorImplCopyWithImpl<$Res>
    extends _$GetPepDetailsStateCopyWithImpl<$Res, _$GetPepDetailsErrorImpl>
    implements _$$GetPepDetailsErrorImplCopyWith<$Res> {
  __$$GetPepDetailsErrorImplCopyWithImpl(_$GetPepDetailsErrorImpl _value,
      $Res Function(_$GetPepDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPepDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GetPepDetailsErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPepDetailsErrorImpl implements GetPepDetailsError {
  const _$GetPepDetailsErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GetPepDetailsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPepDetailsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of GetPepDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPepDetailsErrorImplCopyWith<_$GetPepDetailsErrorImpl> get copyWith =>
      __$$GetPepDetailsErrorImplCopyWithImpl<_$GetPepDetailsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<PepEntity> pepOptions,
            List<RelationshipEntity> relationships,
            List<PepTypeEntity> pepTypes)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<PepEntity> pepOptions,
            List<RelationshipEntity> relationships,
            List<PepTypeEntity> pepTypes)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<PepEntity> pepOptions,
            List<RelationshipEntity> relationships,
            List<PepTypeEntity> pepTypes)?
        loaded,
    TResult Function(String message)? error,
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
    required TResult Function(GetPepDetailsInitial value) initial,
    required TResult Function(GetPepDetailsLoading value) loading,
    required TResult Function(GetPepDetailsLoaded value) loaded,
    required TResult Function(GetPepDetailsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPepDetailsInitial value)? initial,
    TResult? Function(GetPepDetailsLoading value)? loading,
    TResult? Function(GetPepDetailsLoaded value)? loaded,
    TResult? Function(GetPepDetailsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPepDetailsInitial value)? initial,
    TResult Function(GetPepDetailsLoading value)? loading,
    TResult Function(GetPepDetailsLoaded value)? loaded,
    TResult Function(GetPepDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPepDetailsError implements GetPepDetailsState {
  const factory GetPepDetailsError({required final String message}) =
      _$GetPepDetailsErrorImpl;

  String get message;

  /// Create a copy of GetPepDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPepDetailsErrorImplCopyWith<_$GetPepDetailsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
