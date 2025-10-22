import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_code_state.freezed.dart';

@freezed
class CountryCodeState with _$CountryCodeState {
  const factory CountryCodeState.initial() = _Initial;
  const factory CountryCodeState.loading() = _Loading;
  const factory CountryCodeState.loaded(
      {required Map<int, String> countryCodes}) = _Loaded;
  const factory CountryCodeState.error({required String message}) = _Error;
}
