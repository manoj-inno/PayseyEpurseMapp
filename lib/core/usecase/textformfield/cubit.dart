import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'usecase.dart';

class TextFormFieldControllerManagerCubit
    extends Cubit<Map<String, TextEditingController>> {
  final StoreTextControllerUseCase useCase;

  TextFormFieldControllerManagerCubit(this.useCase) : super({});

  void addController(String key, TextEditingController controller) {
    useCase.call(key, controller);
    emit({...state, key: controller});
  }

  TextEditingController? getController(String key) => useCase.get(key);

  void removeController(String key) {
    useCase.dispose(key);
    final updated = Map<String, TextEditingController>.from(state)..remove(key);
    emit(updated);
  }
}
