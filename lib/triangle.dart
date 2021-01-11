import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/triangle_clipper.dart';
import 'package:clippy_flutter/src/edge.dart';
import 'package:clippy_flutter/src/clip_shadow.dart';
export 'package:clippy_flutter/src/edge.dart';
export 'package:clippy_flutter/src/clip_shadow.dart' show ClipShadow;

class Triangle extends StatelessWidget {
  const Triangle(
      {Key? key,
      required this.trianglePercentLeft,
      required this.trianglePercentRight,
      required this.trianglePercentEdge,
      required this.child,
      this.edge = Edge.RIGHT,
      this.clipShadows = const []})
      : super(key: key);

  const Triangle.isosceles(
      {Key? key,
      required this.child,
      this.edge = Edge.RIGHT,
      this.clipShadows = const []})
      : this.trianglePercentRight = 0,
        this.trianglePercentLeft = 0,
        this.trianglePercentEdge = 0.5,
        super(key: key);

  final Widget child;
  final double trianglePercentLeft;
  final double trianglePercentRight;
  final double trianglePercentEdge;
  final Edge edge;

  ///List of shadows to be cast on the border
  final List<ClipShadow> clipShadows;

  @override
  Widget build(BuildContext context) {
    var clipper = TriangleClipper(
      trianglePercentLeft,
      trianglePercentRight,
      trianglePercentEdge,
      edge,
    );
    return CustomPaint(
      painter: ClipShadowPainter(clipper, clipShadows),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}
