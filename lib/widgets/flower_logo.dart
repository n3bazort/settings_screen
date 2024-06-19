import 'package:flutter/material.dart';

class FlowerLogo extends StatelessWidget {
  final double size;
  final Color color;

  // TODO 1: Replace this non working constructor with one that matches the way we instantiate this class in main.dart.
  const FlowerLogo({ required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    final circleSize = size / 2;
    final gapSize = size / 10;

    // TODO 0: What is the main purpose of the Stack widget? What do we use it for? Please answer this question in this very comment.
    return Stack(
      children: [
        // We require some non-Positioned widget so Stack can get its size.
        SizedBox(
          width: size,
          height: size,
        ),
        // Top left
        Positioned(
          top: gapSize,
          left: gapSize,
          child: circle(),
        ),
        // Top right
        Positioned(
          top: gapSize,
          left: circleSize - gapSize,
          child: circle(),
        ),
        // Mid left
        Positioned(
          top: circleSize - gapSize * 2,
          left: 0,
          child: circle(),
        ),
        // Mid right
        Positioned(
          top: circleSize - gapSize * 2,
          left: circleSize,
          child: circle(),
        ),
        // Bottom left
        Positioned(
          top: circleSize,
          left: gapSize,
          child: circle(),
        ),
        // Bottom right
        Positioned(
          top: circleSize,
          left: circleSize - gapSize,
          child: circle(),
        ),
      ],
    );
  }

  Widget circle() {
    final circleSize = size / 2;

    return Container(
      width: circleSize,
      height: circleSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withOpacity(0.6),
      ),
    );
  }
}
