import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'theme_model.freezed.dart';
part 'theme_model.g.dart';

class ColorConverter implements JsonConverter<Color, int> {
  const ColorConverter();

  @override
  Color fromJson(int json) => Color(json);

  @override
  int toJson(Color color) => color.toARGB32();
}

@freezed
class ThemeModel with _$ThemeModel {
  const factory ThemeModel({
    required bool isDarkMode,
    @ColorConverter() required Color primaryColor,
    @ColorConverter() required Color secondaryColor,
    @ColorConverter() required Color background1,
    @ColorConverter() required Color background2,
    @ColorConverter() required Color buttonStart,
    @ColorConverter() required Color buttonEnd,
    @ColorConverter() required Color textPrimary,
    @ColorConverter() required Color textSecondary,
    @ColorConverter() required Color loaderPrimary,
    @ColorConverter() required Color otpBackground1,
    @ColorConverter() required Color otpBackground2,
    @ColorConverter() required Color otpBorder,
    @ColorConverter() required Color shimmerBase,
    @ColorConverter() required Color shimmerHighlight,
    @ColorConverter() required Color iconColor,
    @ColorConverter() required Color progressIndicatorColor,
  }) = _ThemeModel;

  factory ThemeModel.light() {
    return ThemeModel(
      isDarkMode: false,
      primaryColor: const Color(0xFFD1F1FF),
      secondaryColor: const Color(0xFFFFFFFF),
      background1: const Color(0xFFFFFFFF),
      background2: const Color(0xFFFFFFFF),
      buttonStart: const Color(0xFF0C7BE7),
      buttonEnd: const Color(0xFF0094FF),
      textPrimary: const Color(0xFF000000),
      textSecondary: const Color(0xFFFFFFFF),
      loaderPrimary: const Color(0xFF0C7BE7),
      otpBackground1: const Color(0xFFFFFFFF),
      otpBackground2: const Color(0xFFF5F5F5),
      otpBorder: const Color(0xFF0C7BE7),
      shimmerBase: const Color.fromARGB(255, 114, 196, 255),
      shimmerHighlight: const Color(0xFFFFFFFF),
      iconColor: const Color(0xFF0C7BE7),
      progressIndicatorColor: const Color(0xFFFFFFFF),
    );
  }

  factory ThemeModel.dark() {
    return ThemeModel(
      isDarkMode: true,
      primaryColor: const Color(0xFF084D92),
      secondaryColor: const Color(0xFF0C7BE7),
      background1: const Color(0xFFECF6FF),
      background2: const Color(0xFFFFFFF2),
      buttonStart: const Color(0xFF053767),
      buttonEnd: const Color(0xFF084D92),
      textPrimary: const Color(0xFFFFFFFF),
      textSecondary: const Color(0xFF000000),
      loaderPrimary: const Color(0xFFFFFFFF),
      otpBackground1: const Color(0xFF084D92),
      otpBackground2: const Color(0xFF0C7BE7),
      otpBorder: const Color(0xFFFFFFFF),
      shimmerBase: const Color(0xFF0A3B6A),
      shimmerHighlight: const Color(0xFF0C7BE7),
      iconColor: const Color(0xFFFFFFFF),
      progressIndicatorColor: const Color(0xFFFFFFFF),
    );
  }

  factory ThemeModel.fromJson(Map<String, dynamic> json) =>
      _$ThemeModelFromJson(json);
}
