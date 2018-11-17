import 'package:flutter/widgets.dart';

class TicketClipper extends CustomClipper<Path> {
  TicketClipper(this.radius);

  final double radius;

  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(radius, 0.0);
    path.arcToPoint(Offset(0.0, radius),
        clockwise: true, radius: Radius.circular(radius));
    path.lineTo(0.0, size.height - radius);
    path.arcToPoint(Offset(radius, size.height),
        clockwise: true, radius: Radius.circular(radius));
    path.lineTo(size.width - radius, size.height);
    path.arcToPoint(Offset(size.width, size.height - radius),
        clockwise: true, radius: Radius.circular(radius));
    path.lineTo(size.width, radius);
    path.arcToPoint(Offset(size.width - radius, 0.0),
        clockwise: true, radius: Radius.circular(radius));

    /*..addOval(Rect.fromCircle(center: Offset.zero, radius: radius))
      ..addOval(
          Rect.fromCircle(center: Offset(size.width, 0.0), radius: radius))
      ..addOval(Rect.fromCircle(
          center: Offset(size.width, size.height), radius: radius))
      ..addOval(
          Rect.fromCircle(center: Offset(0.0, size.height), radius: radius))
      ..addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height))
      ..fillType = PathFillType.evenOdd;*/
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
