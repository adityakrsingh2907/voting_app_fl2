import 'package:flutter/material.dart';

import '../constants.dart';

class Logo extends StatelessWidget {
  final double height;
  final double width;
  final String logoPath;

  const Logo({
    super.key,
    required this.height,
    required this.width,
    required this.logoPath,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(logoPath, width: width, height: height);
  }
}
