import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double height;
  final double width;
  final String logoPath;
  final double angle;

  const Logo({
    super.key,
    required this.angle,
    required this.height,
    required this.width,
    required this.logoPath,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: Image.asset(
        logoPath,
        width: width,
        height: height,
      ),
    );
  }
}
