import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:location/location.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/atm_locator/atm_locator_entity.dart';
import '../../domain/atm_locator/get_atm_locations.dart';

part 'atm_locator_event.dart';
part 'atm_locator_state.dart';

class AtmLocatorBloc extends Bloc<AtmLocatorEvent, AtmLocatorState> {
  final Location _location = Location();
  final GetAtmLocationsUseCase getAtmLocationsUseCase;

  AtmLocatorBloc({required this.getAtmLocationsUseCase})
      : super(AtmLocatorInitial()) {
    on<LoadCurrentLocation>(_onLoadCurrentLocation);
    on<LoadAtmLocations>(_onLoadAtmLocations);
    on<NavigateToNextAtm>(_onNavigateToNextAtm);
    on<NavigateToPreviousAtm>(_onNavigateToPreviousAtm);
    on<InitializeAtmIndex>(_onInitializeAtmIndex);
  }

  Future<void> _onLoadCurrentLocation(
    LoadCurrentLocation event,
    Emitter<AtmLocatorState> emit,
  ) async {
    emit(AtmLocatorLoading());

    try {
      // Check if location services are enabled
      bool serviceEnabled = await _location.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await _location.requestService();
        if (!serviceEnabled) {
          emit(const AtmLocatorError('Location services are disabled'));
          return;
        }
      }

      // Check if permission is granted
      PermissionStatus permissionGranted = await _location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await _location.requestPermission();
        if (permissionGranted != PermissionStatus.granted) {
          emit(const AtmLocatorError('Location permission not granted'));
          return;
        }
      }

      // Get location
      final locationData = await _location.getLocation();
      emit(AtmLocatorLocationLoaded(locationData));

      // Load ATM locations after getting user location
      add(LoadAtmLocations());
    } catch (e) {
      emit(AtmLocatorError('Failed to get location: ${e.toString()}'));
    }
  }

  Future<void> _onLoadAtmLocations(
    LoadAtmLocations event,
    Emitter<AtmLocatorState> emit,
  ) async {
    try {
      // Only proceed if we already have the user location
      if (state is AtmLocatorLocationLoaded) {
        final currentState = state as AtmLocatorLocationLoaded;

        final result = await getAtmLocationsUseCase();

        result.fold((failure) {
          if (failure is ServerDownFailure) {
            emit(AtmLocatorServerDown(
              message: failure.message,
              statusCode: failure.statusCode ?? 503,
            ));
          } else {
            emit(AtmLocatorError(failure.message));
          }
        }, (atmLocations) {
          // Debug log the number of ATMs
          debugPrint('Loaded ${atmLocations.length} ATMs from API');
          for (var atm in atmLocations) {
            debugPrint(
                'ATM: ${atm.id}, ${atm.name}, ${atm.latitude}, ${atm.longitude}');
          }
          emit(currentState.copyWith(atmLocations: atmLocations));
        });
      }
    } catch (e) {
      emit(AtmLocatorError('Failed to load ATM locations: ${e.toString()}'));
    }
  }

  void _onNavigateToNextAtm(
    NavigateToNextAtm event,
    Emitter<AtmLocatorState> emit,
  ) {
    if (state is AtmLocatorLocationLoaded) {
      final currentState = state as AtmLocatorLocationLoaded;
      if (currentState.atmLocations.isNotEmpty) {
        final nextIndex = (currentState.currentAtmIndex + 1) %
            currentState.atmLocations.length;
        emit(currentState.copyWith(currentAtmIndex: nextIndex));
      }
    }
  }

  void _onNavigateToPreviousAtm(
    NavigateToPreviousAtm event,
    Emitter<AtmLocatorState> emit,
  ) {
    if (state is AtmLocatorLocationLoaded) {
      final currentState = state as AtmLocatorLocationLoaded;
      if (currentState.atmLocations.isNotEmpty) {
        final prevIndex = (currentState.currentAtmIndex -
                1 +
                currentState.atmLocations.length) %
            currentState.atmLocations.length;
        emit(currentState.copyWith(currentAtmIndex: prevIndex));
      }
    }
  }

  void _onInitializeAtmIndex(
    InitializeAtmIndex event,
    Emitter<AtmLocatorState> emit,
  ) {
    if (state is AtmLocatorLocationLoaded) {
      final currentState = state as AtmLocatorLocationLoaded;
      if (currentState.atmLocations.isNotEmpty) {
        final index =
            event.index.clamp(0, currentState.atmLocations.length - 1);
        emit(currentState.copyWith(currentAtmIndex: index));
      }
    }
  }
}
