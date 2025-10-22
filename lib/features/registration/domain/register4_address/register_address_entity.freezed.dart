// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_address_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterAddressEntity {
  List<String> get imagePaths => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get addressDetails =>
      throw _privateConstructorUsedError;
  String get refNumber => throw _privateConstructorUsedError;

  /// Create a copy of RegisterAddressEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterAddressEntityCopyWith<RegisterAddressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterAddressEntityCopyWith<$Res> {
  factory $RegisterAddressEntityCopyWith(RegisterAddressEntity value,
          $Res Function(RegisterAddressEntity) then) =
      _$RegisterAddressEntityCopyWithImpl<$Res, RegisterAddressEntity>;
  @useResult
  $Res call(
      {List<String> imagePaths,
      List<Map<String, dynamic>> addressDetails,
      String refNumber});
}

/// @nodoc
class _$RegisterAddressEntityCopyWithImpl<$Res,
        $Val extends RegisterAddressEntity>
    implements $RegisterAddressEntityCopyWith<$Res> {
  _$RegisterAddressEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterAddressEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePaths = null,
    Object? addressDetails = null,
    Object? refNumber = null,
  }) {
    return _then(_value.copyWith(
      imagePaths: null == imagePaths
          ? _value.imagePaths
          : imagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      addressDetails: null == addressDetails
          ? _value.addressDetails
          : addressDetails // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterAddressEntityImplCopyWith<$Res>
    implements $RegisterAddressEntityCopyWith<$Res> {
  factory _$$RegisterAddressEntityImplCopyWith(
          _$RegisterAddressEntityImpl value,
          $Res Function(_$RegisterAddressEntityImpl) then) =
      __$$RegisterAddressEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> imagePaths,
      List<Map<String, dynamic>> addressDetails,
      String refNumber});
}

/// @nodoc
class __$$RegisterAddressEntityImplCopyWithImpl<$Res>
    extends _$RegisterAddressEntityCopyWithImpl<$Res,
        _$RegisterAddressEntityImpl>
    implements _$$RegisterAddressEntityImplCopyWith<$Res> {
  __$$RegisterAddressEntityImplCopyWithImpl(_$RegisterAddressEntityImpl _value,
      $Res Function(_$RegisterAddressEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterAddressEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePaths = null,
    Object? addressDetails = null,
    Object? refNumber = null,
  }) {
    return _then(_$RegisterAddressEntityImpl(
      imagePaths: null == imagePaths
          ? _value._imagePaths
          : imagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      addressDetails: null == addressDetails
          ? _value._addressDetails
          : addressDetails // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterAddressEntityImpl extends _RegisterAddressEntity {
  const _$RegisterAddressEntityImpl(
      {required final List<String> imagePaths,
      required final List<Map<String, dynamic>> addressDetails,
      required this.refNumber})
      : _imagePaths = imagePaths,
        _addressDetails = addressDetails,
        super._();

  final List<String> _imagePaths;
  @override
  List<String> get imagePaths {
    if (_imagePaths is EqualUnmodifiableListView) return _imagePaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagePaths);
  }

  final List<Map<String, dynamic>> _addressDetails;
  @override
  List<Map<String, dynamic>> get addressDetails {
    if (_addressDetails is EqualUnmodifiableListView) return _addressDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressDetails);
  }

  @override
  final String refNumber;

  @override
  String toString() {
    return 'RegisterAddressEntity(imagePaths: $imagePaths, addressDetails: $addressDetails, refNumber: $refNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterAddressEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._imagePaths, _imagePaths) &&
            const DeepCollectionEquality()
                .equals(other._addressDetails, _addressDetails) &&
            (identical(other.refNumber, refNumber) ||
                other.refNumber == refNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_imagePaths),
      const DeepCollectionEquality().hash(_addressDetails),
      refNumber);

  /// Create a copy of RegisterAddressEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterAddressEntityImplCopyWith<_$RegisterAddressEntityImpl>
      get copyWith => __$$RegisterAddressEntityImplCopyWithImpl<
          _$RegisterAddressEntityImpl>(this, _$identity);
}

abstract class _RegisterAddressEntity extends RegisterAddressEntity {
  const factory _RegisterAddressEntity(
      {required final List<String> imagePaths,
      required final List<Map<String, dynamic>> addressDetails,
      required final String refNumber}) = _$RegisterAddressEntityImpl;
  const _RegisterAddressEntity._() : super._();

  @override
  List<String> get imagePaths;
  @override
  List<Map<String, dynamic>> get addressDetails;
  @override
  String get refNumber;

  /// Create a copy of RegisterAddressEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterAddressEntityImplCopyWith<_$RegisterAddressEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
