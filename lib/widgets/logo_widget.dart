import 'package:flutter/material.dart';

import '../constants.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: const AlwaysStoppedAnimation(-45 / 360),
      child: Image.asset(Constants.electChainLogo, width: 70, height: 70),
    );
  }
}
