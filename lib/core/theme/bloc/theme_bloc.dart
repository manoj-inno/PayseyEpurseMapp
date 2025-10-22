import 'package:flutter_bloc/flutter_bloc.dart';
import '../../storage/preferences_manager.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final PreferencesManager preferencesManager;

  ThemeBloc({required this.preferencesManager})
      : super(ThemeState.loaded(isDark: preferencesManager.isDarkMode)) {
    on<ThemeEvent>((event, emit) async {
      await event.map(
        toggleTheme: (e) async {
          final isDark = !preferencesManager.isDarkMode;
          await preferencesManager.setDarkMode(isDark);
          emit(ThemeState.loaded(isDark: isDark));
        },
        initializeTheme: (e) {
          emit(ThemeState.loaded(isDark: preferencesManager.isDarkMode));
        },
      );
    });
  }
}
