import 'package:flutter/material.dart';

class WaveClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * .65);

    final firstPointController = Offset(size.width * .01, size.height * .75);
    final firstendPoint = Offset(size.width * .28, size.height * .8);
    path.quadraticBezierTo(firstPointController.dx, firstPointController.dy,
        firstendPoint.dx, firstendPoint.dy);
    path.lineTo(size.width * .7, size.height * .85);
    final secondtPointController = Offset(size.width * .99, size.height * .9);
    final secondendPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(secondtPointController.dx, secondtPointController.dy,
        secondendPoint.dx, secondendPoint.dy);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
