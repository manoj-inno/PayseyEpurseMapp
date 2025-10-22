import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/app_themes.dart';

class DoubleBarChart extends StatefulWidget {
  final List<double> values1;
  final List<double> values2;
  final List<String> labels;
  final BuildContext context;
  final bool showOnlyValues1;
  final bool showOnlyValues2;
  final String values1Label;
  final String values2Label;
  final double maxValue;
  final bool isDarkMode;

  const DoubleBarChart({
    super.key,
    required this.values1,
    required this.values2,
    required this.labels,
    required this.context,
    this.showOnlyValues1 = false,
    this.showOnlyValues2 = false,
    this.values1Label = "Spent",
    this.values2Label = "Income",
    required this.maxValue,
    this.isDarkMode = false,
  });

  @override
  State<DoubleBarChart> createState() => _DoubleBarChartState();
}

class _DoubleBarChartState extends State<DoubleBarChart>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _values1Opacity;
  late Animation<double> _values2Opacity;
  List<double> _oldValues1 = [];
  List<double> _oldValues2 = [];
  double _progress = 1.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _oldValues1 = List.from(widget.values1);
    _oldValues2 = List.from(widget.values2);
    _initializeAnimations();
    _animationController.forward();
  }

  @override
  void didUpdateWidget(DoubleBarChart oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Store old values before updating
    if (!listEquals(oldWidget.values1, widget.values1) ||
        !listEquals(oldWidget.values2, widget.values2)) {
      _oldValues1 = List.from(oldWidget.values1);
      _oldValues2 = List.from(oldWidget.values2);
      _progress = 0.0;
      _animationController.forward(from: 0.0);
    } else if (oldWidget.showOnlyValues1 != widget.showOnlyValues1 ||
        oldWidget.showOnlyValues2 != widget.showOnlyValues2) {
      // Existing opacity animation logic
      _values1Opacity = Tween<double>(
        begin: _values1Opacity.value,
        end: widget.showOnlyValues2 ? 0.0 : 1.0,
      ).animate(CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOutCubic,
      ));

      _values2Opacity = Tween<double>(
        begin: _values2Opacity.value,
        end: widget.showOnlyValues1 ? 0.0 : 1.0,
      ).animate(CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOutCubic,
      ));

      _animationController.forward(from: 0.0);
    }
  }

  void _initializeAnimations() {
    // Values1 (Spent) Opacity Animation with smoother curve
    _values1Opacity = Tween<double>(
      begin: widget.showOnlyValues2 ? 0.0 : 1.0,
      end: widget.showOnlyValues2 ? 0.0 : 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOutCubic,
    ));

    // Values2 (Income) Opacity Animation with smoother curve
    _values2Opacity = Tween<double>(
      begin: widget.showOnlyValues1 ? 0.0 : 1.0,
      end: widget.showOnlyValues1 ? 0.0 : 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOutCubic,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Chart legend
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!widget.showOnlyValues2)
                Row(
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      color: widget.isDarkMode
                          ? AppColors.shimmerBaseDark
                          : AppColors.shimmerBaseLight,
                    ),
                    const SizedBox(width: 4),
                    Text(widget.values1Label,
                        style: Theme.of(context).textTheme.labelSmall),
                    const SizedBox(width: 16),
                  ],
                ),
              if (!widget.showOnlyValues1)
                Row(
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      color: widget.isDarkMode
                          ? AppColors.darkButtonEnd
                          : AppColors.lightButtonEnd,
                    ),
                    const SizedBox(width: 4),
                    Text(widget.values2Label,
                        style: Theme.of(context).textTheme.labelSmall),
                  ],
                ),
            ],
          ),
        ),
        // Chart
        Flexible(
          fit: FlexFit.loose,
          child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              _progress = _animationController.value;
              return CustomPaint(
                size: const Size(double.infinity, 250),
                painter: DoubleBarChartPainter(
                  _oldValues1,
                  _oldValues2,
                  widget.values1,
                  widget.values2,
                  widget.labels,
                  widget.context,
                  widget.showOnlyValues1,
                  widget.showOnlyValues2,
                  _values1Opacity.value,
                  _values2Opacity.value,
                  widget.maxValue,
                  _progress,
                  widget.isDarkMode,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class DoubleBarChartPainter extends CustomPainter {
  final List<double> oldValues1;
  final List<double> oldValues2;
  final List<double> newValues1;
  final List<double> newValues2;
  final List<String> labels;
  final BuildContext context;
  final bool showOnlyValues1;
  final bool showOnlyValues2;
  final double values1Opacity;
  final double values2Opacity;
  final double maxValue;
  final double progress;
  final double labelHeight = 30.0;
  final bool isDarkMode;

  DoubleBarChartPainter(
    this.oldValues1,
    this.oldValues2,
    this.newValues1,
    this.newValues2,
    this.labels,
    this.context,
    this.showOnlyValues1,
    this.showOnlyValues2,
    this.values1Opacity,
    this.values2Opacity,
    this.maxValue,
    this.progress,
    this.isDarkMode,
  );

  @override
  void paint(Canvas canvas, Size size) {
    // Create gradient paints for bars
    final Paint barPaint1 = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          (isDarkMode ? AppColors.shimmerBaseDark : AppColors.shimmerBaseLight)
              .withOpacity(values1Opacity),
          (isDarkMode ? AppColors.shimmerBaseDark : AppColors.shimmerBaseLight)
              .withOpacity(values1Opacity * 0.7),
        ],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    final Paint barPaint2 = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          (isDarkMode ? AppColors.darkButtonEnd : AppColors.lightButtonEnd)
              .withOpacity(values2Opacity),
          (isDarkMode ? AppColors.darkButtonEnd : AppColors.lightButtonEnd)
              .withOpacity(values2Opacity * 0.7),
        ],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    // Calculate available height for bars
    final double topPadding = 40.0;
    final double maxBarHeight = size.height - labelHeight - topPadding;

    final int barsPerGroup = 2;
    final double availableWidth = size.width * 0.95;
    final double groupSpacing = newValues1.length > 14 ? 4.0 : 12.0;

    final double totalGroupsWidth =
        availableWidth - (newValues1.length - 1) * groupSpacing;
    double barWidth = totalGroupsWidth / (newValues1.length * barsPerGroup);
    barWidth = barWidth.clamp(4.0, 32.0);

    final double spaceBetweenBars = barWidth * 0.15;
    final double barRadius = barWidth * 0.3;

    final bool needsScroll = barWidth < 10 && newValues1.length > 14;
    if (needsScroll) {
      barWidth = 10.0;
    }

    final double yOffset = size.height - labelHeight;
    final double xOffset = (size.width -
            (newValues1.length *
                    (barsPerGroup * barWidth +
                        (barsPerGroup - 1) * spaceBetweenBars +
                        groupSpacing) -
                groupSpacing)) /
        2;

    final textPainter = TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    final bool showAllLabels = newValues1.length <= 14;
    final int labelStep =
        showAllLabels ? 1 : (newValues1.length ~/ 10).clamp(2, 5);

    // Draw grid lines
    final Paint gridPaint = Paint()
      ..color = (isDarkMode ? Colors.white : Colors.black).withOpacity(0.1)
      ..strokeWidth = 0.5;

    // Draw 4 horizontal grid lines
    for (int i = 1; i <= 4; i++) {
      final double y = yOffset - (maxBarHeight * i / 4);
      canvas.drawLine(
        Offset(xOffset, y),
        Offset(size.width - xOffset, y),
        gridPaint,
      );
    }

    for (int i = 0; i < newValues1.length; i++) {
      final double currentValue1 = lerpDouble(
        oldValues1.length > i ? oldValues1[i] : 0.0,
        newValues1[i],
        progress,
      )!;

      final double currentValue2 = lerpDouble(
        oldValues2.length > i ? oldValues2[i] : 0.0,
        newValues2[i],
        progress,
      )!;

      double groupStartX = xOffset +
          i *
              (barsPerGroup * barWidth +
                  (barsPerGroup - 1) * spaceBetweenBars +
                  groupSpacing);

      // First bar (values1)
      double normalizedHeight1 = (currentValue1 / maxValue) * maxBarHeight;
      normalizedHeight1 = normalizedHeight1.clamp(0.0, maxBarHeight);
      double left1 = groupStartX;
      double top1 = yOffset - normalizedHeight1;

      // Draw rounded rectangle for first bar
      final rrect1 = RRect.fromRectAndRadius(
        Rect.fromLTWH(left1, top1, barWidth, normalizedHeight1),
        Radius.circular(barRadius),
      );
      canvas.drawRRect(rrect1, barPaint1);

      // Draw value above first bar
      if (values1Opacity > 0.1) {
        textPainter.text = TextSpan(
          text: currentValue1.toStringAsFixed(0),
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontSize: barWidth < 15 ? 4 : 6,
                color: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.color
                    ?.withOpacity(values1Opacity),
                fontWeight: FontWeight.bold,
              ),
        );
        textPainter.layout();

        double textX = left1 + (barWidth - textPainter.width) / 2;
        double textY = top1 - textPainter.height - 4;
        textY = textY.clamp(0.0, size.height - textPainter.height);

        textPainter.paint(canvas, Offset(textX, textY));
      }

      // Second bar (values2)
      double normalizedHeight2 = (currentValue2 / maxValue) * maxBarHeight;
      normalizedHeight2 = normalizedHeight2.clamp(0.0, maxBarHeight);
      double left2 = groupStartX + barWidth + spaceBetweenBars;
      double top2 = yOffset - normalizedHeight2;

      // Draw rounded rectangle for second bar
      final rrect2 = RRect.fromRectAndRadius(
        Rect.fromLTWH(left2, top2, barWidth, normalizedHeight2),
        Radius.circular(barRadius),
      );
      canvas.drawRRect(rrect2, barPaint2);

      // Draw value above second bar
      if (values2Opacity > 0.1) {
        textPainter.text = TextSpan(
          text: currentValue2.toStringAsFixed(0),
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontSize: barWidth < 15 ? 4 : 6,
                color: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.color
                    ?.withOpacity(values2Opacity),
                fontWeight: FontWeight.bold,
              ),
        );
        textPainter.layout();

        double textX = left2 + (barWidth - textPainter.width) / 2;
        double textY = top2 - textPainter.height - 4;
        textY = textY.clamp(0.0, size.height - textPainter.height);

        textPainter.paint(canvas, Offset(textX, textY));
      }

      double groupCenter = groupStartX + barWidth + spaceBetweenBars / 2;

      if (i % labelStep == 0 || i == newValues1.length - 1) {
        final bool rotateLabels = newValues1.length > 14;
        textPainter.text = TextSpan(
          text: labels[i],
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontSize: newValues1.length > 20 ? 9 : 11,
                fontWeight: FontWeight.w500,
              ),
        );
        textPainter.layout();

        if (rotateLabels) {
          canvas.save();
          canvas.translate(groupCenter, yOffset + 8);
          canvas.rotate(3.14159 / 4);
          textPainter.paint(canvas, Offset(-textPainter.width / 2, 0));
          canvas.restore();
        } else {
          textPainter.paint(
              canvas, Offset(groupCenter - textPainter.width / 2, yOffset + 8));
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant DoubleBarChartPainter oldDelegate) =>
      values1Opacity != oldDelegate.values1Opacity ||
      values2Opacity != oldDelegate.values2Opacity ||
      showOnlyValues1 != oldDelegate.showOnlyValues1 ||
      showOnlyValues2 != oldDelegate.showOnlyValues2 ||
      maxValue != oldDelegate.maxValue ||
      progress != oldDelegate.progress;
}
