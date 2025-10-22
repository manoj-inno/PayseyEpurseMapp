import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'chart_state.dart';

class ChartCubit extends Cubit<ChartState> {
  ChartCubit() : super(const ChartState()) {
    _initializeData();
  }

  void _initializeData() {
    final mockData = {
      'This Week': {
        'days': List.generate(7, (i) => (i + 1).toDouble()),
        'spent': List.generate(7, (i) => 90.0 + (i % 4) * 50),
        'income': List.generate(7, (i) => 65.0 + (i % 6) * 60),
      },
      'Last Week': {
        'days': List.generate(7, (i) => (i + 1).toDouble()),
        'spent': List.generate(7, (i) => 65.0 + (i % 3) * 50),
        'income': List.generate(7, (i) => 60.0 + (i % 5) * 70),
      },
    };

    final labels = _generateDateLabels('This Week');
    final totalSpent = _calculateTotal(mockData['This Week']?['spent'] ?? []);
    final totalIncome = _calculateTotal(mockData['This Week']?['income'] ?? []);

    emit(state.copyWith(
      chartData: mockData,
      dateLabels: labels,
      totalSpent: totalSpent,
      totalIncome: totalIncome,
    ));
  }

  List<String> _generateDateLabels(String selectedRange) {
    final now = DateTime.now();
    final formatter = DateFormat('E dd');

    if (selectedRange == 'This Week') {
      final int daysToSubtract = now.weekday - 1;
      final startOfWeek = now.subtract(Duration(days: daysToSubtract));
      return List.generate(
          7, (i) => formatter.format(startOfWeek.add(Duration(days: i))));
    } else {
      final int daysToSubtract = now.weekday + 6;
      final startOfLastWeek = now.subtract(Duration(days: daysToSubtract));
      return List.generate(
          7, (i) => formatter.format(startOfLastWeek.add(Duration(days: i))));
    }
  }

  double _calculateTotal(List<double> values) {
    return values.fold(0.0, (sum, value) => sum + value);
  }

  void toggleSpentOnly(bool value) {
    if (value && state.showOnlyIncome) {
      emit(state.copyWith(showOnlyIncome: false, showOnlySpent: value));
    } else {
      emit(state.copyWith(showOnlySpent: value));
    }
  }

  void toggleIncomeOnly(bool value) {
    if (value && state.showOnlySpent) {
      emit(state.copyWith(showOnlySpent: false, showOnlyIncome: value));
    } else {
      emit(state.copyWith(showOnlyIncome: value));
    }
  }

  void showBoth() {
    emit(state.copyWith(showOnlySpent: false, showOnlyIncome: false));
  }

  void changeDateRange(String range) {
    if (range != state.selectedDateRange) {
      final labels = _generateDateLabels(range);
      final totalSpent =
          _calculateTotal(state.chartData[range]?['spent'] ?? []);
      final totalIncome =
          _calculateTotal(state.chartData[range]?['income'] ?? []);

      emit(state.copyWith(
        selectedDateRange: range,
        dateLabels: labels,
        totalSpent: totalSpent,
        totalIncome: totalIncome,
      ));
    }
  }

  double get globalMaxValue {
    return state.chartData.values
        .expand((data) => [...data['spent']!, ...data['income']!])
        .reduce((a, b) => a > b ? a : b);
  }
}
