import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/connectivity_bloc.dart';
import '../bloc/connectivity_state.dart';
import '../presentation/no_internet_screen.dart';

class ConnectivityWrapper extends StatelessWidget {
  final Widget child;

  const ConnectivityWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectivityBloc, ConnectivityState>(
      builder: (context, state) {
        return state.maybeWhen(
          disconnected: () => const NoInternetScreen(),
          orElse: () => child,
        );
      },
    );
  }
}
