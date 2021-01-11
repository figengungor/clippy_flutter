import 'package:flutter/widgets.dart';
import 'package:clippy_flutter/src/arrow_clipper.dart';
import 'package:clippy_flutter/src/edge.dart';
export 'package:clippy_flutter/src/edge.dart';
import 'package:clippy_flutter/src/clip_shadow.dart';
export 'package:clippy_flutter/src/clip_shadow.dart' show ClipShadow;

class Arrow extends StatelessWidget {
  const Arrow(
      {Key? key,
      required this.triangleHeight,
      required this.rectangleClipHeight,
      required this.child,
      this.edge = Edge.RIGHT,
      this.clipShadows = const []})
      : super(key: key);

  ///The widget that is going to be clipped as arrow shape
  final Widget child;

  ///The height of the triangle part of arrow in the [edge] direction
  final double triangleHeight;

  ///The height of the rectangle part of arrow that is clipped
  final double rectangleClipHeight;

  ///The edge the arrow points
  final Edge edge;

  ///List of shadows to be cast on the border
  final List<ClipShadow> clipShadows;

  @override
  Widget build(BuildContext context) {
    var clipper = ArrowClipper(triangleHeight, rectangleClipHeight, edge);
    return CustomPaint(
      painter: ClipShadowPainter(clipper, clipShadows),
      child: ClipPath(
        clipper: clipper,
        child: child,
      ),
    );
  }
}
