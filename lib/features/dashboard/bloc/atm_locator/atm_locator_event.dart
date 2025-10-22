part of 'atm_locator_bloc.dart';

sealed class AtmLocatorEvent extends Equatable {
  const AtmLocatorEvent();

  @override
  List<Object> get props => [];
}

final class LoadCurrentLocation extends AtmLocatorEvent {}

final class LoadAtmLocations extends AtmLocatorEvent {}

final class NavigateToNextAtm extends AtmLocatorEvent {}

final class NavigateToPreviousAtm extends AtmLocatorEvent {}

final class InitializeAtmIndex extends AtmLocatorEvent {
  final int index;

  const InitializeAtmIndex(this.index);

  @override
  List<Object> get props => [index];
}
