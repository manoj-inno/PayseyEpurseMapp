import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_event.freezed.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.toggleTheme() = _ToggleTheme;
  const factory ThemeEvent.initializeTheme() = _InitializeTheme;
}
