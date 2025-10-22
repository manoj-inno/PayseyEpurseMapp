// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LanguageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String languageCode) changeLanguage,
    required TResult Function() initializeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String languageCode)? changeLanguage,
    TResult? Function()? initializeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String languageCode)? changeLanguage,
    TResult Function()? initializeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLanguage value) changeLanguage,
    required TResult Function(_InitializeLanguage value) initializeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeLanguage value)? changeLanguage,
    TResult? Function(_InitializeLanguage value)? initializeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLanguage value)? changeLanguage,
    TResult Function(_InitializeLanguage value)? initializeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageEventCopyWith<$Res> {
  factory $LanguageEventCopyWith(
          LanguageEvent value, $Res Function(LanguageEvent) then) =
      _$LanguageEventCopyWithImpl<$Res, LanguageEvent>;
}

/// @nodoc
class _$LanguageEventCopyWithImpl<$Res, $Val extends LanguageEvent>
    implements $LanguageEventCopyWith<$Res> {
  _$LanguageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeLanguageImplCopyWith<$Res> {
  factory _$$ChangeLanguageImplCopyWith(_$ChangeLanguageImpl value,
          $Res Function(_$ChangeLanguageImpl) then) =
      __$$ChangeLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String languageCode});
}

/// @nodoc
class __$$ChangeLanguageImplCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$ChangeLanguageImpl>
    implements _$$ChangeLanguageImplCopyWith<$Res> {
  __$$ChangeLanguageImplCopyWithImpl(
      _$ChangeLanguageImpl _value, $Res Function(_$ChangeLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
  }) {
    return _then(_$ChangeLanguageImpl(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeLanguageImpl implements _ChangeLanguage {
  const _$ChangeLanguageImpl({required this.languageCode});

  @override
  final String languageCode;

  @override
  String toString() {
    return 'LanguageEvent.changeLanguage(languageCode: $languageCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLanguageImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageCode);

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLanguageImplCopyWith<_$ChangeLanguageImpl> get copyWith =>
      __$$ChangeLanguageImplCopyWithImpl<_$ChangeLanguageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String languageCode) changeLanguage,
    required TResult Function() initializeLanguage,
  }) {
    return changeLanguage(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String languageCode)? changeLanguage,
    TResult? Function()? initializeLanguage,
  }) {
    return changeLanguage?.call(languageCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String languageCode)? changeLanguage,
    TResult Function()? initializeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(languageCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLanguage value) changeLanguage,
    required TResult Function(_InitializeLanguage value) initializeLanguage,
  }) {
    return changeLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeLanguage value)? changeLanguage,
    TResult? Function(_InitializeLanguage value)? initializeLanguage,
  }) {
    return changeLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLanguage value)? changeLanguage,
    TResult Function(_InitializeLanguage value)? initializeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(this);
    }
    return orElse();
  }
}

abstract class _ChangeLanguage implements LanguageEvent {
  const factory _ChangeLanguage({required final String languageCode}) =
      _$ChangeLanguageImpl;

  String get languageCode;

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeLanguageImplCopyWith<_$ChangeLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeLanguageImplCopyWith<$Res> {
  factory _$$InitializeLanguageImplCopyWith(_$InitializeLanguageImpl value,
          $Res Function(_$InitializeLanguageImpl) then) =
      __$$InitializeLanguageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeLanguageImplCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$InitializeLanguageImpl>
    implements _$$InitializeLanguageImplCopyWith<$Res> {
  __$$InitializeLanguageImplCopyWithImpl(_$InitializeLanguageImpl _value,
      $Res Function(_$InitializeLanguageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeLanguageImpl implements _InitializeLanguage {
  const _$InitializeLanguageImpl();

  @override
  String toString() {
    return 'LanguageEvent.initializeLanguage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeLanguageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String languageCode) changeLanguage,
    required TResult Function() initializeLanguage,
  }) {
    return initializeLanguage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String languageCode)? changeLanguage,
    TResult? Function()? initializeLanguage,
  }) {
    return initializeLanguage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String languageCode)? changeLanguage,
    TResult Function()? initializeLanguage,
    required TResult orElse(),
  }) {
    if (initializeLanguage != null) {
      return initializeLanguage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLanguage value) changeLanguage,
    required TResult Function(_InitializeLanguage value) initializeLanguage,
  }) {
    return initializeLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeLanguage value)? changeLanguage,
    TResult? Function(_InitializeLanguage value)? initializeLanguage,
  }) {
    return initializeLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLanguage value)? changeLanguage,
    TResult Function(_InitializeLanguage value)? initializeLanguage,
    required TResult orElse(),
  }) {
    if (initializeLanguage != null) {
      return initializeLanguage(this);
    }
    return orElse();
  }
}

abstract class _InitializeLanguage implements LanguageEvent {
  const factory _InitializeLanguage() = _$InitializeLanguageImpl;
}
