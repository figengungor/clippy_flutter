import 'package:flutter/widgets.dart';

/// Defines the corners of the child widget
enum DiagonalPosition { TOP_LEFT, TOP_RIGHT, BOTTOM_LEFT, BOTTOM_RIGHT }

/// A widget that clips its child diagonally.

///Diagonal clipping starts from the [position] in the [axis]
///ends up [clipHeight] distance from the opposite [position]
class DiagonalClipper extends CustomClipper<Path> {
  DiagonalClipper(this.clipHeight, this.position, this.axis);

  ///The height that the diagonal angle sees
  final double clipHeight;

  ///The corner of the child which is represented with [DiagonalPosition]
  final DiagonalPosition position;

  ///The direction of the diagonal
  final Axis axis;

  @override
  Path getClip(Size size) {
    switch (position) {
      case DiagonalPosition.TOP_LEFT:
        return _getTopLeftPath(size);
      case DiagonalPosition.TOP_RIGHT:
        return _getTopRightPath(size);
      case DiagonalPosition.BOTTOM_LEFT:
        return _getBottomLeftPath(size);
      case DiagonalPosition.BOTTOM_RIGHT:
        return _getBottomRightPath(size);
      default:
        return _getBottomLeftPath(size);
    }
  }

  _getTopLeftPath(Size size) {
    var path = Path();
    if (axis == Axis.horizontal) {
      path.lineTo(0.0, size.height);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width, clipHeight);
    } else {
      path.lineTo(clipHeight, size.height);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width, 0.0);
    }
    path.close();
    return path;
  }

  _getTopRightPath(Size size) {
    var path = Path();
    if (axis == Axis.horizontal) {
      path.moveTo(0.0, clipHeight);
      path.lineTo(0.0, size.height);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width, 0.0);
    } else {
      path.lineTo(size.width, 0.0);
      path.lineTo(size.width - clipHeight, size.height);
      path.lineTo(0.0, size.height);
    }
    path.close();
    return path;
  }

  _getBottomLeftPath(Size size) {
    var path = Path();
    if (axis == Axis.horizontal) {
      path.lineTo(0.0, size.height);
      path.lineTo(size.width, size.height - clipHeight);
      path.lineTo(size.width, 0.0);
    } else {
      path.moveTo(0.0, size.height);
      path.lineTo(clipHeight, 0.0);
      path.lineTo(size.width, 0.0);
      path.lineTo(size.width, size.height);
    }
    path.close();
    return path;
  }

  _getBottomRightPath(Size size) {
    var path = Path();
    if (axis == Axis.horizontal) {
      path.lineTo(0.0, size.height - clipHeight);
      path.lineTo(size.width, size.height);
      path.lineTo(size.width, 0.0);
    } else {
      path.lineTo(size.width - clipHeight, 0.0);
      path.lineTo(size.width, size.height);
      path.lineTo(0.0, size.height);
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    DiagonalClipper oldie = oldClipper as DiagonalClipper;
    return position != oldie.position ||
        clipHeight != oldie.clipHeight ||
        axis != oldie.axis;
  }
}
