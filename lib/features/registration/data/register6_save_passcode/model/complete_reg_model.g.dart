// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_reg_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationModelImpl _$$RegistrationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationModelImpl(
      id: (json['id'] as num).toInt(),
      mobile: json['mobile'] as String,
      email: json['email'] as String,
      authStatus: json['auth_status'] as String,
      userRef: json['user_ref'] as String,
      jwtToken: json['jwt_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$RegistrationModelImplToJson(
        _$RegistrationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mobile': instance.mobile,
      'email': instance.email,
      'auth_status': instance.authStatus,
      'user_ref': instance.userRef,
      'jwt_token': instance.jwtToken,
      'refresh_token': instance.refreshToken,
    };
