// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressDataModel _$AddressDataModelFromJson(Map<String, dynamic> json) {
  return _AddressDataModel.fromJson(json);
}

/// @nodoc
mixin _$AddressDataModel {
  @HiveField(0)
  String get refNumber => throw _privateConstructorUsedError;
  @HiveField(1)
  String get addressType => throw _privateConstructorUsedError;
  @HiveField(2)
  int get addressTypeId => throw _privateConstructorUsedError;
  @HiveField(3)
  String get addressProof => throw _privateConstructorUsedError;
  @HiveField(4)
  int get addressProofId => throw _privateConstructorUsedError;
  @HiveField(5)
  String get addressProofIdNumber => throw _privateConstructorUsedError;
  @HiveField(6)
  String get addressProofImagePath => throw _privateConstructorUsedError;
  @HiveField(7)
  String get buildingName => throw _privateConstructorUsedError;
  @HiveField(8)
  String get addressLine1 => throw _privateConstructorUsedError;
  @HiveField(9)
  String get addressLine2 => throw _privateConstructorUsedError;
  @HiveField(10)
  String get city => throw _privateConstructorUsedError;
  @HiveField(11)
  String get state => throw _privateConstructorUsedError;
  @HiveField(12)
  String get postalCode => throw _privateConstructorUsedError;
  @HiveField(13)
  String get country => throw _privateConstructorUsedError;

  /// Serializes this AddressDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddressDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressDataModelCopyWith<AddressDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDataModelCopyWith<$Res> {
  factory $AddressDataModelCopyWith(
          AddressDataModel value, $Res Function(AddressDataModel) then) =
      _$AddressDataModelCopyWithImpl<$Res, AddressDataModel>;
  @useResult
  $Res call(
      {@HiveField(0) String refNumber,
      @HiveField(1) String addressType,
      @HiveField(2) int addressTypeId,
      @HiveField(3) String addressProof,
      @HiveField(4) int addressProofId,
      @HiveField(5) String addressProofIdNumber,
      @HiveField(6) String addressProofImagePath,
      @HiveField(7) String buildingName,
      @HiveField(8) String addressLine1,
      @HiveField(9) String addressLine2,
      @HiveField(10) String city,
      @HiveField(11) String state,
      @HiveField(12) String postalCode,
      @HiveField(13) String country});
}

/// @nodoc
class _$AddressDataModelCopyWithImpl<$Res, $Val extends AddressDataModel>
    implements $AddressDataModelCopyWith<$Res> {
  _$AddressDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddressDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refNumber = null,
    Object? addressType = null,
    Object? addressTypeId = null,
    Object? addressProof = null,
    Object? addressProofId = null,
    Object? addressProofIdNumber = null,
    Object? addressProofImagePath = null,
    Object? buildingName = null,
    Object? addressLine1 = null,
    Object? addressLine2 = null,
    Object? city = null,
    Object? state = null,
    Object? postalCode = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      addressTypeId: null == addressTypeId
          ? _value.addressTypeId
          : addressTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      addressProof: null == addressProof
          ? _value.addressProof
          : addressProof // ignore: cast_nullable_to_non_nullable
              as String,
      addressProofId: null == addressProofId
          ? _value.addressProofId
          : addressProofId // ignore: cast_nullable_to_non_nullable
              as int,
      addressProofIdNumber: null == addressProofIdNumber
          ? _value.addressProofIdNumber
          : addressProofIdNumber // ignore: cast_nullable_to_non_nullable
              as String,
      addressProofImagePath: null == addressProofImagePath
          ? _value.addressProofImagePath
          : addressProofImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      buildingName: null == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine1: null == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine2: null == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressDataModelImplCopyWith<$Res>
    implements $AddressDataModelCopyWith<$Res> {
  factory _$$AddressDataModelImplCopyWith(_$AddressDataModelImpl value,
          $Res Function(_$AddressDataModelImpl) then) =
      __$$AddressDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String refNumber,
      @HiveField(1) String addressType,
      @HiveField(2) int addressTypeId,
      @HiveField(3) String addressProof,
      @HiveField(4) int addressProofId,
      @HiveField(5) String addressProofIdNumber,
      @HiveField(6) String addressProofImagePath,
      @HiveField(7) String buildingName,
      @HiveField(8) String addressLine1,
      @HiveField(9) String addressLine2,
      @HiveField(10) String city,
      @HiveField(11) String state,
      @HiveField(12) String postalCode,
      @HiveField(13) String country});
}

