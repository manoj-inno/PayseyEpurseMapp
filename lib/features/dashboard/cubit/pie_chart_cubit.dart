import 'package:flutter_bloc/flutter_bloc.dart';

class PieChartState {
  final int? selectedIndex;
  final double? selectedValue;
  final double sweepAngleFactor;

  const PieChartState({
    this.selectedIndex,
    this.selectedValue,
    this.sweepAngleFactor = 0,
  });

  PieChartState copyWith({
    int? selectedIndex,
    double? selectedValue,
    double? sweepAngleFactor,
  }) {
    return PieChartState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      selectedValue: selectedValue ?? this.selectedValue,
      sweepAngleFactor: sweepAngleFactor ?? this.sweepAngleFactor,
    );
  }
}

class PieChartCubit extends Cubit<PieChartState> {
  PieChartCubit() : super(const PieChartState()) {
    // Start the animation when cubit is created
    startAnimation();
  }

  void selectSlice(int? index, double? value) {
    emit(state.copyWith(
      selectedIndex: index,
      selectedValue: value,
    ));
  }

  void startAnimation() {
    // Emit states to animate the sweep factor from 0 to 1
    Future.delayed(const Duration(milliseconds: 50), () async {
      for (int i = 1; i <= 20; i++) {
        await Future.delayed(const Duration(milliseconds: 50));
        emit(state.copyWith(sweepAngleFactor: i / 20));
      }
    });
  }
}
