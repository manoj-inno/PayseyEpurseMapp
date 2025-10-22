// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_fund_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SourceFundModel _$SourceFundModelFromJson(Map<String, dynamic> json) {
  return _SourceFundModel.fromJson(json);
}

/// @nodoc
mixin _$SourceFundModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_name')
  String get sourceName => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'process_status')
  int get processStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_status')
  String get authStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_time')
  DateTime get createdTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_time')
  DateTime get authTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_userid')
  int get createdUserid => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_userid')
  int get authUserid => throw _privateConstructorUsedError;
  @JsonKey(name: 'deauth_narration')
  String get deauthNarration => throw _privateConstructorUsedError;

  /// Serializes this SourceFundModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SourceFundModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SourceFundModelCopyWith<SourceFundModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceFundModelCopyWith<$Res> {
  factory $SourceFundModelCopyWith(
          SourceFundModel value, $Res Function(SourceFundModel) then) =
      _$SourceFundModelCopyWithImpl<$Res, SourceFundModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'source_name') String sourceName,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'process_status') int processStatus,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'created_time') DateTime createdTime,
      @JsonKey(name: 'auth_time') DateTime authTime,
      @JsonKey(name: 'created_userid') int createdUserid,
      @JsonKey(name: 'auth_userid') int authUserid,
      @JsonKey(name: 'deauth_narration') String deauthNarration});
}

/// @nodoc
class _$SourceFundModelCopyWithImpl<$Res, $Val extends SourceFundModel>
    implements $SourceFundModelCopyWith<$Res> {
  _$SourceFundModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SourceFundModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sourceName = null,
    Object? description = null,
    Object? status = null,
    Object? processStatus = null,
    Object? authStatus = null,
    Object? createdTime = null,
    Object? authTime = null,
    Object? createdUserid = null,
    Object? authUserid = null,
    Object? deauthNarration = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sourceName: null == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      authTime: null == authTime
          ? _value.authTime
          : authTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdUserid: null == createdUserid
          ? _value.createdUserid
          : createdUserid // ignore: cast_nullable_to_non_nullable
              as int,
      authUserid: null == authUserid
          ? _value.authUserid
          : authUserid // ignore: cast_nullable_to_non_nullable
              as int,
      deauthNarration: null == deauthNarration
          ? _value.deauthNarration
          : deauthNarration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceFundModelImplCopyWith<$Res>
    implements $SourceFundModelCopyWith<$Res> {
  factory _$$SourceFundModelImplCopyWith(_$SourceFundModelImpl value,
          $Res Function(_$SourceFundModelImpl) then) =
      __$$SourceFundModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'source_name') String sourceName,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'process_status') int processStatus,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'created_time') DateTime createdTime,
      @JsonKey(name: 'auth_time') DateTime authTime,
      @JsonKey(name: 'created_userid') int createdUserid,
      @JsonKey(name: 'auth_userid') int authUserid,
      @JsonKey(name: 'deauth_narration') String deauthNarration});
}

