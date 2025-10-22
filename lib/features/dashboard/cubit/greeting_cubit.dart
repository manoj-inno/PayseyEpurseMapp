import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

// States
abstract class GreetingState {
  final String greeting;
  const GreetingState(this.greeting);
}

class GreetingInitial extends GreetingState {
  GreetingInitial(String greeting) : super(greeting);
}

// Cubit
class GreetingCubit extends Cubit<GreetingState> {
  Timer? _timer;

  GreetingCubit() : super(GreetingInitial(_getGreetingBasedOnTime())) {
    // Update greeting every minute
    _timer = Timer.periodic(const Duration(minutes: 1), (_) {
      updateGreeting();
    });
  }

  void updateGreeting() {
    emit(GreetingInitial(_getGreetingBasedOnTime()));
  }

  static String _getGreetingBasedOnTime() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return "Good Morning";
    } else if (hour < 17) {
      return "Good Afternoon";
    } else {
      return "Good Evening";
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
