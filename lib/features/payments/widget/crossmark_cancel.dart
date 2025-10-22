import 'package:flutter/material.dart';
import 'dart:ui';

import 'checkmark_done.dart';

class CrossPainter extends CustomPainter {
  final double progress;
  final Color color;

  CrossPainter({required this.progress, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final path = Path();

    // First diagonal line
    path.moveTo(size.width * 0.3, size.height * 0.3);
    path.lineTo(size.width * 0.7, size.height * 0.7);

    // Continue the path for the second diagonal line
    path.moveTo(size.width * 0.7, size.height * 0.3);
    path.lineTo(size.width * 0.3, size.height * 0.7);

    // Get all path metrics instead of just the first one
    final pathMetrics = path.computeMetrics();

    // Draw both lines based on progress
    for (final metric in pathMetrics) {
      final extractedPath = metric.extractPath(
        0,
        metric.length * progress,
      );
      canvas.drawPath(extractedPath, paint);
    }
  }

  @override
  bool shouldRepaint(CrossPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}

class BounceCross extends StatefulWidget {
  final Color color;
  final double size;
  final double backgroundCircleSize;

  const BounceCross({
    super.key,
    required this.color,
    this.size = 75.0,
    this.backgroundCircleSize = 90.0,
  });

  @override
  State<BounceCross> createState() => _BounceCrossState();
}

class _BounceCrossState extends State<BounceCross>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _progressAnimation;
  late Animation<double> _bounceAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _progressAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeInOut),
      ),
    );

    _bounceAnimation = TweenSequence([
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.0, end: 1.2),
        weight: 1.0,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.2, end: 0.9),
        weight: 1.0,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.9, end: 1.0),
        weight: 1.0,
      ),
    ]).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.6, 1.0, curve: Curves.easeInOut),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.scale(
          scale: _bounceAnimation.value,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                size: Size(
                    widget.backgroundCircleSize, widget.backgroundCircleSize),
                painter: CloudShapePainter(
                  color: widget.color,
                ),
              ),
              CustomPaint(
                size: Size(widget.size, widget.size),
                painter: CrossPainter(
                  progress: _progressAnimation.value,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
