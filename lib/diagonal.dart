import 'package:clippy_flutter/src/clip_shadow.dart';
import 'package:clippy_flutter/src/diagonal_clipper.dart';
import 'package:flutter/widgets.dart';
export 'package:clippy_flutter/src/diagonal_clipper.dart' show DiagonalPosition;
export 'package:clippy_flutter/src/clip_shadow.dart' show ClipShadow;

class Diagonal extends StatelessWidget {
  const Diagonal(
      {Key? key,
      required this.child,
      required this.clipHeight,
      this.position = DiagonalPosition.BOTTOM_LEFT,
      this.axis = Axis.horizontal,
      this.clipShadows = const []})
      : super(key: key);

  final Widget child;

  ///The height that the diagonal angle sees
  final double clipHeight;

  ///The corner of the child which is represented with [DiagonalPosition]
  final DiagonalPosition position;

  ///The direction of the diagonal
  final Axis axis;

  ///List of shadows to be cast on the border
  final List<ClipShadow> clipShadows;

  @override
  Widget build(BuildContext context) {
    var clipper = DiagonalClipper(clipHeight, position, axis);
    return CustomPaint(
      painter: ClipShadowPainter(clipper, clipShadows),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}
