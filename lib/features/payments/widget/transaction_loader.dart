import 'package:flutter/material.dart';
import 'dart:math';

enum MoneyFlowDirection { send, receive }

class TransactionLoader extends StatefulWidget {
  final Widget sender;
  final Widget receiver;
  final IconData currencyIcon;
  final MoneyFlowDirection direction;

  const TransactionLoader({
    super.key,
    required this.sender,
    required this.receiver,
    required this.currencyIcon,
    required this.direction,
  });

  @override
  _TransactionLoaderState createState() => _TransactionLoaderState();
}

class _TransactionLoaderState extends State<TransactionLoader>
    with TickerProviderStateMixin {
  final int numberOfCoins = 4;
  final Duration animationDuration = Duration(milliseconds: 2000);
  final double avatarSize = 60;
  final double coinSize = 20;

  List<AnimationController>? _controllers;
  List<Animation<double>>? _animations;
  bool _isDisposed = false;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
  }

  void _initializeAnimations() {
    if (_isDisposed) return;
    
    _controllers = [];
    _animations = [];

    for (int i = 0; i < numberOfCoins; i++) {
      final controller = AnimationController(
        vsync: this,
        duration: animationDuration,
      );

      final animation = Tween<double>(
        begin: 0.0,
        end: 1.0,
      ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

      _controllers!.add(controller);
      _animations!.add(animation);

      Future.delayed(Duration(milliseconds: i * 400), () {
        if (!_isDisposed && mounted && _controllers != null && i < _controllers!.length) {
          _controllers![i].repeat();
        }
      });
    }
  }

  @override
  void dispose() {
    _isDisposed = true;
    if (_controllers != null) {
      for (var controller in _controllers!) {
        controller.dispose();
      }
    }
    _controllers = null;
    _animations = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double totalWidth = MediaQuery.of(context).size.width / 1.4;

    return SizedBox(
      width: totalWidth,
      height: 80,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Sender
          Positioned(
            left: 0,
            child: SizedBox(
              width: avatarSize,
              height: avatarSize,
              child: widget.sender,
            ),
          ),
          // Receiver
          Positioned(
            right: 0,
            child: SizedBox(
              width: avatarSize,
              height: avatarSize,
              child: widget.receiver,
            ),
          ),
          // Coins - only show if animations are initialized
          if (_animations != null && !_isDisposed)
            for (int i = 0; i < numberOfCoins && i < _animations!.length; i++)
              AnimatedBuilder(
                animation: _animations![i],
                builder: (context, child) {
                  double startX = widget.direction == MoneyFlowDirection.send
                      ? avatarSize
                      : totalWidth - avatarSize - coinSize;
                  double endX = widget.direction == MoneyFlowDirection.send
                      ? totalWidth - avatarSize - coinSize
                      : avatarSize;
                  double progress = _animations![i].value;
                  double x = startX + (endX - startX) * progress;

                  // Arc or line movement
                  double y;
                  if (i % 3 == 0) {
                    y = 32 - 20 * sin(progress * pi);
                  } else if (i % 3 == 1) {
                    y = 32;
                  } else {
                    y = 32 + 20 * sin(progress * pi);
                  }

                  double opacity = 1.0 - progress;

                  return Positioned(
                    left: x,
                    top: y,
                    child: Opacity(
                      opacity: opacity.clamp(0.3, 1.0),
                      child: Coin(
                        size: coinSize,
                        icon: widget.currencyIcon,
                        color: Colors.amber,
                      ),
                    ),
                  );
                },
              ),
        ],
      ),
    );
  }
}

class Coin extends StatelessWidget {
  final double size;
  final IconData icon;
  final Color color;

  const Coin({
    super.key,
    required this.size,
    required this.icon,
    this.color = Colors.amber,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.4),
            blurRadius: 4,
            spreadRadius: 1,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Center(
        child: Icon(icon, size: size / 2, color: Colors.white),
      ),
    );
  }
}
