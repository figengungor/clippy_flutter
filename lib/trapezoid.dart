import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/trapezoid_clipper.dart';
import 'package:clippy_flutter/src/edge.dart';
import 'package:clippy_flutter/src/clip_shadow.dart';
export 'package:clippy_flutter/src/edge.dart';
export 'package:clippy_flutter/src/clip_shadow.dart' show ClipShadow;

class Trapezoid extends StatelessWidget {
  const Trapezoid(
      {Key? key,
      required this.cutLength,
      required this.child,
      this.edge = Edge.TOP,
      this.clipShadows = const []})
      : super(key: key);

  final Widget child;
  final double cutLength;
  final Edge edge;

  ///List of shadows to be cast on the border
  final List<ClipShadow> clipShadows;

  @override
  Widget build(BuildContext context) {
    var clipper = TrapezoidClipper(cutLength, edge);
    return CustomPaint(
      painter: ClipShadowPainter(clipper, clipShadows),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}
