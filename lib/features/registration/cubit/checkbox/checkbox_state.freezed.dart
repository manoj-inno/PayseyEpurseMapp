// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkbox_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckboxState {
  bool get isChecked => throw _privateConstructorUsedError;

  /// Create a copy of CheckboxState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckboxStateCopyWith<CheckboxState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckboxStateCopyWith<$Res> {
  factory $CheckboxStateCopyWith(
          CheckboxState value, $Res Function(CheckboxState) then) =
      _$CheckboxStateCopyWithImpl<$Res, CheckboxState>;
  @useResult
  $Res call({bool isChecked});
}

/// @nodoc
class _$CheckboxStateCopyWithImpl<$Res, $Val extends CheckboxState>
    implements $CheckboxStateCopyWith<$Res> {
  _$CheckboxStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckboxState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isChecked = null,
  }) {
    return _then(_value.copyWith(
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckboxStateImplCopyWith<$Res>
    implements $CheckboxStateCopyWith<$Res> {
  factory _$$CheckboxStateImplCopyWith(
          _$CheckboxStateImpl value, $Res Function(_$CheckboxStateImpl) then) =
      __$$CheckboxStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isChecked});
}

/// @nodoc
class __$$CheckboxStateImplCopyWithImpl<$Res>
    extends _$CheckboxStateCopyWithImpl<$Res, _$CheckboxStateImpl>
    implements _$$CheckboxStateImplCopyWith<$Res> {
  __$$CheckboxStateImplCopyWithImpl(
      _$CheckboxStateImpl _value, $Res Function(_$CheckboxStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckboxState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isChecked = null,
  }) {
    return _then(_$CheckboxStateImpl(
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CheckboxStateImpl implements _CheckboxState {
  const _$CheckboxStateImpl({required this.isChecked});

  @override
  final bool isChecked;

  @override
  String toString() {
    return 'CheckboxState(isChecked: $isChecked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckboxStateImpl &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isChecked);

  /// Create a copy of CheckboxState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckboxStateImplCopyWith<_$CheckboxStateImpl> get copyWith =>
      __$$CheckboxStateImplCopyWithImpl<_$CheckboxStateImpl>(this, _$identity);
}

abstract class _CheckboxState implements CheckboxState {
  const factory _CheckboxState({required final bool isChecked}) =
      _$CheckboxStateImpl;

  @override
  bool get isChecked;

  /// Create a copy of CheckboxState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckboxStateImplCopyWith<_$CheckboxStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
