import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math';
import '../cubit/pie_chart_cubit.dart';

class PieChartPainter extends CustomPainter {
  final List<double> values;
  final List<Color> colors;
  final int? selectedIndex;
  final List<String> labels;
  final double sweepAngleFactor;
  final double? selectedValue;

  PieChartPainter({
    required this.values,
    required this.colors,
    this.selectedIndex,
    required this.labels,
    required this.sweepAngleFactor,
    this.selectedValue,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..style = PaintingStyle.fill;
    final Paint borderPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;
    final double total = values.fold(0, (sum, value) => sum + value);
    double startAngle = -pi;

    final Offset center = Offset(size.width / 2, size.height);
    final double radius = size.width / 2;

    // Track the number of non-zero segments drawn to ensure alternating colors
    int drawnSegments = 0;

    for (int i = 0; i < values.length; i++) {
      // Skip zero values entirely
      if (values[i] == 0) {
        continue;
      }

      final double sweepAngle = (values[i] / total) * pi * sweepAngleFactor;

      // Use drawnSegments instead of i to determine color
      paint.color = colors[drawnSegments % colors.length];

      final bool isSelected = i == selectedIndex;
      final double popOutOffset = isSelected ? 20.0 : 0.0;
      final double midAngle = startAngle + sweepAngle / 2;
      final Offset popOffset = Offset(
        cos(midAngle) * popOutOffset,
        sin(midAngle) * popOutOffset,
      );

      final rect = Rect.fromCircle(center: center + popOffset, radius: radius);
      canvas.drawArc(
        rect,
        startAngle,
        sweepAngle,
        true,
        paint,
      );

      if (isSelected) {
        borderPaint.color = darkenColor(colors[drawnSegments % colors.length]);
        canvas.drawArc(rect, startAngle, sweepAngle, true, borderPaint);
      }

      _drawLabel(canvas, size, midAngle, labels[i], center, radius, isSelected,
          values[i]);

      startAngle += sweepAngle;
      drawnSegments++;
    }
  }

  void _drawLabel(Canvas canvas, Size size, double angle, String label,
      Offset center, double radius, bool isSelected, double? selectedValue) {
    if (values[labels.indexOf(label)] == 0) return;

    final double labelDistance = radius + (isSelected ? 40 : 25);
    final Offset labelPosition = Offset(
      center.dx + cos(angle) * labelDistance,
      center.dy + sin(angle) * labelDistance,
    );

    final textPainter = TextPainter(
      text: TextSpan(
        text: isSelected && selectedValue != null
            ? '$label\n${selectedValue.toStringAsFixed(0)}'
            : label,
        style: const TextStyle(
          fontSize: 10,
          color: Colors.black,
        ),
      ),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();
    textPainter.paint(
      canvas,
      Offset(
        labelPosition.dx - textPainter.width / 2,
        labelPosition.dy - textPainter.height / 2,
      ),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class PieChartWidget extends StatelessWidget {
  final List<double> values;
  final List<String> labels;
  final Color primaryColor;
  final Color secondaryColor;

  const PieChartWidget({
    super.key,
    required this.values,
    required this.labels,
    required this.primaryColor,
    required this.secondaryColor,
  });

  int? _getTappedSlice(Offset tapPosition, Size size) {
    final double dx = tapPosition.dx - size.width / 2;
    final double dy = tapPosition.dy - size.height;
    final double distance = sqrt(dx * dx + dy * dy);

    if (distance > size.width / 2) return null;

    double angle = atan2(dy, dx);

    if (angle > 0 || angle < -pi) return null;

    angle += pi;

    double startAngle = 0;
    final double total = values.fold(0, (sum, value) => sum + value);

    for (int i = 0; i < values.length; i++) {
      final double sweepAngle = (values[i] / total) * pi;
      if (angle >= startAngle && angle <= startAngle + sweepAngle) {
        return i;
      }
      startAngle += sweepAngle;
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    List<Color> chartColors = List.generate(values.length, (index) {
      return index % 2 == 0 ? primaryColor : secondaryColor;
    });

    return BlocProvider(
      create: (context) => PieChartCubit(),
      child: BlocBuilder<PieChartCubit, PieChartState>(
        builder: (context, state) {
          return GestureDetector(
            onTapUp: (details) {
              final RenderBox renderBox =
                  context.findRenderObject() as RenderBox;
              final Offset localPosition =
                  renderBox.globalToLocal(details.globalPosition);
              final int? tappedIndex =
                  _getTappedSlice(localPosition, renderBox.size);

              context.read<PieChartCubit>().selectSlice(
                    tappedIndex,
                    tappedIndex != null ? values[tappedIndex] : null,
                  );
            },
            child: CustomPaint(
              size: const Size(200, 100),
              painter: PieChartPainter(
                values: values,
                colors: chartColors,
                selectedIndex: state.selectedIndex,
                labels: labels,
                sweepAngleFactor: state.sweepAngleFactor,
                selectedValue: state.selectedValue,
              ),
            ),
          );
        },
      ),
    );
  }
}

Color darkenColor(Color color, [double amount = 0.2]) {
  final hsl = HSLColor.fromColor(color);
  final darkerHSL = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
  return darkerHSL.toColor();
}
