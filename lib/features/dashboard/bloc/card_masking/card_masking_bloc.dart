import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'card_masking_event.dart';
part 'card_masking_state.dart';

class CardMaskingBloc extends Bloc<CardMaskingEvent, CardMaskingState> {
  CardMaskingBloc()
      : super(CardMaskingInitial(maskedCards: List.generate(2, (_) => true))) {
    on<ToggleCardMasking>((event, emit) {
      final newMaskedCards = [...state.maskedCards];
      newMaskedCards[event.cardIndex] = !newMaskedCards[event.cardIndex];
      emit(CardMaskingUpdated(maskedCards: newMaskedCards));
    });
  }
}
