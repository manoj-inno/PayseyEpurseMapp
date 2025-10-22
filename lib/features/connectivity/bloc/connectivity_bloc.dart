import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'connectivity_event.dart';
import 'connectivity_state.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  final Connectivity connectivity;
  StreamSubscription? connectivitySubscription;

  ConnectivityBloc(this.connectivity)
      : super(const ConnectivityState.initial()) {
    on<InitializeConnectivity>((event, emit) async {
      debugPrint('Initializing connectivity...');

      connectivitySubscription =
          connectivity.onConnectivityChanged.listen((result) {
        debugPrint('Connectivity changed: $result');
        // Handle the case where result might be a list
        final Object connectivityResult;
        connectivityResult = result.first;
        if (connectivityResult == ConnectivityResult.none) {
          debugPrint('No connection detected, adding DisconnectedEvent');
          add(const ConnectivityEvent.disconnected());
        } else {
          debugPrint('Connection detected, adding ConnectedEvent');
          add(const ConnectivityEvent.connected());
        }
      });

      // Check initial connectivity
      final initialResult = await connectivity.checkConnectivity();
      debugPrint('Initial connectivity result: $initialResult');
      // Handle the case where initialResult might be a list
      final Object initialConnectivityResult;
      initialConnectivityResult = initialResult.first;
      if (initialConnectivityResult == ConnectivityResult.none) {
        debugPrint('Initially disconnected');
        emit(const ConnectivityState.disconnected());
      } else {
        debugPrint('Initially connected');
        emit(const ConnectivityState.connected());
      }
    });

    on<ConnectivityConnectedEvent>((event, emit) {
      debugPrint('Emitting ConnectivityConnected state');
      emit(const ConnectivityState.connected());
    });

    on<ConnectivityDisconnectedEvent>((event, emit) {
      debugPrint('Emitting ConnectivityDisconnected state');
      emit(const ConnectivityState.disconnected());
    });
  }

  @override
  Future<void> close() {
    connectivitySubscription?.cancel();
    return super.close();
  }
}
