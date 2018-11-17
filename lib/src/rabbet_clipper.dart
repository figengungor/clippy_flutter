import 'package:flutter/widgets.dart';

class RabbetClipper extends CustomClipper<Path> {
  RabbetClipper(this.cutLength);

  final double cutLength;

  @override
  Path getClip(Size size) {
    var path = Path();
    path
      ..addRect(Rect.fromLTWH(0.0, 0.0, cutLength, cutLength))
      ..addRect(
          Rect.fromLTWH(size.width - cutLength, 0.0, cutLength, cutLength))
      ..addRect(Rect.fromLTWH(size.width - cutLength, size.height - cutLength,
          cutLength, cutLength))
      ..addRect(
          Rect.fromLTWH(0.0, size.height - cutLength, cutLength, cutLength))
      ..addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height))
      ..fillType = PathFillType.evenOdd;
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
