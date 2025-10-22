import '../../features/connectivity/bloc/connectivity_bloc.dart';
import '../../features/connectivity/bloc/connectivity_state.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final ConnectivityBloc connectivityBloc;

  NetworkInfoImpl({required this.connectivityBloc});

  @override
  Future<bool> get isConnected async {
    final currentState = connectivityBloc.state;
    return currentState is ConnectivityConnected;
  }
}
