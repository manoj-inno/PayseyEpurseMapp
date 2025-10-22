import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('BLOC-OBSERVER 🟠 Event: ${bloc.runtimeType} => $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    debugPrint(
        'BLOC-OBSERVER 🔵 Transition: ${bloc.runtimeType} => $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    debugPrint('BLOC-OBSERVER 🔴 Error: ${bloc.runtimeType} => $error');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('BLOC-OBSERVER 🟢 Change: ${bloc.runtimeType} => $change');
  }
}
