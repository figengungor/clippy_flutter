import 'package:flutter/widgets.dart';

class MessageClipper extends CustomClipper<Path> {
  MessageClipper(
      this.triangleX1, this.triangleX2, this.triangleX3, this.triangleY1);

  final double triangleX1;
  final double triangleX2;
  final double triangleX3;
  final double triangleY1;

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - triangleY1);
    path.lineTo(triangleX1, size.height - triangleY1);
    path.lineTo(triangleX3, size.height);
    path.lineTo(triangleX2, size.height - triangleY1);
    path.lineTo(size.width, size.height - triangleY1);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    MessageClipper oldie = oldClipper as MessageClipper;
    return triangleX1 != oldie.triangleX1 ||
        triangleX2 != oldie.triangleX2 ||
        triangleX3 != oldie.triangleX3 ||
        triangleY1 != oldie.triangleY1;
  }
}
