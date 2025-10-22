// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_mobile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MobileCheckModelImpl _$$MobileCheckModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MobileCheckModelImpl(
      code: (json['code'] as num?)?.toInt() ?? 0,
      message: json['message'] as String? ?? '',
      data: json['data'] == null
          ? null
          : MobileCheckDataModel.fromJson(json['data'] as Map<String, dynamic>),
      remark: json['remark'] as String? ?? '',
    );

Map<String, dynamic> _$$MobileCheckModelImplToJson(
        _$MobileCheckModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'remark': instance.remark,
    };

_$MobileCheckDataModelImpl _$$MobileCheckDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MobileCheckDataModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      mobile: json['mobile'] as String? ?? '',
      email: json['email'] as String? ?? '',
      regRef: json['user_ref'] as String? ?? '',
      status: (json['status'] as num?)?.toInt() ?? 0,
      processStatus: (json['processStatus'] as num?)?.toInt() ?? 0,
      authStatus: json['authStatus'] as String? ?? '',
      createdTime: json['createdTime'] as String? ?? '',
      authTime: json['authTime'] as String? ?? '',
      createdUserid: (json['createdUserid'] as num?)?.toInt() ?? 0,
      authUserid: (json['authUserid'] as num?)?.toInt() ?? 0,
      deauthNarration: json['deauthNarration'] as String? ?? '',
      userType: (json['user_type'] as num?)?.toInt() ?? 22,
    );

Map<String, dynamic> _$$MobileCheckDataModelImplToJson(
        _$MobileCheckDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mobile': instance.mobile,
      'email': instance.email,
      'user_ref': instance.regRef,
      'status': instance.status,
      'processStatus': instance.processStatus,
      'authStatus': instance.authStatus,
      'createdTime': instance.createdTime,
      'authTime': instance.authTime,
      'createdUserid': instance.createdUserid,
      'authUserid': instance.authUserid,
      'deauthNarration': instance.deauthNarration,
      'user_type': instance.userType,
    };
