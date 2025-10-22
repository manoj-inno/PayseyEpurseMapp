// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salary_range_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SalaryRangeModel _$SalaryRangeModelFromJson(Map<String, dynamic> json) {
  return _SalaryRangeModel.fromJson(json);
}

/// @nodoc
mixin _$SalaryRangeModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_salary')
  int get minSalary => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_salary')
  int get maxSalary => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'process_status')
  int get processStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_status')
  String get authStatus => throw _privateConstructorUsedError;

  /// Serializes this SalaryRangeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SalaryRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SalaryRangeModelCopyWith<SalaryRangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalaryRangeModelCopyWith<$Res> {
  factory $SalaryRangeModelCopyWith(
          SalaryRangeModel value, $Res Function(SalaryRangeModel) then) =
      _$SalaryRangeModelCopyWithImpl<$Res, SalaryRangeModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'min_salary') int minSalary,
      @JsonKey(name: 'max_salary') int maxSalary,
      String description,
      int status,
      @JsonKey(name: 'process_status') int processStatus,
      @JsonKey(name: 'auth_status') String authStatus});
}

/// @nodoc
class _$SalaryRangeModelCopyWithImpl<$Res, $Val extends SalaryRangeModel>
    implements $SalaryRangeModelCopyWith<$Res> {
  _$SalaryRangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalaryRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? minSalary = null,
    Object? maxSalary = null,
    Object? description = null,
    Object? status = null,
    Object? processStatus = null,
    Object? authStatus = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      minSalary: null == minSalary
          ? _value.minSalary
          : minSalary // ignore: cast_nullable_to_non_nullable
              as int,
      maxSalary: null == maxSalary
          ? _value.maxSalary
          : maxSalary // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      processStatus: null == processStatus
          ? _value.processStatus
          : processStatus // ignore: cast_nullable_to_non_nullable
              as int,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SalaryRangeModelImplCopyWith<$Res>
    implements $SalaryRangeModelCopyWith<$Res> {
  factory _$$SalaryRangeModelImplCopyWith(_$SalaryRangeModelImpl value,
          $Res Function(_$SalaryRangeModelImpl) then) =
      __$$SalaryRangeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'min_salary') int minSalary,
      @JsonKey(name: 'max_salary') int maxSalary,
      String description,
      int status,
      @JsonKey(name: 'process_status') int processStatus,
      @JsonKey(name: 'auth_status') String authStatus});
}

/// @nodoc
class __$$SalaryRangeModelImplCopyWithImpl<$Res>
    extends _$SalaryRangeModelCopyWithImpl<$Res, _$SalaryRangeModelImpl>
    implements _$$SalaryRangeModelImplCopyWith<$Res> {
  __$$SalaryRangeModelImplCopyWithImpl(_$SalaryRangeModelImpl _value,
      $Res Function(_$SalaryRangeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalaryRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? minSalary = null,
    Object? maxSalary = null,
    Object? description = null,
    Object? status = null,
    Object? processStatus = null,
    Object? authStatus = null,
  }) {
    return _then(_$SalaryRangeModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      minSalary: null == minSalary
          ? _value.minSalary
          : minSalary // ignore: cast_nullable_to_non_nullable
              as int,
      maxSalary: null == maxSalary
          ? _value.maxSalary
          : maxSalary // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      processStatus: null == processStatus
          ? _value.processStatus
          : processStatus // ignore: cast_nullable_to_non_nullable
              as int,
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SalaryRangeModelImpl implements _SalaryRangeModel {
  const _$SalaryRangeModelImpl(
      {required this.id,
      @JsonKey(name: 'min_salary') required this.minSalary,
      @JsonKey(name: 'max_salary') required this.maxSalary,
      required this.description,
      required this.status,
      @JsonKey(name: 'process_status') required this.processStatus,
      @JsonKey(name: 'auth_status') required this.authStatus});

  factory _$SalaryRangeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SalaryRangeModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'min_salary')
  final int minSalary;
  @override
  @JsonKey(name: 'max_salary')
  final int maxSalary;
  @override
  final String description;
  @override
  final int status;
  @override
  @JsonKey(name: 'process_status')
  final int processStatus;
  @override
  @JsonKey(name: 'auth_status')
  final String authStatus;

  @override
  String toString() {
    return 'SalaryRangeModel(id: $id, minSalary: $minSalary, maxSalary: $maxSalary, description: $description, status: $status, processStatus: $processStatus, authStatus: $authStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SalaryRangeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.minSalary, minSalary) ||
                other.minSalary == minSalary) &&
            (identical(other.maxSalary, maxSalary) ||
                other.maxSalary == maxSalary) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.processStatus, processStatus) ||
                other.processStatus == processStatus) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, minSalary, maxSalary,
      description, status, processStatus, authStatus);

  /// Create a copy of SalaryRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SalaryRangeModelImplCopyWith<_$SalaryRangeModelImpl> get copyWith =>
      __$$SalaryRangeModelImplCopyWithImpl<_$SalaryRangeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SalaryRangeModelImplToJson(
      this,
    );
  }
}

abstract class _SalaryRangeModel implements SalaryRangeModel {
  const factory _SalaryRangeModel(
          {required final int id,
          @JsonKey(name: 'min_salary') required final int minSalary,
          @JsonKey(name: 'max_salary') required final int maxSalary,
          required final String description,
          required final int status,
          @JsonKey(name: 'process_status') required final int processStatus,
          @JsonKey(name: 'auth_status') required final String authStatus}) =
      _$SalaryRangeModelImpl;

  factory _SalaryRangeModel.fromJson(Map<String, dynamic> json) =
      _$SalaryRangeModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'min_salary')
  int get minSalary;
  @override
  @JsonKey(name: 'max_salary')
  int get maxSalary;
  @override
  String get description;
  @override
  int get status;
  @override
  @JsonKey(name: 'process_status')
  int get processStatus;
  @override
  @JsonKey(name: 'auth_status')
  String get authStatus;

  /// Create a copy of SalaryRangeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SalaryRangeModelImplCopyWith<_$SalaryRangeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
