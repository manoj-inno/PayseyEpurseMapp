part of 'card_masking_bloc.dart';

sealed class CardMaskingState extends Equatable {
  final List<bool> maskedCards;

  const CardMaskingState({required this.maskedCards});

  @override
  List<Object> get props => [maskedCards];
}

class CardMaskingInitial extends CardMaskingState {
  const CardMaskingInitial({required super.maskedCards});
}

class CardMaskingUpdated extends CardMaskingState {
  const CardMaskingUpdated({required super.maskedCards});
}
