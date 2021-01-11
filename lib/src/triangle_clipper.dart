import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/edge.dart';

class TriangleClipper extends CustomClipper<Path> {
  TriangleClipper(
    this.trianglePercentLeft,
    this.trianglePercentRight,
    this.trianglePercentEdge,
    this.edge,
  );

  final double trianglePercentLeft;
  final double trianglePercentRight;
  final double trianglePercentEdge;
  final Edge edge;

  @override
  Path getClip(Size size) {
    switch (edge) {
      case Edge.TOP:
        return _getTopPath(size);
      case Edge.RIGHT:
        return _getRightPath(size);
      case Edge.BOTTOM:
        return _getBottomPath(size);
      case Edge.LEFT:
        return _getLeftPath(size);
      default:
        return _getRightPath(size);
    }
  }

  Path _getTopPath(Size size) {
    var path = Path();
    path.moveTo(trianglePercentLeft * size.width, size.height);
    path.lineTo(size.width - trianglePercentRight * size.width, size.height);
    path.lineTo(size.width * trianglePercentEdge, 0.0);
    path.close();
    return path;
  }

  Path _getRightPath(Size size) {
    var path = Path();
    path.moveTo(0.0, size.height * trianglePercentLeft);
    path.lineTo(0.0, size.height - size.height * trianglePercentRight);
    path.lineTo(size.width, size.height * trianglePercentEdge);
    path.close();
    return path;
  }

  Path _getBottomPath(Size size) {
    var path = Path();
    path.moveTo(size.width * trianglePercentLeft, 0.0);
    path.lineTo(size.width - size.width * trianglePercentRight, 0.0);
    path.lineTo(size.width * trianglePercentEdge, size.height);
    path.close();
    return path;
  }

  Path _getLeftPath(Size size) {
    var path = Path();
    path.moveTo(0.0, size.height * trianglePercentEdge);
    path.lineTo(size.width, size.height * trianglePercentLeft);
    path.lineTo(size.width, size.height - size.height * trianglePercentRight);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    TriangleClipper oldie = oldClipper as TriangleClipper;
    return trianglePercentLeft != oldie.trianglePercentLeft ||
        trianglePercentRight != oldie.trianglePercentRight ||
        trianglePercentEdge != oldie.trianglePercentEdge ||
        edge != oldie.edge;
  }
}
