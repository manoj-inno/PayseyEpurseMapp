import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import '../../../core/storage/preferences_manager.dart';

part 'face_login_state.dart';

class FaceLoginCubit extends Cubit<FaceLoginState> {
  PreferencesManager? _prefsManager;
  bool _initialized = false;

  FaceLoginCubit() : super(const FaceLoginLoading()) {
    _initPrefs();
  }

  bool get isInitialized => _initialized;

  Future<void> _initPrefs() async {
    try {
      _prefsManager = await PreferencesManager.getInstance();
      final isFaceLoginEnabled = _prefsManager!.isFaceLoginEnabled;

      debugPrint(
          'FaceLoginCubit - Initial preference loaded: $isFaceLoginEnabled');

      emit(isFaceLoginEnabled
          ? const FaceLoginEnabled()
          : const FaceLoginDisabled());
      _initialized = true;
    } catch (e) {
      debugPrint('FaceLoginCubit - Error initializing preferences: $e');
      emit(const FaceLoginDisabled());
    }
  }

  Future<void> loadFaceLoginPreference() async {
    if (!_initialized) {
      await _initPrefs();
      return;
    }

    try {
      final isFaceLoginEnabled = _prefsManager!.isFaceLoginEnabled;
      debugPrint('FaceLoginCubit - Loading preference: $isFaceLoginEnabled');
      emit(isFaceLoginEnabled
          ? const FaceLoginEnabled()
          : const FaceLoginDisabled());
    } catch (e) {
      debugPrint('FaceLoginCubit - Error loading preference: $e');
    }
  }

  Future<void> toggleFaceLogin(bool enabled) async {
    try {
      if (!_initialized) {
        await _initPrefs();
      }

      await _prefsManager!.setFaceLoginEnabled(enabled);
      debugPrint('FaceLoginCubit - Saving preference: $enabled');
      emit(enabled ? const FaceLoginEnabled() : const FaceLoginDisabled());
    } catch (e) {
      debugPrint('FaceLoginCubit - Error saving preference: $e');
    }
  }
}