/// @nodoc
class __$$AddressDataModelImplCopyWithImpl<$Res>
    extends _$AddressDataModelCopyWithImpl<$Res, _$AddressDataModelImpl>
    implements _$$AddressDataModelImplCopyWith<$Res> {
  __$$AddressDataModelImplCopyWithImpl(_$AddressDataModelImpl _value,
      $Res Function(_$AddressDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddressDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refNumber = null,
    Object? addressType = null,
    Object? addressTypeId = null,
    Object? addressProof = null,
    Object? addressProofId = null,
    Object? addressProofIdNumber = null,
    Object? addressProofImagePath = null,
    Object? buildingName = null,
    Object? addressLine1 = null,
    Object? addressLine2 = null,
    Object? city = null,
    Object? state = null,
    Object? postalCode = null,
    Object? country = null,
  }) {
    return _then(_$AddressDataModelImpl(
      refNumber: null == refNumber
          ? _value.refNumber
          : refNumber // ignore: cast_nullable_to_non_nullable
              as String,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      addressTypeId: null == addressTypeId
          ? _value.addressTypeId
          : addressTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      addressProof: null == addressProof
          ? _value.addressProof
          : addressProof // ignore: cast_nullable_to_non_nullable
              as String,
      addressProofId: null == addressProofId
          ? _value.addressProofId
          : addressProofId // ignore: cast_nullable_to_non_nullable
              as int,
      addressProofIdNumber: null == addressProofIdNumber
          ? _value.addressProofIdNumber
          : addressProofIdNumber // ignore: cast_nullable_to_non_nullable
              as String,
      addressProofImagePath: null == addressProofImagePath
          ? _value.addressProofImagePath
          : addressProofImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      buildingName: null == buildingName
          ? _value.buildingName
          : buildingName // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine1: null == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String,
      addressLine2: null == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDataModelImpl implements _AddressDataModel {
  const _$AddressDataModelImpl(
      {@HiveField(0) required this.refNumber,
      @HiveField(1) required this.addressType,
      @HiveField(2) required this.addressTypeId,
      @HiveField(3) required this.addressProof,
      @HiveField(4) required this.addressProofId,
      @HiveField(5) required this.addressProofIdNumber,
      @HiveField(6) required this.addressProofImagePath,
      @HiveField(7) required this.buildingName,
      @HiveField(8) required this.addressLine1,
      @HiveField(9) required this.addressLine2,
      @HiveField(10) required this.city,
      @HiveField(11) required this.state,
      @HiveField(12) required this.postalCode,
      @HiveField(13) required this.country});

  factory _$AddressDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDataModelImplFromJson(json);

  @override
  @HiveField(0)
  final String refNumber;
  @override
  @HiveField(1)
  final String addressType;
  @override
  @HiveField(2)
  final int addressTypeId;
  @override
  @HiveField(3)
  final String addressProof;
  @override
  @HiveField(4)
  final int addressProofId;
  @override
  @HiveField(5)
  final String addressProofIdNumber;
  @override
  @HiveField(6)
  final String addressProofImagePath;
  @override
  @HiveField(7)
  final String buildingName;
  @override
  @HiveField(8)
  final String addressLine1;
  @override
  @HiveField(9)
  final String addressLine2;
  @override
  @HiveField(10)
  final String city;
  @override
  @HiveField(11)
  final String state;
  @override
  @HiveField(12)
  final String postalCode;
  @override
  @HiveField(13)
  final String country;

  @override
  String toString() {
    return 'AddressDataModel(refNumber: $refNumber, addressType: $addressType, addressTypeId: $addressTypeId, addressProof: $addressProof, addressProofId: $addressProofId, addressProofIdNumber: $addressProofIdNumber, addressProofImagePath: $addressProofImagePath, buildingName: $buildingName, addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, state: $state, postalCode: $postalCode, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDataModelImpl &&
            (identical(other.refNumber, refNumber) ||
                other.refNumber == refNumber) &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.addressTypeId, addressTypeId) ||
                other.addressTypeId == addressTypeId) &&
            (identical(other.addressProof, addressProof) ||
                other.addressProof == addressProof) &&
            (identical(other.addressProofId, addressProofId) ||
                other.addressProofId == addressProofId) &&
            (identical(other.addressProofIdNumber, addressProofIdNumber) ||
                other.addressProofIdNumber == addressProofIdNumber) &&
            (identical(other.addressProofImagePath, addressProofImagePath) ||
                other.addressProofImagePath == addressProofImagePath) &&
            (identical(other.buildingName, buildingName) ||
                other.buildingName == buildingName) &&
            (identical(other.addressLine1, addressLine1) ||
                other.addressLine1 == addressLine1) &&
            (identical(other.addressLine2, addressLine2) ||
                other.addressLine2 == addressLine2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      refNumber,
      addressType,
      addressTypeId,
      addressProof,
      addressProofId,
      addressProofIdNumber,
      addressProofImagePath,
      buildingName,
      addressLine1,
      addressLine2,
      city,
      state,
      postalCode,
      country);

  /// Create a copy of AddressDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDataModelImplCopyWith<_$AddressDataModelImpl> get copyWith =>
      __$$AddressDataModelImplCopyWithImpl<_$AddressDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDataModelImplToJson(
      this,
    );
  }
}

abstract class _AddressDataModel implements AddressDataModel {
  const factory _AddressDataModel(
      {@HiveField(0) required final String refNumber,
      @HiveField(1) required final String addressType,
      @HiveField(2) required final int addressTypeId,
      @HiveField(3) required final String addressProof,
      @HiveField(4) required final int addressProofId,
      @HiveField(5) required final String addressProofIdNumber,
      @HiveField(6) required final String addressProofImagePath,
      @HiveField(7) required final String buildingName,
      @HiveField(8) required final String addressLine1,
      @HiveField(9) required final String addressLine2,
      @HiveField(10) required final String city,
      @HiveField(11) required final String state,
      @HiveField(12) required final String postalCode,
      @HiveField(13) required final String country}) = _$AddressDataModelImpl;

  factory _AddressDataModel.fromJson(Map<String, dynamic> json) =
      _$AddressDataModelImpl.fromJson;

  @override
  @HiveField(0)
  String get refNumber;
  @override
  @HiveField(1)
  String get addressType;
  @override
  @HiveField(2)
  int get addressTypeId;
  @override
  @HiveField(3)
  String get addressProof;
  @override
  @HiveField(4)
  int get addressProofId;
  @override
  @HiveField(5)
  String get addressProofIdNumber;
  @override
  @HiveField(6)
  String get addressProofImagePath;
  @override
  @HiveField(7)
  String get buildingName;
  @override
  @HiveField(8)
  String get addressLine1;
  @override
  @HiveField(9)
  String get addressLine2;
  @override
  @HiveField(10)
  String get city;
  @override
  @HiveField(11)
  String get state;
  @override
  @HiveField(12)
  String get postalCode;
  @override
  @HiveField(13)
  String get country;

  /// Create a copy of AddressDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressDataModelImplCopyWith<_$AddressDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
