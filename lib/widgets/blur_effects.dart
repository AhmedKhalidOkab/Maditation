import 'dart:ui';

import 'package:flutter/material.dart';

class BlurEffects extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  const BlurEffects({Key? key, required this.child, this.borderRadius = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: child,
      ),
    );
  }
}
