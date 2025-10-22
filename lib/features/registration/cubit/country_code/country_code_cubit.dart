import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../../core/language/app_localizations.dart';
import 'country_code_state.dart';

class CountryCodeCubit extends Cubit<CountryCodeState> {
  CountryCodeCubit() : super(CountryCodeState.initial());

  void updateCountryCode(int partnerIndex, String countryCode) {
    final currentState = state;
    currentState.maybeWhen(
      loaded: (countryCodes) {
        final updatedCodes = Map<int, String>.from(countryCodes);
        updatedCodes[partnerIndex] = countryCode;
        emit(CountryCodeState.loaded(countryCodes: updatedCodes));
      },
      orElse: () {
        final updatedCodes = <int, String>{};
        updatedCodes[partnerIndex] = countryCode;
        emit(CountryCodeState.loaded(countryCodes: updatedCodes));
      },
    );
  }

  String getCountryCode(int partnerIndex) {
    return state.maybeWhen(
      loaded: (countryCodes) => countryCodes[partnerIndex] ?? '+91',
      orElse: () => '+91',
    );
  }

  void initializeLocalizedCountryCodes(
      BuildContext context, AppLocalizations localizations, int partnerCount) {
    try {
      final initialCodes = <int, String>{};
      for (int i = 0; i < partnerCount; i++) {
        initialCodes[i] = localizations.get('+91');
      }
      emit(CountryCodeState.loaded(countryCodes: initialCodes));
    } catch (e) {
      emit(CountryCodeState.error(message: e.toString()));
    }
  }
}
