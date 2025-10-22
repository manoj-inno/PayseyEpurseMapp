part of 'atm_locator_bloc.dart';

sealed class AtmLocatorState extends Equatable {
  const AtmLocatorState();

  @override
  List<Object> get props => [];
}

final class AtmLocatorInitial extends AtmLocatorState {}

final class AtmLocatorLoading extends AtmLocatorState {}

final class AtmLocatorLocationLoaded extends AtmLocatorState {
  final LocationData locationData;
  final List<AtmLocation> atmLocations;
  final int currentAtmIndex;

  const AtmLocatorLocationLoaded(this.locationData,
      {this.atmLocations = const [], this.currentAtmIndex = 0});

  @override
  List<Object> get props => [locationData, atmLocations, currentAtmIndex];

  AtmLocatorLocationLoaded copyWith({
    LocationData? locationData,
    List<AtmLocation>? atmLocations,
    int? currentAtmIndex,
  }) {
    return AtmLocatorLocationLoaded(
      locationData ?? this.locationData,
      atmLocations: atmLocations ?? this.atmLocations,
      currentAtmIndex: currentAtmIndex ?? this.currentAtmIndex,
    );
  }
}

final class AtmLocatorError extends AtmLocatorState {
  final String message;

  const AtmLocatorError(this.message);

  @override
  List<Object> get props => [message];
}

final class AtmLocatorServerDown extends AtmLocatorState {
  final String message;
  final int statusCode;

  const AtmLocatorServerDown({
    required this.message,
    this.statusCode = 503,
  });

  @override
  List<Object> get props => [message, statusCode];
}
