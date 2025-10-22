import 'dart:math';

import 'package:flutter/material.dart';

class CardFlipWidget extends StatefulWidget {
  const CardFlipWidget({
    super.key,
    required this.cardWidth,
    required this.cardHeight,
    required this.frontImage,
    required this.backImage,
    this.frontImageFit = BoxFit.cover,
    this.backImageFit = BoxFit.cover,
    this.cardNumber = '',
    this.cardHolderName = '',
    this.cvv = '',
    this.expiryDate = '',
    this.topRightIcon,
    this.bottomRightIcon,
  });

  final double cardWidth;
  final double cardHeight;
  final String frontImage;
  final String backImage;
  final BoxFit frontImageFit;
  final BoxFit backImageFit;
  final String cardNumber;
  final String cardHolderName;
  final String cvv;
  final String expiryDate;
  final Widget? topRightIcon;
  final Widget? bottomRightIcon;

  @override
  State<CardFlipWidget> createState() => _CardFlipWidgetState();
}

class _CardFlipWidgetState extends State<CardFlipWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: pi).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutBack),
    );
  }

  void _flipCard() {
    if (!_controller.isAnimating) {
      if (_controller.status == AnimationStatus.dismissed ||
          _controller.status == AnimationStatus.reverse) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _flipCard,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          final angle = _animation.value;
          final isFrontVisible = angle < pi / 2;
          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(angle),
            child: isFrontVisible
                ? _buildFront()
                : Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()..rotateY(pi),
                    child: _buildBack(),
                  ),
          );
        },
      ),
    );
  }

  Widget _buildFront() {
    return Stack(
      children: [
        _buildCard(imagePath: widget.frontImage, fit: widget.frontImageFit),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top right icon
                if (widget.topRightIcon != null)
                  Align(
                    alignment: Alignment.topRight,
                    child: widget.topRightIcon!,
                  ),
                const Spacer(),
                // Card number
                Material(
                  color: Colors.transparent,
                  child: Text(
                    widget.cardNumber,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Bottom row with holder name and icon
                Row(
                  children: [
                    Expanded(
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          widget.cardHolderName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    if (widget.bottomRightIcon != null) widget.bottomRightIcon!,
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBack() {
    return Stack(
      children: [
        _buildCard(imagePath: widget.backImage, fit: widget.backImageFit),
        Positioned(
          top: widget.cardHeight * 0.15,
          left: 0,
          right: 0,
          child: Container(
            height: 50,
            color: Colors.black87,
          ),
        ),
        Positioned(
          top: widget.cardHeight * 0.15 + 60, // Position below the black strip
          left: 20,
          right: 20,
          child: const Text(
            'This card is property of the issuing bank.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              height: 1.2,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Spacer(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'CVV: ${widget.cvv}',
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        'Expires: ${widget.expiryDate}',
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCard({required String imagePath, required BoxFit fit}) {
    return Container(
      width: widget.cardWidth,
      height: widget.cardHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(2, 4),
          ),
        ],
      ),
      clipBehavior: Clip
          .antiAlias, // Add this to ensure the image respects the border radius
      child: Image.asset(
        imagePath,
        fit: fit,
        width: widget.cardWidth,
        height: widget.cardHeight,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
