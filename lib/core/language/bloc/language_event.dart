import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_event.freezed.dart';

@freezed
class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.changeLanguage({required String languageCode}) =
      _ChangeLanguage;
  const factory LanguageEvent.initializeLanguage() = _InitializeLanguage;
}
