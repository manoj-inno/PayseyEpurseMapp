// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mode_of_operation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModeOfOperationModel _$ModeOfOperationModelFromJson(Map<String, dynamic> json) {
  return _ModeOfOperationModel.fromJson(json);
}

/// @nodoc
mixin _$ModeOfOperationModel {
  @JsonKey(name: 'mode_id')
  int get modeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mode_desc')
  String get modeDesc => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_of_users_required', defaultValue: 0)
  int get numOfUsersRequired => throw _privateConstructorUsedError;
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
  int get createdUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'auth_userid')
  int get authUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'deauth_narration')
  String get deauthNarration => throw _privateConstructorUsedError;
  @JsonKey(name: 'stackholder_required')
  bool get isStakeHolderRequired => throw _privateConstructorUsedError;

  /// Serializes this ModeOfOperationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ModeOfOperationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ModeOfOperationModelCopyWith<ModeOfOperationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModeOfOperationModelCopyWith<$Res> {
  factory $ModeOfOperationModelCopyWith(ModeOfOperationModel value,
          $Res Function(ModeOfOperationModel) then) =
      _$ModeOfOperationModelCopyWithImpl<$Res, ModeOfOperationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'mode_id') int modeId,
      @JsonKey(name: 'mode_desc') String modeDesc,
      @JsonKey(name: 'num_of_users_required', defaultValue: 0)
      int numOfUsersRequired,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'process_status') int processStatus,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'created_time') DateTime createdTime,
      @JsonKey(name: 'auth_time') DateTime authTime,
      @JsonKey(name: 'created_userid') int createdUserId,
      @JsonKey(name: 'auth_userid') int authUserId,
      @JsonKey(name: 'deauth_narration') String deauthNarration,
      @JsonKey(name: 'stackholder_required') bool isStakeHolderRequired});
}

/// @nodoc
class _$ModeOfOperationModelCopyWithImpl<$Res,
        $Val extends ModeOfOperationModel>
    implements $ModeOfOperationModelCopyWith<$Res> {
  _$ModeOfOperationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModeOfOperationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modeId = null,
    Object? modeDesc = null,
    Object? numOfUsersRequired = null,
    Object? status = null,
    Object? processStatus = null,
    Object? authStatus = null,
    Object? createdTime = null,
    Object? authTime = null,
    Object? createdUserId = null,
    Object? authUserId = null,
    Object? deauthNarration = null,
    Object? isStakeHolderRequired = null,
  }) {
    return _then(_value.copyWith(
      modeId: null == modeId
          ? _value.modeId
          : modeId // ignore: cast_nullable_to_non_nullable
              as int,
      modeDesc: null == modeDesc
          ? _value.modeDesc
          : modeDesc // ignore: cast_nullable_to_non_nullable
              as String,
      numOfUsersRequired: null == numOfUsersRequired
          ? _value.numOfUsersRequired
          : numOfUsersRequired // ignore: cast_nullable_to_non_nullable
              as int,
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
      createdUserId: null == createdUserId
          ? _value.createdUserId
          : createdUserId // ignore: cast_nullable_to_non_nullable
              as int,
      authUserId: null == authUserId
          ? _value.authUserId
          : authUserId // ignore: cast_nullable_to_non_nullable
              as int,
      deauthNarration: null == deauthNarration
          ? _value.deauthNarration
          : deauthNarration // ignore: cast_nullable_to_non_nullable
              as String,
      isStakeHolderRequired: null == isStakeHolderRequired
          ? _value.isStakeHolderRequired
          : isStakeHolderRequired // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModeOfOperationModelImplCopyWith<$Res>
    implements $ModeOfOperationModelCopyWith<$Res> {
  factory _$$ModeOfOperationModelImplCopyWith(_$ModeOfOperationModelImpl value,
          $Res Function(_$ModeOfOperationModelImpl) then) =
      __$$ModeOfOperationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mode_id') int modeId,
      @JsonKey(name: 'mode_desc') String modeDesc,
      @JsonKey(name: 'num_of_users_required', defaultValue: 0)
      int numOfUsersRequired,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'process_status') int processStatus,
      @JsonKey(name: 'auth_status') String authStatus,
      @JsonKey(name: 'created_time') DateTime createdTime,
      @JsonKey(name: 'auth_time') DateTime authTime,
      @JsonKey(name: 'created_userid') int createdUserId,
      @JsonKey(name: 'auth_userid') int authUserId,
      @JsonKey(name: 'deauth_narration') String deauthNarration,
      @JsonKey(name: 'stackholder_required') bool isStakeHolderRequired});
}

