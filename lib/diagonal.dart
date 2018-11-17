import 'package:clippy_flutter/src/diagonal_clipper.dart';
import 'package:flutter/widgets.dart';
export 'package:clippy_flutter/src/diagonal_clipper.dart' show DiagonalPosition;

class Diagonal extends StatelessWidget {
  const Diagonal(
      {Key key,
      @required this.child,
      @required this.clipHeight,
      this.position = DiagonalPosition.BOTTOM_LEFT,
      this.axis = Axis.horizontal})
      : assert(child != null),
        super(key: key);

  final Widget child;

  ///The height that the diagonal angle sees
  final double clipHeight;

  ///The corner of the child which is represented with [DiagonalPosition]
  final DiagonalPosition position;

  ///The direction of the diagonal
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DiagonalClipper(clipHeight, position, axis),
      child: child,
    );
  }
}
