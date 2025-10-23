import 'package:flutter/material.dart';

class CheckmarkPainter extends CustomPainter {
  final double progress;
  final Color color;

  CheckmarkPainter({required this.progress, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final path = Path();

    // Starting point of the checkmark (left point)
    path.moveTo(size.width * 0.25, size.height * 0.6);

    // Middle point (bottom point) - adjusted for less curve
    path.lineTo(
        size.width * 0.43, size.height * 0.75); // Adjusted from 0.45, 0.75

    // End point (top-right point) - adjusted for straighter line
    path.lineTo(size.width * 0.73,
        size.height * 0.3); // Adjusted coordinates for straighter tail

    final totalPath = path;

    final pathMetric = totalPath.computeMetrics().first;
    final totalLength = pathMetric.length;

    final extractedPath = pathMetric.extractPath(
      0,
      totalLength * progress,
    );

    canvas.drawPath(extractedPath, paint);
  }

  @override
  bool shouldRepaint(CheckmarkPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}

class BounceCheckmark extends StatefulWidget {
  final Color color;
  final double size;
  final double backgroundCircleSize;

  const BounceCheckmark({
    super.key,
    required this.color,
    this.size = 75.0,
    this.backgroundCircleSize = 90.0,
  });

  @override
  State<BounceCheckmark> createState() => _BounceCheckmarkState();
}

class _BounceCheckmarkState extends State<BounceCheckmark>
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
                painter: CheckmarkPainter(
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

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class CloudShapePainter extends CustomPainter {
  final Color color;

  CloudShapePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final radius = size.width / 2;

    // Center circle for base shape - even smaller
    path.addOval(Rect.fromCircle(
      center: Offset(centerX, centerY),
      radius: radius * 0.55,
    ));

    // Original four circles (top, bottom, left, right) - much larger and more offset
    path.addOval(Rect.fromCircle(
      center: Offset(centerX - radius * 0.5, centerY),
      radius: radius * 0.5,
    ));
    path.addOval(Rect.fromCircle(
      center: Offset(centerX + radius * 0.5, centerY),
      radius: radius * 0.5,
    ));
    path.addOval(Rect.fromCircle(
      center: Offset(centerX, centerY - radius * 0.5),
      radius: radius * 0.5,
    ));
    path.addOval(Rect.fromCircle(
      center: Offset(centerX, centerY + radius * 0.5),
      radius: radius * 0.5,
    ));

    // Four additional circles for diagonal positions - larger and more offset
    path.addOval(Rect.fromCircle(
      center: Offset(centerX - radius * 0.35, centerY - radius * 0.35),
      radius: radius * 0.5,
    ));
    path.addOval(Rect.fromCircle(
      center: Offset(centerX + radius * 0.35, centerY - radius * 0.35),
      radius: radius * 0.5,
    ));
    path.addOval(Rect.fromCircle(
      center: Offset(centerX - radius * 0.35, centerY + radius * 0.35),
      radius: radius * 0.5,
    ));
    path.addOval(Rect.fromCircle(
      center: Offset(centerX + radius * 0.35, centerY + radius * 0.35),
      radius: radius * 0.5,
    ));

    // Add shadow
    canvas.drawShadow(
        path, Color(0xFF1D9BF0).withValues(alpha: 0.3), 8.0, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
