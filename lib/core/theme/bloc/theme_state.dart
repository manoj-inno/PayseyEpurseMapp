import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = _Initial;
  const factory ThemeState.loading() = _Loading;
  const factory ThemeState.loaded({required bool isDark}) = _Loaded;
  const factory ThemeState.error({required String message}) = _Error;
}