/// @nodoc
class __$$SourceFundModelImplCopyWithImpl<$Res>
    extends _$SourceFundModelCopyWithImpl<$Res, _$SourceFundModelImpl>
    implements _$$SourceFundModelImplCopyWith<$Res> {
  __$$SourceFundModelImplCopyWithImpl(
      _$SourceFundModelImpl _value, $Res Function(_$SourceFundModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SourceFundModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sourceName = null,
    Object? description = null,
    Object? status = null,
    Object? processStatus = null,
    Object? authStatus = null,
    Object? createdTime = null,
    Object? authTime = null,
    Object? createdUserid = null,
    Object? authUserid = null,
    Object? deauthNarration = null,
  }) {
    return _then(_$SourceFundModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sourceName: null == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
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
      createdTime: null == createdTime
          ? _value.createdTime
          : createdTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      authTime: null == authTime
          ? _value.authTime
          : authTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdUserid: null == createdUserid
          ? _value.createdUserid
          : createdUserid // ignore: cast_nullable_to_non_nullable
              as int,
      authUserid: null == authUserid
          ? _value.authUserid
          : authUserid // ignore: cast_nullable_to_non_nullable
              as int,
      deauthNarration: null == deauthNarration
          ? _value.deauthNarration
          : deauthNarration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceFundModelImpl implements _SourceFundModel {
  const _$SourceFundModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'source_name') required this.sourceName,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'process_status') required this.processStatus,
      @JsonKey(name: 'auth_status') required this.authStatus,
      @JsonKey(name: 'created_time') required this.createdTime,
      @JsonKey(name: 'auth_time') required this.authTime,
      @JsonKey(name: 'created_userid') required this.createdUserid,
      @JsonKey(name: 'auth_userid') required this.authUserid,
      @JsonKey(name: 'deauth_narration') required this.deauthNarration});

  factory _$SourceFundModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceFundModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'source_name')
  final String sourceName;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'process_status')
  final int processStatus;
  @override
  @JsonKey(name: 'auth_status')
  final String authStatus;
  @override
  @JsonKey(name: 'created_time')
  final DateTime createdTime;
  @override
  @JsonKey(name: 'auth_time')
  final DateTime authTime;
  @override
  @JsonKey(name: 'created_userid')
  final int createdUserid;
  @override
  @JsonKey(name: 'auth_userid')
  final int authUserid;
  @override
  @JsonKey(name: 'deauth_narration')
  final String deauthNarration;

  @override
  String toString() {
    return 'SourceFundModel(id: $id, sourceName: $sourceName, description: $description, status: $status, processStatus: $processStatus, authStatus: $authStatus, createdTime: $createdTime, authTime: $authTime, createdUserid: $createdUserid, authUserid: $authUserid, deauthNarration: $deauthNarration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceFundModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sourceName, sourceName) ||
                other.sourceName == sourceName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.processStatus, processStatus) ||
                other.processStatus == processStatus) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.authTime, authTime) ||
                other.authTime == authTime) &&
            (identical(other.createdUserid, createdUserid) ||
                other.createdUserid == createdUserid) &&
            (identical(other.authUserid, authUserid) ||
                other.authUserid == authUserid) &&
            (identical(other.deauthNarration, deauthNarration) ||
                other.deauthNarration == deauthNarration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sourceName,
      description,
      status,
      processStatus,
      authStatus,
      createdTime,
      authTime,
      createdUserid,
      authUserid,
      deauthNarration);

  /// Create a copy of SourceFundModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceFundModelImplCopyWith<_$SourceFundModelImpl> get copyWith =>
      __$$SourceFundModelImplCopyWithImpl<_$SourceFundModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceFundModelImplToJson(
      this,
    );
  }
}

abstract class _SourceFundModel implements SourceFundModel {
  const factory _SourceFundModel(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'source_name') required final String sourceName,
      @JsonKey(name: 'description') required final String description,
      @JsonKey(name: 'status') required final int status,
      @JsonKey(name: 'process_status') required final int processStatus,
      @JsonKey(name: 'auth_status') required final String authStatus,
      @JsonKey(name: 'created_time') required final DateTime createdTime,
      @JsonKey(name: 'auth_time') required final DateTime authTime,
      @JsonKey(name: 'created_userid') required final int createdUserid,
      @JsonKey(name: 'auth_userid') required final int authUserid,
      @JsonKey(name: 'deauth_narration')
      required final String deauthNarration}) = _$SourceFundModelImpl;

  factory _SourceFundModel.fromJson(Map<String, dynamic> json) =
      _$SourceFundModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'source_name')
  String get sourceName;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'process_status')
  int get processStatus;
  @override
  @JsonKey(name: 'auth_status')
  String get authStatus;
  @override
  @JsonKey(name: 'created_time')
  DateTime get createdTime;
  @override
  @JsonKey(name: 'auth_time')
  DateTime get authTime;
  @override
  @JsonKey(name: 'created_userid')
  int get createdUserid;
  @override
  @JsonKey(name: 'auth_userid')
  int get authUserid;
  @override
  @JsonKey(name: 'deauth_narration')
  String get deauthNarration;

  /// Create a copy of SourceFundModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SourceFundModelImplCopyWith<_$SourceFundModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
