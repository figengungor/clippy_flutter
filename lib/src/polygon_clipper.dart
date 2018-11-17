import 'package:flutter/widgets.dart';
import 'dart:math';

class PolygonClipper extends CustomClipper<Path> {
  PolygonClipper(
    this.sides,
  );
  final int sides;
  final double startAngle = -90.0;

  @override
  Path getClip(Size size) {
    double section = (360.0 / sides);
    double polygonSize = min(size.width, size.height);
    final double radius = polygonSize / 2;
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    var angle = _angleToRadian(startAngle);
    final Path path = new Path();
    path.moveTo(
        (centerX + radius * cos(angle)), (centerY + radius * sin(angle)));
    for (int i = 1; i < sides; i++) {
      angle = _angleToRadian(section * i + startAngle);
      path.lineTo(
          (centerX + radius * cos(angle)), (centerY + radius * sin(angle)));
    }

    path.close();
    return path;
  }

  double _angleToRadian(double angle) {
    return angle * (pi / 180);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    PolygonClipper oldie = oldClipper as PolygonClipper;
    return sides != oldie.sides;
  }
}