/// @nodoc
class __$$ModeOfOperationModelImplCopyWithImpl<$Res>
    extends _$ModeOfOperationModelCopyWithImpl<$Res, _$ModeOfOperationModelImpl>
    implements _$$ModeOfOperationModelImplCopyWith<$Res> {
  __$$ModeOfOperationModelImplCopyWithImpl(_$ModeOfOperationModelImpl _value,
      $Res Function(_$ModeOfOperationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModeOfOperationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modeId = null,
    Object? modeDesc = null,
    Object? numOfUsersRequired = null,
    Object? status = null,
    Object? processStatus = null,
    Object? authStatus = null,
    Object? createdTime = null,
    Object? authTime = null,
    Object? createdUserId = null,
    Object? authUserId = null,
    Object? deauthNarration = null,
    Object? isStakeHolderRequired = null,
  }) {
    return _then(_$ModeOfOperationModelImpl(
      modeId: null == modeId
          ? _value.modeId
          : modeId // ignore: cast_nullable_to_non_nullable
              as int,
      modeDesc: null == modeDesc
          ? _value.modeDesc
          : modeDesc // ignore: cast_nullable_to_non_nullable
              as String,
      numOfUsersRequired: null == numOfUsersRequired
          ? _value.numOfUsersRequired
          : numOfUsersRequired // ignore: cast_nullable_to_non_nullable
              as int,
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
      createdUserId: null == createdUserId
          ? _value.createdUserId
          : createdUserId // ignore: cast_nullable_to_non_nullable
              as int,
      authUserId: null == authUserId
          ? _value.authUserId
          : authUserId // ignore: cast_nullable_to_non_nullable
              as int,
      deauthNarration: null == deauthNarration
          ? _value.deauthNarration
          : deauthNarration // ignore: cast_nullable_to_non_nullable
              as String,
      isStakeHolderRequired: null == isStakeHolderRequired
          ? _value.isStakeHolderRequired
          : isStakeHolderRequired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModeOfOperationModelImpl implements _ModeOfOperationModel {
  const _$ModeOfOperationModelImpl(
      {@JsonKey(name: 'mode_id') required this.modeId,
      @JsonKey(name: 'mode_desc') required this.modeDesc,
      @JsonKey(name: 'num_of_users_required', defaultValue: 0)
      required this.numOfUsersRequired,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'process_status') required this.processStatus,
      @JsonKey(name: 'auth_status') required this.authStatus,
      @JsonKey(name: 'created_time') required this.createdTime,
      @JsonKey(name: 'auth_time') required this.authTime,
      @JsonKey(name: 'created_userid') required this.createdUserId,
      @JsonKey(name: 'auth_userid') required this.authUserId,
      @JsonKey(name: 'deauth_narration') required this.deauthNarration,
      @JsonKey(name: 'stackholder_required')
      required this.isStakeHolderRequired});

  factory _$ModeOfOperationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModeOfOperationModelImplFromJson(json);

  @override
  @JsonKey(name: 'mode_id')
  final int modeId;
  @override
  @JsonKey(name: 'mode_desc')
  final String modeDesc;
  @override
  @JsonKey(name: 'num_of_users_required', defaultValue: 0)
  final int numOfUsersRequired;
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
  final int createdUserId;
  @override
  @JsonKey(name: 'auth_userid')
  final int authUserId;
  @override
  @JsonKey(name: 'deauth_narration')
  final String deauthNarration;
  @override
  @JsonKey(name: 'stackholder_required')
  final bool isStakeHolderRequired;

  @override
  String toString() {
    return 'ModeOfOperationModel(modeId: $modeId, modeDesc: $modeDesc, numOfUsersRequired: $numOfUsersRequired, status: $status, processStatus: $processStatus, authStatus: $authStatus, createdTime: $createdTime, authTime: $authTime, createdUserId: $createdUserId, authUserId: $authUserId, deauthNarration: $deauthNarration, isStakeHolderRequired: $isStakeHolderRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModeOfOperationModelImpl &&
            (identical(other.modeId, modeId) || other.modeId == modeId) &&
            (identical(other.modeDesc, modeDesc) ||
                other.modeDesc == modeDesc) &&
            (identical(other.numOfUsersRequired, numOfUsersRequired) ||
                other.numOfUsersRequired == numOfUsersRequired) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.processStatus, processStatus) ||
                other.processStatus == processStatus) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.createdTime, createdTime) ||
                other.createdTime == createdTime) &&
            (identical(other.authTime, authTime) ||
                other.authTime == authTime) &&
            (identical(other.createdUserId, createdUserId) ||
                other.createdUserId == createdUserId) &&
            (identical(other.authUserId, authUserId) ||
                other.authUserId == authUserId) &&
            (identical(other.deauthNarration, deauthNarration) ||
                other.deauthNarration == deauthNarration) &&
            (identical(other.isStakeHolderRequired, isStakeHolderRequired) ||
                other.isStakeHolderRequired == isStakeHolderRequired));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      modeId,
      modeDesc,
      numOfUsersRequired,
      status,
      processStatus,
      authStatus,
      createdTime,
      authTime,
      createdUserId,
      authUserId,
      deauthNarration,
      isStakeHolderRequired);

  /// Create a copy of ModeOfOperationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModeOfOperationModelImplCopyWith<_$ModeOfOperationModelImpl>
      get copyWith =>
          __$$ModeOfOperationModelImplCopyWithImpl<_$ModeOfOperationModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModeOfOperationModelImplToJson(
      this,
    );
  }
}

