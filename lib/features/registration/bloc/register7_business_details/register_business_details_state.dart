part of 'register_business_details_bloc.dart';

sealed class RegisterBusinessDetailsState extends Equatable {
  const RegisterBusinessDetailsState();

  @override
  List<Object> get props => [];
}

final class RegisterBusinessDetailsInitial
    extends RegisterBusinessDetailsState {}

final class RegisterBusinessDetailsLoading
    extends RegisterBusinessDetailsState {}

final class RegisterBusinessDetailsLoaded extends RegisterBusinessDetailsState {
  final RegisterBusinessResponseModel response;

  const RegisterBusinessDetailsLoaded(this.response);
}

final class RegisterBusinessDetailsError extends RegisterBusinessDetailsState {
  final String message;

  const RegisterBusinessDetailsError(this.message);
}

final class RegisterBusinessDetailsServerDown
    extends RegisterBusinessDetailsState {
  final String message;

  const RegisterBusinessDetailsServerDown(this.message);
}
