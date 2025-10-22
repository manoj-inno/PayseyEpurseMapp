import 'package:equatable/equatable.dart';

class ChartState extends Equatable {
  final bool showOnlySpent;
  final bool showOnlyIncome;
  final String selectedDateRange;
  final Map<String, Map<String, List<double>>> chartData;
  final List<String> dateLabels;
  final double totalSpent;
  final double totalIncome;

  const ChartState({
    this.showOnlySpent = false,
    this.showOnlyIncome = false,
    this.selectedDateRange = 'This Week',
    this.chartData = const {},
    this.dateLabels = const [],
    this.totalSpent = 0.0,
    this.totalIncome = 0.0,
  });

  ChartState copyWith({
    bool? showOnlySpent,
    bool? showOnlyIncome,
    String? selectedDateRange,
    Map<String, Map<String, List<double>>>? chartData,
    List<String>? dateLabels,
    double? totalSpent,
    double? totalIncome,
  }) {
    return ChartState(
      showOnlySpent: showOnlySpent ?? this.showOnlySpent,
      showOnlyIncome: showOnlyIncome ?? this.showOnlyIncome,
      selectedDateRange: selectedDateRange ?? this.selectedDateRange,
      chartData: chartData ?? this.chartData,
      dateLabels: dateLabels ?? this.dateLabels,
      totalSpent: totalSpent ?? this.totalSpent,
      totalIncome: totalIncome ?? this.totalIncome,
    );
  }

  @override
  List<Object?> get props => [
        showOnlySpent,
        showOnlyIncome,
        selectedDateRange,
        chartData,
        dateLabels,
        totalSpent,
        totalIncome,
      ];
}
