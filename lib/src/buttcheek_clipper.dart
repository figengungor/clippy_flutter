import 'package:flutter/widgets.dart';

class ButtCheekClipper extends CustomClipper<Path> {
  ButtCheekClipper(this.height);

  ///The height of butt-cheek arc
  final double height;

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - height);
    path.quadraticBezierTo(
        size.width / 4, size.height - height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width * 3 / 4, size.height - height, size.width,
        size.height - height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    ButtCheekClipper oldie = oldClipper as ButtCheekClipper;
    return height != oldie.height;
  }
}
