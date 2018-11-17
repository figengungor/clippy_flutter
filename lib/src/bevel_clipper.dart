import 'package:flutter/widgets.dart';

class BevelClipper extends CustomClipper<Path> {
  BevelClipper(this.cutLength);

  ///The length of equal side of isosceles that is used to clip corners
  final double cutLength;

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, cutLength);
    path.lineTo(cutLength, 0.0);
    path.lineTo(size.width - cutLength, 0.0);
    path.lineTo(size.width, cutLength);
    path.lineTo(size.width, size.height - cutLength);
    path.lineTo(size.width - cutLength, size.height);
    path.lineTo(cutLength, size.height);
    path.lineTo(0.0, size.height - cutLength);
    path.lineTo(0.0, cutLength);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    BevelClipper oldie = oldClipper as BevelClipper;
    return cutLength != oldie.cutLength;
  }
}
