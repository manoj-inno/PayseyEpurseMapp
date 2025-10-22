// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeModelImpl _$$ThemeModelImplFromJson(Map<String, dynamic> json) =>
    _$ThemeModelImpl(
      isDarkMode: json['isDarkMode'] as bool,
      primaryColor: const ColorConverter()
          .fromJson((json['primaryColor'] as num).toInt()),
      secondaryColor: const ColorConverter()
          .fromJson((json['secondaryColor'] as num).toInt()),
      background1:
          const ColorConverter().fromJson((json['background1'] as num).toInt()),
      background2:
          const ColorConverter().fromJson((json['background2'] as num).toInt()),
      buttonStart:
          const ColorConverter().fromJson((json['buttonStart'] as num).toInt()),
      buttonEnd:
          const ColorConverter().fromJson((json['buttonEnd'] as num).toInt()),
      textPrimary:
          const ColorConverter().fromJson((json['textPrimary'] as num).toInt()),
      textSecondary: const ColorConverter()
          .fromJson((json['textSecondary'] as num).toInt()),
      loaderPrimary: const ColorConverter()
          .fromJson((json['loaderPrimary'] as num).toInt()),
      otpBackground1: const ColorConverter()
          .fromJson((json['otpBackground1'] as num).toInt()),
      otpBackground2: const ColorConverter()
          .fromJson((json['otpBackground2'] as num).toInt()),
      otpBorder:
          const ColorConverter().fromJson((json['otpBorder'] as num).toInt()),
      shimmerBase:
          const ColorConverter().fromJson((json['shimmerBase'] as num).toInt()),
      shimmerHighlight: const ColorConverter()
          .fromJson((json['shimmerHighlight'] as num).toInt()),
      iconColor:
          const ColorConverter().fromJson((json['iconColor'] as num).toInt()),
      progressIndicatorColor: const ColorConverter()
          .fromJson((json['progressIndicatorColor'] as num).toInt()),
    );

Map<String, dynamic> _$$ThemeModelImplToJson(_$ThemeModelImpl instance) =>
    <String, dynamic>{
      'isDarkMode': instance.isDarkMode,
      'primaryColor': const ColorConverter().toJson(instance.primaryColor),
      'secondaryColor': const ColorConverter().toJson(instance.secondaryColor),
      'background1': const ColorConverter().toJson(instance.background1),
      'background2': const ColorConverter().toJson(instance.background2),
      'buttonStart': const ColorConverter().toJson(instance.buttonStart),
      'buttonEnd': const ColorConverter().toJson(instance.buttonEnd),
      'textPrimary': const ColorConverter().toJson(instance.textPrimary),
      'textSecondary': const ColorConverter().toJson(instance.textSecondary),
      'loaderPrimary': const ColorConverter().toJson(instance.loaderPrimary),
      'otpBackground1': const ColorConverter().toJson(instance.otpBackground1),
      'otpBackground2': const ColorConverter().toJson(instance.otpBackground2),
      'otpBorder': const ColorConverter().toJson(instance.otpBorder),
      'shimmerBase': const ColorConverter().toJson(instance.shimmerBase),
      'shimmerHighlight':
          const ColorConverter().toJson(instance.shimmerHighlight),
      'iconColor': const ColorConverter().toJson(instance.iconColor),
      'progressIndicatorColor':
          const ColorConverter().toJson(instance.progressIndicatorColor),
    };
