import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

import '../../domain/get_personal_details/usecases/get_nationality.dart';
import 'get_additional_personal_details_event.dart';
import 'get_additional_personal_details_state.dart';

class GetAdditionalPersonalDetailsBloc extends Bloc<
    GetAdditionalPersonalDetailsEvent, GetAdditionalPersonalDetailsState> {
  final GetNationality getNationality;

  GetAdditionalPersonalDetailsBloc({required this.getNationality})
      : super(const GetAdditionalPersonalDetailsState.initial()) {
    on<GetNationalityEvent>(_onGetNationality);
    on<SelectNationality>(_onSelectNationality);
    on<CloseGetAdditionalPersonalDetailsEvent>(_onClose);
  }

  void _onGetNationality(GetNationalityEvent event,
      Emitter<GetAdditionalPersonalDetailsState> emit) async {
    debugPrint('=== NATIONALITY BLOC: _onGetNationality called ===');
    debugPrint('=== NATIONALITY BLOC: Current state: ${state.runtimeType} ===');

    // Only fetch data if we're not already loading or have successfully loaded
    if (state is GetNationalityLoading) {
      debugPrint(
          'Already loading nationality data, ignoring duplicate request');
      return;
    }

    if (state is GetNationalitySuccess) {
      debugPrint('Nationality data already loaded, using cached data');
      return;
    }

    debugPrint('=== NATIONALITY BLOC: Starting to load nationality data ===');
    emit(const GetAdditionalPersonalDetailsState.loading());
    final result = await getNationality.call();
    result.fold((failure) {
      debugPrint(
          '=== NATIONALITY BLOC: Failed to load: ${failure.message} ===');
      emit(GetAdditionalPersonalDetailsState.failure(message: failure.message));
    }, (nationalities) {
      debugPrint(
          '=== NATIONALITY BLOC: Successfully loaded ${nationalities.length} nationalities ===');
      emit(GetAdditionalPersonalDetailsState.success(
          nationalities: nationalities));
    });
  }

  void _onSelectNationality(SelectNationality event,
      Emitter<GetAdditionalPersonalDetailsState> emit) {
    if (state is GetNationalitySuccess) {
      // Preserve the existing nationality list but update the selected one
      final successState = state as GetNationalitySuccess;
      emit(GetAdditionalPersonalDetailsState.success(
          nationalities: successState.nationalities));
    } else {
      emit(GetAdditionalPersonalDetailsState.success(
          nationalities: [event.nationality]));
    }
  }

  void _onClose(CloseGetAdditionalPersonalDetailsEvent event,
      Emitter<GetAdditionalPersonalDetailsState> emit) {
    emit(const GetAdditionalPersonalDetailsState.initial());
  }
}
