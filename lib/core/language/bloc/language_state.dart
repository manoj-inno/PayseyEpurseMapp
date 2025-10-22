import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'language_state.freezed.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState.initial() = _Initial;
  const factory LanguageState.loading() = _Loading;
  const factory LanguageState.loaded({required Locale locale}) = _Loaded;
  const factory LanguageState.error({required String message}) = _Error;
}
