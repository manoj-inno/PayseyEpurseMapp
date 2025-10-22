// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_passcode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SavePasscodeRequestModelImpl _$$SavePasscodeRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SavePasscodeRequestModelImpl(
      passwordEnc: json['password_enc'] as String,
      userRef: json['user_ref'] as String,
    );

Map<String, dynamic> _$$SavePasscodeRequestModelImplToJson(
        _$SavePasscodeRequestModelImpl instance) =>
    <String, dynamic>{
      'password_enc': instance.passwordEnc,
      'user_ref': instance.userRef,
    };
