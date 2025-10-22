import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../storage/preferences_manager.dart';
import 'language_event.dart';
import 'language_state.dart';

// Bloc
class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  final PreferencesManager preferencesManager;

  LanguageBloc({required this.preferencesManager})
      : super(LanguageState.loaded(
            locale: Locale(preferencesManager.languageCode))) {
    on<LanguageEvent>((event, emit) async {
      await event.map(
        changeLanguage: (e) async {
          await preferencesManager.setLanguageCode(e.languageCode);
          emit(LanguageState.loaded(locale: Locale(e.languageCode)));
        },
        initializeLanguage: (e) {
          emit(LanguageState.loaded(
              locale: Locale(preferencesManager.languageCode)));
        },
      );
    });
  }
}