abstract class _ModeOfOperationModel implements ModeOfOperationModel {
  const factory _ModeOfOperationModel(
      {@JsonKey(name: 'mode_id') required final int modeId,
      @JsonKey(name: 'mode_desc') required final String modeDesc,
      @JsonKey(name: 'num_of_users_required', defaultValue: 0)
      required final int numOfUsersRequired,
      @JsonKey(name: 'status') required final int status,
      @JsonKey(name: 'process_status') required final int processStatus,
      @JsonKey(name: 'auth_status') required final String authStatus,
      @JsonKey(name: 'created_time') required final DateTime createdTime,
      @JsonKey(name: 'auth_time') required final DateTime authTime,
      @JsonKey(name: 'created_userid') required final int createdUserId,
      @JsonKey(name: 'auth_userid') required final int authUserId,
      @JsonKey(name: 'deauth_narration') required final String deauthNarration,
      @JsonKey(name: 'stackholder_required')
      required final bool isStakeHolderRequired}) = _$ModeOfOperationModelImpl;

  factory _ModeOfOperationModel.fromJson(Map<String, dynamic> json) =
      _$ModeOfOperationModelImpl.fromJson;

  @override
  @JsonKey(name: 'mode_id')
  int get modeId;
  @override
  @JsonKey(name: 'mode_desc')
  String get modeDesc;
  @override
  @JsonKey(name: 'num_of_users_required', defaultValue: 0)
  int get numOfUsersRequired;
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
  int get createdUserId;
  @override
  @JsonKey(name: 'auth_userid')
  int get authUserId;
  @override
  @JsonKey(name: 'deauth_narration')
  String get deauthNarration;
  @override
  @JsonKey(name: 'stackholder_required')
  bool get isStakeHolderRequired;

  /// Create a copy of ModeOfOperationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModeOfOperationModelImplCopyWith<_$ModeOfOperationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
