import 'dart:ui';
import 'dart:math' as math;

import 'package:flutter/material.dart';

class RotatingBouncingLoader extends StatefulWidget {
  final Color color;

  const RotatingBouncingLoader({super.key, required this.color});

  @override
  _RotatingBouncingLoaderState createState() => _RotatingBouncingLoaderState();
}

class _RotatingBouncingLoaderState extends State<RotatingBouncingLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Center(
        child: SizedBox(
          width: 60,
          height: 60,
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return CustomPaint(
                painter: RotatingBouncingBallPainter(
                    _controller.value, widget.color),
              );
            },
          ),
        ),
      ),
    );
  }
}

class RotatingBouncingBallPainter extends CustomPainter {
  final double progress;
  final Color color;

  RotatingBouncingBallPainter(this.progress, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final double radius = 10;
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double orbitRadius = size.width / 3;

    for (int i = 0; i < 3; i++) {
      double angle = (progress * 2 * math.pi) + (i * (2 * math.pi / 3));
      double x = centerX + orbitRadius * math.cos(angle);
      double y = centerY + orbitRadius * math.sin(angle);
      canvas.drawCircle(Offset(x, y), radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
