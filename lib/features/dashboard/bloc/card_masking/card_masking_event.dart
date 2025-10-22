part of 'card_masking_bloc.dart';

sealed class CardMaskingEvent extends Equatable {
  const CardMaskingEvent();

  @override
  List<Object> get props => [];
}

class ToggleCardMasking extends CardMaskingEvent {
  final int cardIndex;

  const ToggleCardMasking(this.cardIndex);

  @override
  List<Object> get props => [cardIndex];
}
